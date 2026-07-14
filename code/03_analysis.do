/*******************************************************************************
All regressions, figures, and tables using cleaned data
*******************************************************************************/
clear all
set more off

global data "~/Desktop/school/6th/ecn374/finaldraft/data"
global output "~/Desktop/school/6th/ecn374/finaldraft/output"

* NOTE: the data skips over the 2nd quarter of 2020 due to data collection issues

/*******************************************************************************
Process ENOE data to prepare for analysis
*******************************************************************************/
use "$data/clean/enoe_merged.dta", clear

* the analysis should only be performed on employed individuals so we drop if income is null or 0
keep if incearn > 0 & !missing(incearn)

* remove incomes coded as null
drop if incearn >= 99999998

gen log_income = log(incearn)
gen female     = (sex == 2)

* 
lab var log_income   "Log Earned Income"
lab var incearn      "Earned Income (Pesos)"
lab var female       "Female"
lab var age          "Age"
lab var age2         "Age Squared"
lab var yrschool     "Years of Schooling"
lab var dz_usch_w    "Tariff Exposure ($\Delta\tau_j$)"

save "$data/processed/enoe_analysis.dta", replace

/*******************************************************************************
Summary statistics table: income, age, and years of school
*******************************************************************************/
use "$data/clean/enoe_analysis.dta", clear

estpost tabstat incearn age yrschool, stats(mean sd min max n) columns(statistics)

esttab using "$output/summarystats.tex", replace ///
    cells("mean(fmt(2)) sd(fmt(2)) min(fmt(0)) max(fmt(0)) count(fmt(0))") ///
    nomtitle nonumber label ///
    title("Summary Statistics: ENOE Sample, Employed Workers 2014--2020") ///
    collabels("Mean" "Std. Dev." "Min" "Max" "N")

/*******************************************************************************
Tariff exposure by industry
*******************************************************************************/
use "$data/clean/tariffs_by_scian3.dta", clear

estpost tabstat dz_usch_w, stats(mean sd min max n) columns(statistics)

esttab using "$output/tariffs_by_industry.tex", replace ///
    cells("mean(fmt(3)) sd(fmt(3)) min(fmt(3)) max(fmt(3)) count(fmt(0))") ///
    nomtitle nonumber ///
    title("Tariff Exposure by Industry") ///
    collabels("Mean" "Std. Dev." "Min" "Max" "N") ///
		note("Source: Fajgelbaum Replication Package. Weighted averages by trade weight (Source: USITC DataWeb)")

/*******************************************************************************
* FIGURE 1: Mexico exports to the US over time
* Note: Data from Table 1 of the paper, entered manually
*******************************************************************************/
clear
input year exports
    2014 318.7
    2015 309.2
    2016 302.9
    2017 327.2
    2018 356.9
    2019 358.6
    2020 330.4
    2021 386.2
    2022 452.3
    2023 475.2
    2024 503.4
end

twoway (line exports year, lcolor(navy) lwidth(medthick)), ///
    xline(2018, lcolor(red) lpattern(dash)) ///
    xlabel(2014(2)2024) ///
    ylabel(, format(%9.0f)) ///
    xtitle("Year") ///
    ytitle("Exports (Billions USD)") ///
    title("Mexico's Exports to the United States") ///
    note("Source: INEGI COMEXT. Dashed line indicates start of US-China trade war (2018).") ///
    scheme(s2mono)

graph export "output/figure1_exports.pdf", replace

********************************************************************************
* FIGURE 2A: Income distribution over time - kernel density
* Shows full distribution shift pre vs post shock
********************************************************************************
use "data/clean/enoe_analysis.dta", clear

* Keep three representative years for clarity
keep if inlist(year, 2016, 2018, 2020)

twoway ///
    (kdensity log_income if year == 2016, lcolor(blue)  lwidth(medthick)) ///
    (kdensity log_income if year == 2018, lcolor(black) lwidth(medthick) lpattern(dash)) ///
    (kdensity log_income if year == 2020, lcolor(red)   lwidth(medthick) lpattern(dot)), ///
    legend(order(1 "2016 (pre-shock)" 2 "2018 (shock year)" 3 "2020 (post-shock)")) ///
    xtitle("Log Earned Income") ///
    ytitle("Density") ///
    title("Income Distribution Before and After Trade War") ///
    note("Source: ENOE, INEGI.") ///
    scheme(s2mono)
	
