/*********************************************************************************
Clean INEGI's concordance between TIGIE (Mexican tariff schedule) and SCIAN
(NAICS) values.
************************************************************************************/
clear
set more off

global data "~/Desktop/school/6th/ecn374/finaldraft/data"
cap mkdir "$data/processed"

import excel "$data/raw/concordance_inegi.xlsx", cellrange(A5:E10000) firstrow
rename A hts10
rename D scian
cap tostring scian, replace
drop Reproductores~a Explotaciónde~s C

drop if missing(hts10)
replace hts10 = subinstr(hts10, ".", "", .)  
gen hs6 = real(substr(hts10, 1, 6))      
gen scian_num = real(scian)

* merge with hs6 import data
merge 1:1 hs6 using "$data/processed/imports_clean.dta", keep(3)
drop _merge

save "$data/processed/tigie_scian_clean.dta", replace
