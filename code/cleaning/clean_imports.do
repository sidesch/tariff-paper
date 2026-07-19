/*******************************************************************************
Clean trade import data from Data Web
**********************************************************************************/
clear

global data "~Desktop/school/6th/ecn374/finaldraft/data"

import excel "$data/raw/DataWeb-Query-Export.xlsx", sheet("Query Results") firstrow
drop Data_Type Country Description
rename January_2017_to_december_2017 customs_value
rename HTS_Number hts10

drop if missing(hts10)
tostring hts10, gen(hts10_str) format(%10.0f)
gen hs6 = real(substr(hts10_str1,6))

collapse (sum) customs_value, by(hs6)

save "$data/processed/imports_clean.dta", replace