graph export "output/figure2a_kdensity.pdf", replace

********************************************************************************
* FIGURE 2B: Income distribution over time - percentile lines
* Shows divergence across the distribution more clearly
********************************************************************************
use "data/clean/enoe_analysis.dta", clear

* compute log income percentiles by year
gen log_inc = log(incearn)
collapse ///
    (p10) p10=log_inc ///
    (p25) p25=log_inc ///
    (p50) p50=log_inc ///
    (p75) p75=log_inc ///
    (p90) p90=log_inc, ///
    by(year)
	
twoway ///
    (line p10 year, lcolor(cranberry) lwidth(medium)) ///
    (line p25 year, lcolor(orange)    lwidth(medium)) ///
    (line p50 year, lcolor(black)     lwidth(medthick)) ///
    (line p75 year, lcolor(navy)      lwidth(medium)) ///
    (line p90 year, lcolor(blue)      lwidth(medium) lpattern(dash)), ///
    xline(2018, lcolor(red) lpattern(dash)) ///
    legend(order(1 "p10" 2 "p25" 3 "p50 (median)" 4 "p75" 5 "p90")) ///
    xlabel(2014(1)2020) ///
    xtitle("Year") ///
    ytitle("Log Earned Income (Pesos)") ///
    title("Income Percentiles Over Time") ///
    note("Source: ENOE, INEGI. Dashed line indicates 2018 trade war onset.") ///
    scheme(s2mono)

graph export "output/figure2b_percentiles.pdf", replace

********************************************************************************
* FIGURE 4: Histogram of industry tariff exposure
* (Figure 3 is the event study plot - generated after regression below)
********************************************************************************
use "data/clean/tariffs_by_scian3.dta", clear

histogram dz_usch_w, ///
    frequency ///
    xlabel(0(0.05)0.25) ///
    xtitle("Average Tariff Increase") ///
    ytitle("Number of Industries") ///
    title("Distribution of Tariff Exposure Across Industries") ///
    note("Source: Fajgelbaum et al. (2024) and TIGIE-SCIAN concordance (INEGI)." ///
         "Each observation is a 3-digit SCIAN industry.") ///
    scheme(s2mono)

graph export "output/figure4_tariff_hist.pdf", replace

********************************************************************************
* REGRESSION 1: Main event study, no controls
********************************************************************************
use "data/clean/enoe_analysis.dta", clear
encode scian3, gen(scian3_num)

reghdfe log_income c.dz_usch_w##ib2017.year, ///
    absorb(scian3_num) ///
    cluster(scian3_num)

estimates store reg1

********************************************************************************
* REGRESSION 2: Main event study, with individual controls
********************************************************************************
reghdfe log_income c.dz_usch_w##ib2017.year female age age2 yrschool, ///
    absorb(scian3_num) ///
    cluster(scian3_num)

estimates store reg2

