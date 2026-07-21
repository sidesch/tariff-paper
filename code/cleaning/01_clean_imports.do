/*******************************************************************************
Clean trade import data from Data Web
**********************************************************************************/
clear

global data "~/Desktop/school/6th/ecn374/finaldraft/data"

import excel "$data/raw/DataWeb-Query-Export.xlsx", sheet("Query Results") firstrow
drop DataType Country Description
rename January_2017_to_december_2017 customs_value
rename HTSNumber hts10

drop if missing(hts10)
gen hs6 = real(substr(hts10,1,6))
destring customs_value, replace
collapse (sum) customs_value (first) hs6, by(hts10)

save "$data/processed/imports_clean.dta", replace
