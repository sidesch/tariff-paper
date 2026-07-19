clear all
set more off

global data "~/Desktop/school/6th/ecn374/finaldraft"

********************************************************************************
Build industry-level tariff exposure variable and merge with ENOE 
********************************************************************************
use "$data/raw/fajgelbaum_tariffs.dta", clear
keep if t == 1
* hs6 is the product code
* dz_usch_w is average US tariff increase
keep hs6 dz_usch_w
save "$data/processed/tariffs_clean.dta", replace

merge m:1 hs6 using "data/processed/tigie_scian_clean.dta"
keep if _merge == 3
drop _merge
collapse (mean) dz_usch_w (rawsum) customs_value [aw=customs_value], by(scian_num)

gen scian3 = string(floor(scian_num / 1000))
collapse (mean) dz_usch_w (rawsum) customs_value [aw=customs_value], by(scian3)
save "data/processed/tariffs_by_scian3.dta", replace

* merge with person-level data
use "$data/raw/enoe_ipums.dta", clear
keep if empstat == 1
gen scian3 = substr(ind, 1, 3)
merge m:1 scian3 using "$data/processed/tariffs_by_scian3.dta"
replace dz_usch_w = 0 if _merge == 1
drop if ind == "0"
drop _merge
save "$data/processed/enoe_merged.dta", replace
