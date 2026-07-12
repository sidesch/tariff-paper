/*********************************************************************************
Clean INEGI's concordance between TIGIE (Mexican tariff schedule) and SCIAN
(NAICS) values.
************************************************************************************/
clear
set more off

global data "~/Desktop/school/6th/ecn374/finaldraft/data"
cap mkdir "$data/processed"

import excel "$data/raw/concordance_inegi.xlsx", cellrange(A5:E10000) firstrow
rename A tigie
rename D scian
cap tostring tigie, replace
cap tostring scian, replace
drop 2 3 5 // columns with descriptive text

gen tigie_clean = subinstr(tigie, ".", "", .)  
gen hs6 = real(substr(tigie_clean, 1, 6))      
gen scian_num = real(scian)
drop if missing(hs6)

* TODO: we keep the first value for now but later weighted average
bysort hs6: keep if _n == 1
keep hs6 scian_num

save "$data/processed/tigie_scian_clean.dta", replace