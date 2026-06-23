clear all
set more off
cd "~/Desktop/school/6th/ecn374/finaldraft"

********************************************************************************
* 02_concordance.do
* Purpose: Build industry-level tariff exposure variable and merge with ENOE
* Output:  data/clean/enoe_merged.dta
********************************************************************************

********************************************************************************
* STEP 1: Build TIGIE-SCIAN concordance (HS product codes -> SCIAN industries)
* Note: TIGIE is Mexico's tariff schedule, based on the Harmonized System (HS)
* Note: 1,655 HS codes unmatched due to HS vintage mismatch (tech-intensive 
*       industries); acknowledged as limitation in paper
********************************************************************************
import excel "data/raw/concordance_inegi.xlsx", cellrange(A5:E10000) firstrow clear
rename A tigie
rename D scian
drop Reproductores~a Explotaciónde~s C
gen tigie_clean = subinstr(tigie, ".", "", .)  // strip dots from HS codes
gen hs6 = real(substr(tigie_clean, 1, 6))      // keep first 6 digits
gen scian_num = real(scian)
bysort hs6: keep if _n == 1                    // keep one SCIAN per HS code
keep hs6 scian_num
save "data/clean/tigie_scian_clean.dta", replace

********************************************************************************
* STEP 2: Extract tariff increases from Fajgelbaum et al. (2024)
* Variable dz_usch_w: pre-war weighted average US tariff increase on Chinese goods
* t == 1 indicates post-shock tariff schedule
********************************************************************************
use "data/raw/fajgelbaum_tariffs.dta", clear
keep if t == 1
keep hs6 dz_usch_w
save "data/clean/tariffs_clean.dta", replace

********************************************************************************
* STEP 3: Merge tariffs with TIGIE-SCIAN concordance
* Then collapse from HS6 product level to 3-digit SCIAN industry level
* Note: IPUMS collapses ENOE industry codes to 3-digit SCIAN, so we match there
********************************************************************************
use "data/clean/tariffs_clean.dta", clear
merge m:1 hs6 using "data/clean/tigie_scian_clean.dta"
keep if _merge == 3
drop _merge
collapse (mean) dz_usch_w, by(scian_num)

* Collapse to 3-digit SCIAN to match IPUMS industry codes
gen scian3 = string(floor(scian_num / 1000))
collapse (mean) dz_usch_w, by(scian3)
save "data/clean/tariffs_by_scian3.dta", replace

********************************************************************************
* STEP 4: Merge tariff exposure with ENOE person-level data
* Workers in non-traded service industries (SCIAN > 4000) get dz_usch_w = 0
* These form the control group in the diff-in-diff
********************************************************************************
use "data/raw/enoe_ipums.dta", clear
keep if empstat == 1                           // keep employed workers only
gen scian3 = substr(ind, 1, 3)                 // extract 3-digit industry code
merge m:1 scian3 using "data/clean/tariffs_by_scian3.dta"
replace dz_usch_w = 0 if _merge == 1          // zero exposure for service workers
drop if ind == "0"                             // drop unclassified workers
drop _merge
save "data/clean/enoe_merged.dta", replace