********************************************************************************
* REGRESSION 3: Robustness - industry-specific linear time trends
* Absorbs any pre-existing linear trend within each industry
********************************************************************************
reghdfe log_income c.dz_usch_w##ib2017.year female age age2 yrschool, ///
    absorb(scian3_num scian3_num#c.year) ///
    cluster(scian3_num)

estimates store reg3

********************************************************************************
* TABLE 3: Main regression results
********************************************************************************
esttab reg1 reg2 reg3 using "output/table3_mainresults.tex", replace ///
    keep(*dz_usch_w* *year* female age yrschool) ///
    order(*2014* *2015* *2016* *2018* *2019* *2020*) ///
    label booktabs ///
    title("Event Study: Effect of Tariff Exposure on Log Income") ///
    mtitles("No Controls" "With Controls" "Industry Trends") ///
    se star(* 0.10 ** 0.05 *** 0.01) ///
    stats(N r2, fmt(%9.0fc %9.3f) labels("Observations" "R-squared")) ///
    addnotes("Standard errors clustered by 3-digit SCIAN industry." ///
             "All regressions include industry fixed effects." ///
             "Base year is 2017. $\Delta\tau_j$ is the pre-war weighted average" ///
             "US tariff increase on Chinese goods in industry $j$.")

********************************************************************************
* FIGURE 3: Event study plot (coefficients from Regression 2)
********************************************************************************
* Extract interaction coefficients and confidence intervals
estimates restore reg2

* Use coefplot if installed, otherwise use manual approach
cap which coefplot
if _rc != 0 ssc install coefplot

coefplot, ///
    keep(*year*dz_usch_w*) ///
    vertical ///
    yline(0, lcolor(black) lpattern(dash)) ///
    xline(4.5, lcolor(red) lpattern(dash)) ///
    xlabel(1 "2014" 2 "2015" 3 "2016" 4 "2017" 5 "2018" 6 "2019" 7 "2020") ///
    xtitle("Year") ///
    ytitle("Coefficient on $\Delta\tau_j \times$ Year") ///
    title("Event Study: Tariff Exposure and Log Income") ///
    note("Coefficients from Regression 2 (with controls). 95% CIs shown." ///
         "Base year is 2017. Dashed vertical line indicates 2018 trade war onset.") ///
    scheme(s2mono) ///
    ciopts(recast(rcap))

graph export "output/figure3_eventstudy.pdf", replace

********************************************************************************
* REGRESSIONS 4-7: Quantile regressions at p25, p50, p75, p90
* Note: quantile regression does not support reghdfe so we use qreg
*       with industry dummies explicitly (slower but correct)
* Note: clustering not supported in qreg; use vce(robust) instead
********************************************************************************
use "data/clean/enoe_analysis.dta", clear

* Use a 10% random sample for quantile regressions
set seed 12345
sample 10

* Generate industry dummies for qreg
* (reghdfe not compatible with qreg)
quietly tab scian3, gen(ind_)

sqreg log_income c.dz_usch_w##ib2017.year ///
    female age age2 yrschool ind_*, ///
    quantiles(0.25 0.50 0.75 0.90) ///
    reps(100)
estimates store sqreg_all

********************************************************************************
* TABLE 4: Quantile regression results
* Show only the key interaction coefficients for clarity
********************************************************************************
esttab qreg25 qreg50 qreg75 qreg90 using "output/table4_quantile.tex", replace ///
    keep(*dz_usch_w*year*) ///
    order(*2014* *2015* *2016* *2018* *2019* *2020*) ///
    label booktabs ///
    title("Quantile Regression: Effect of Tariff Exposure by Income Percentile") ///
    mtitles("p25" "p50" "p75" "p90") ///
    se star(* 0.10 ** 0.05 *** 0.01) ///
    stats(N, fmt(%9.0fc) labels("Observations")) ///
    addnotes("Robust standard errors in parentheses." ///
             "All regressions include industry fixed effects and individual controls." ///
             "Base year is 2017.")

********************************************************************************
* ROBUSTNESS CHECK: 90/10 ratio regression
* Collapse to industry-year level, compute log 90/10 ratio, regress on tariffs
********************************************************************************
use "data/clean/enoe_analysis.dta", clear

* Collapse to industry-year level
collapse ///
    (p10) p10=incearn ///
    (p90) p90=incearn, ///
    by(scian3 year)

* Generate log 90/10 ratio
gen log_ratio_9010 = log(p90/p10)
label var log_ratio_9010 "Log 90/10 Income Ratio"

* Merge in tariff exposure
merge m:1 scian3 using "data/clean/tariffs_by_scian3.dta"
drop if _merge == 2
drop _merge
replace dz_usch_w = 0 if missing(dz_usch_w)

* Regression
reghdfe log_ratio_9010 c.dz_usch_w##ib2017.year, ///
    absorb(scian3_num) ///
    cluster(scian3_num)

estimates store rob_9010

esttab rob_9010 using "output/table5_ratio9010.tex", replace ///
    keep(*dz_usch_w*year*) ///
    order(*2014* *2015* *2016* *2018* *2019* *2020*) ///
    label booktabs ///
    title("Robustness: Effect of Tariff Exposure on Log 90/10 Income Ratio") ///
    mtitles("Log 90/10 Ratio") ///
    se star(* 0.10 ** 0.05 *** 0.01) ///
    stats(N r2, fmt(%9.0fc %9.3f) labels("Observations" "R-squared")) ///
    addnotes("Standard errors clustered by 3-digit SCIAN industry." ///
             "Outcome is log ratio of 90th to 10th income percentile" ///
             "within each industry-year cell." ///
             "Base year is 2017.")

display "03_analysis.do complete."

********************************************************************************
* PLOT B: Employment in high vs low tariff exposure industries over time
********************************************************************************
use "data/clean/enoe_merged.dta", clear

* Create high/low exposure groups based on median tariff exposure
* Only among industries with nonzero exposure
summarize dz_usch_w if dz_usch_w > 0, detail
local median_tariff = r(p50)

gen exposure_group = .
replace exposure_group = 0 if dz_usch_w == 0
replace exposure_group = 1 if dz_usch_w > 0 & dz_usch_w <= `median_tariff'
replace exposure_group = 2 if dz_usch_w > `median_tariff'

label define exp_lbl 0 "No Exposure (Services)" ///
                     1 "Low Exposure" ///
                     2 "High Exposure"
label values exposure_group exp_lbl

* Collapse to group-year level - count employed workers
collapse (count) employed=log_income, by(exposure_group year)

* Normalize to 2017 = 100 for each group
bysort exposure_group: gen base = employed if year == 2017
bysort exposure_group: egen base2017 = max(base)
gen emp_index = (employed / base2017) * 100
drop base base2017

twoway ///
    (line emp_index year if exposure_group == 0, ///
        lcolor(gray) lwidth(medium) lpattern(dot)) ///
    (line emp_index year if exposure_group == 1, ///
        lcolor(navy) lwidth(medium) lpattern(dash)) ///
    (line emp_index year if exposure_group == 2, ///
        lcolor(cranberry) lwidth(medthick) lpattern(solid)), ///
    xline(2018, lcolor(red) lpattern(dash)) ///
    yline(100, lcolor(black) lpattern(dot)) ///
    legend(order(1 "No Exposure (Services)" ///
                 2 "Low Tariff Exposure" ///
                 3 "High Tariff Exposure")) ///
    xlabel(2014(1)2020) ///
    xtitle("Year") ///
    ytitle("Employment Index (2017 = 100)") ///
    title("Employment by Industry Tariff Exposure") ///
    note("Source: ENOE, INEGI. Dashed line indicates 2018 trade war onset." ///
         "High/low exposure split at median tariff increase among exposed industries.") ///
    scheme(s2mono)

graph export "output/figureB_employment.pdf", replace

********************************************************************************
* TABLE C: Top and bottom tariff-exposed industries
********************************************************************************
use "data/clean/tariffs_by_scian3.dta", clear

* Merge in industry names - we need to get labels from ENOE
* Create a name lookup from the encoded scian3 variable
preserve
    use "data/clean/enoe_merged.dta", clear
    keep scian3 ind
    duplicates drop scian3, force
    save "data/clean/scian3_labels.dta", replace
restore

merge 1:1 scian3 using "data/clean/scian3_labels.dta"
drop _merge

* Sort and keep top 10 and bottom 10 nonzero
gsort -dz_usch_w
keep if dz_usch_w > 0

* Top 10 most exposed
preserve
    keep in 1/10
    gen rank = _n
    gen exposure_pct = dz_usch_w * 100
    
    listtab rank scian3 exposure_pct using "output/tableC_top_industries.tex", ///
        replace ///
        rstyle(tabular) ///
        head("\begin{tabular}{clc}" ///
             "\toprule" ///
             "Rank & Industry (SCIAN) & Tariff Increase (\%) \\" ///
             "\midrule") ///
        foot("\bottomrule" ///
             "\multicolumn{3}{l}{\footnotesize Source: Fajgelbaum et al. (2024) and TIGIE-SCIAN concordance.} \\" ///
             "\multicolumn{3}{l}{\footnotesize Top 10 industries by weighted average US tariff increase on Chinese goods.} \\" ///
             "\end{tabular}")
restore

* Bottom 10 least exposed (nonzero)
gsort dz_usch_w
preserve
    keep if dz_usch_w > 0
    keep in 1/10
    gen rank = _n
    gen exposure_pct = dz_usch_w * 100

    listtab rank scian3 exposure_pct using "output/tableC_bottom_industries.tex", ///
        replace ///
        rstyle(tabular) ///
        head("\begin{tabular}{clc}" ///
             "\toprule" ///
             "Rank & Industry (SCIAN) & Tariff Increase (\%) \\" ///
             "\midrule") ///
        foot("\bottomrule" ///
             "\multicolumn{3}{l}{\footnotesize Source: Fajgelbaum et al. (2024) and TIGIE-SCIAN concordance.} \\" ///
             "\multicolumn{3}{l}{\footnotesize Bottom 10 industries by weighted average US tariff increase on Chinese goods.} \\" ///
             "\end{tabular}")
restore
