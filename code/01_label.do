/**********************************************************************
Labels data directly from IPUMS (note: this code was not written by me)
*************************************************************************/
clear
set more off
pause off

cd "~/Desktop/school/6th/ecn374/draft1"
* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

quietly infix                 ///
  int     country    1-3      ///
  int     year       4-7      ///
  double  sample     8-16     ///
  double  serial     17-28    ///
  double  hhwt       29-36    ///
  byte    quarter    37-37    ///
  long    geo1_mx    38-43    ///
  double  geo2_mx    44-52    ///
  byte    citymx     53-54    ///
  byte    hhtype     55-56    ///
  int     pernum     57-60    ///
  double  perwt      61-68    ///
  byte    resident   69-69    ///
  byte    nchild     70-71    ///
  byte    nchlt5     72-73    ///
  byte    eldch      74-75    ///
  byte    yngch      76-77    ///
  int     age        78-80    ///
  byte    age2       81-82    ///
  byte    sex        83-83    ///
  byte    school     84-84    ///
  byte    lit        85-85    ///
  byte    edattain   86-86    ///
  int     edattaind  87-89    ///
  byte    yrschool   90-91    ///
  int     educmx     92-94    ///
  byte    empstat    95-95    ///
  int     empstatd   96-98    ///
  byte    labforce   99-99    ///
  byte    classwk    100-100  ///
  int     classwkd   101-103  ///
  byte    wrkadd     104-104  ///
  byte    empsect    105-106  ///
  byte    emplno     107-108  ///
  byte    estabsz    109-110  ///
  byte    occisco    111-112  ///
  int     occ        113-116  ///
  int     indgen     117-119  ///
  long    ind        120-124  ///
  double  incearn    125-132  ///
  long    incwage    133-139  ///
  long    incself    140-145  ///
  long    geomig1_p  146-151  ///
  long    mig1_p_mx  152-157  ///
  byte    disemp     158-158  ///
  byte    hlthfac    159-160  ///
  byte    hlthcov    161-162  ///
  using `"ipumsi_00001.dat"'

replace hhwt      = hhwt      / 100
replace perwt     = perwt     / 100

format sample    %9.0f
format serial    %12.0f
format hhwt      %8.2f
format geo2_mx   %9.0f
format perwt     %8.2f
format incearn   %8.0f

label var country   `"Country"'
label var year      `"Year"'
label var sample    `"IPUMS sample identifier"'
label var serial    `"Household serial number"'
label var hhwt      `"Household weight"'
label var quarter   `"Survey quarter"'
label var geo1_mx   `"Mexico, State 1960 - 2020 [Level 1; consistent boundaries, GIS]"'
label var geo2_mx   `"Mexico, Municipality 1960 - 2020 [Level 2; consistent boundaries, GIS]"'
label var citymx    `"Mexico, Self-Represented City"'
label var hhtype    `"Household classification"'
label var pernum    `"Person number"'
label var perwt     `"Person weight"'
label var resident  `"Residence status: de facto, de jure"'
label var nchild    `"Number of own children in household"'
label var nchlt5    `"Number of own children under age 5 in household"'
label var eldch     `"Age of eldest own child in household"'
label var yngch     `"Age of youngest own child in household"'
label var age       `"Age"'
label var age2      `"Age, grouped into intervals"'
label var sex       `"Sex"'
label var school    `"School attendance"'
label var lit       `"Literacy"'
label var edattain  `"Educational attainment, international recode [general version]"'
label var edattaind `"Educational attainment, international recode [detailed version]"'
label var yrschool  `"Years of schooling"'
label var educmx    `"Educational attainment, Mexico"'
label var empstat   `"Activity status (employment status) [general version]"'
label var empstatd  `"Activity status (employment status) [detailed version]"'
label var labforce  `"Labor force participation"'
label var classwk   `"Status in employment (class of worker) [general version]"'
label var classwkd  `"Status in employment (class of worker) [detailed version]"'
label var wrkadd    `"Has a secondary or additional jobs"'
label var empsect   `"Sector of employment"'
label var emplno    `"Number of employees"'
label var estabsz   `"Size of work establishment"'
label var occisco   `"Occupation, ISCO general"'
label var occ       `"Occupation, unrecoded"'
label var indgen    `"Industry, general recode"'
label var ind       `"Industry, unrecoded"'
label var incearn   `"Earned income"'
label var incwage   `"Wage and salary income"'
label var incself   `"Self-employment income"'
label var geomig1_p `"1st subnational geographic level of previous residence, world [consistent bounda"'
label var mig1_p_mx `"State of previous residence, Mexico; consistent boundaries, GIS"'
label var disemp    `"Employment disability"'
label var hlthfac   `"Type of healthcare facility used, Mexico"'
label var hlthcov   `"Type of health coverage, Mexico"'

label define country_lbl 032 `"Argentina"'
label define country_lbl 051 `"Armenia"', add
label define country_lbl 040 `"Austria"', add
label define country_lbl 050 `"Bangladesh"', add
label define country_lbl 112 `"Belarus"', add
label define country_lbl 204 `"Benin"', add
label define country_lbl 068 `"Bolivia"', add
label define country_lbl 072 `"Botswana"', add
label define country_lbl 076 `"Brazil"', add
label define country_lbl 854 `"Burkina Faso"', add
label define country_lbl 116 `"Cambodia"', add
label define country_lbl 120 `"Cameroon"', add
label define country_lbl 124 `"Canada"', add
label define country_lbl 152 `"Chile"', add
label define country_lbl 156 `"China"', add
label define country_lbl 170 `"Colombia"', add
label define country_lbl 188 `"Costa Rica"', add
label define country_lbl 192 `"Cuba"', add
label define country_lbl 208 `"Denmark"', add
label define country_lbl 214 `"Dominican Republic"', add
label define country_lbl 218 `"Ecuador"', add
label define country_lbl 818 `"Egypt"', add
label define country_lbl 222 `"El Salvador"', add
label define country_lbl 231 `"Ethiopia"', add
label define country_lbl 242 `"Fiji"', add
label define country_lbl 246 `"Finland"', add
label define country_lbl 250 `"France"', add
label define country_lbl 276 `"Germany"', add
label define country_lbl 288 `"Ghana"', add
label define country_lbl 300 `"Greece"', add
label define country_lbl 320 `"Guatemala"', add
label define country_lbl 324 `"Guinea"', add
label define country_lbl 332 `"Haiti"', add
label define country_lbl 340 `"Honduras"', add
label define country_lbl 348 `"Hungary"', add
label define country_lbl 352 `"Iceland"', add
label define country_lbl 356 `"India"', add
label define country_lbl 360 `"Indonesia"', add
label define country_lbl 364 `"Iran"', add
label define country_lbl 368 `"Iraq"', add
label define country_lbl 372 `"Ireland"', add
label define country_lbl 376 `"Israel"', add
label define country_lbl 380 `"Italy"', add
label define country_lbl 384 `"Côte d'Ivoire"', add
label define country_lbl 388 `"Jamaica"', add
label define country_lbl 400 `"Jordan"', add
label define country_lbl 404 `"Kenya"', add
label define country_lbl 417 `"Kyrgyz Republic"', add
label define country_lbl 418 `"Laos"', add
label define country_lbl 426 `"Lesotho"', add
label define country_lbl 430 `"Liberia"', add
label define country_lbl 454 `"Malawi"', add
label define country_lbl 458 `"Malaysia"', add
label define country_lbl 466 `"Mali"', add
label define country_lbl 480 `"Mauritius"', add
label define country_lbl 484 `"Mexico"', add
label define country_lbl 496 `"Mongolia"', add
label define country_lbl 504 `"Morocco"', add
label define country_lbl 508 `"Mozambique"', add
label define country_lbl 104 `"Myanmar"', add
label define country_lbl 524 `"Nepal"', add
label define country_lbl 528 `"Netherlands"', add
label define country_lbl 558 `"Nicaragua"', add
label define country_lbl 566 `"Nigeria"', add
label define country_lbl 578 `"Norway"', add
label define country_lbl 586 `"Pakistan"', add
label define country_lbl 275 `"Palestine"', add
label define country_lbl 591 `"Panama"', add
label define country_lbl 598 `"Papua New Guinea"', add
label define country_lbl 600 `"Paraguay"', add
label define country_lbl 604 `"Peru"', add
label define country_lbl 608 `"Philippines"', add
label define country_lbl 616 `"Poland"', add
label define country_lbl 620 `"Portugal"', add
label define country_lbl 630 `"Puerto Rico"', add
label define country_lbl 642 `"Romania"', add
label define country_lbl 643 `"Russia"', add
label define country_lbl 646 `"Rwanda"', add
label define country_lbl 662 `"Saint Lucia"', add
label define country_lbl 686 `"Senegal"', add
label define country_lbl 694 `"Sierra Leone"', add
label define country_lbl 703 `"Slovak Republic"', add
label define country_lbl 705 `"Slovenia"', add
label define country_lbl 710 `"South Africa"', add
label define country_lbl 728 `"South Sudan"', add
label define country_lbl 724 `"Spain"', add
label define country_lbl 729 `"Sudan"', add
label define country_lbl 740 `"Suriname"', add
label define country_lbl 752 `"Sweden"', add
label define country_lbl 756 `"Switzerland"', add
label define country_lbl 834 `"Tanzania"', add
label define country_lbl 764 `"Thailand"', add
label define country_lbl 768 `"Togo"', add
label define country_lbl 780 `"Trinidad and Tobago"', add
label define country_lbl 792 `"Turkey"', add
label define country_lbl 800 `"Uganda"', add
label define country_lbl 804 `"Ukraine"', add
label define country_lbl 826 `"United Kingdom"', add
label define country_lbl 840 `"United States"', add
label define country_lbl 858 `"Uruguay"', add
label define country_lbl 862 `"Venezuela"', add
label define country_lbl 704 `"Vietnam"', add
label define country_lbl 894 `"Zambia"', add
label define country_lbl 716 `"Zimbabwe"', add
label values country country_lbl

label define year_lbl 1703 `"1703"'
label define year_lbl 1729 `"1729"', add
label define year_lbl 1787 `"1787"', add
label define year_lbl 1801 `"1801"', add
label define year_lbl 1819 `"1819"', add
label define year_lbl 1845 `"1845"', add
label define year_lbl 1848 `"1848"', add
label define year_lbl 1850 `"1850"', add
label define year_lbl 1851 `"1851"', add
label define year_lbl 1852 `"1852"', add
label define year_lbl 1860 `"1860"', add
label define year_lbl 1861 `"1861"', add
label define year_lbl 1865 `"1865"', add
label define year_lbl 1868 `"1868"', add
label define year_lbl 1870 `"1870"', add
label define year_lbl 1871 `"1871"', add
label define year_lbl 1875 `"1875"', add
label define year_lbl 1880 `"1880"', add
label define year_lbl 1881 `"1881"', add
label define year_lbl 1885 `"1885"', add
label define year_lbl 1890 `"1890"', add
label define year_lbl 1891 `"1891"', add
label define year_lbl 1900 `"1900"', add
label define year_lbl 1901 `"1901"', add
label define year_lbl 1910 `"1910"', add
label define year_lbl 1911 `"1911"', add
label define year_lbl 1960 `"1960"', add
label define year_lbl 1961 `"1961"', add
label define year_lbl 1962 `"1962"', add
label define year_lbl 1963 `"1963"', add
label define year_lbl 1964 `"1964"', add
label define year_lbl 1966 `"1966"', add
label define year_lbl 1968 `"1968"', add
label define year_lbl 1969 `"1969"', add
label define year_lbl 1970 `"1970"', add
label define year_lbl 1971 `"1971"', add
label define year_lbl 1972 `"1972"', add
label define year_lbl 1973 `"1973"', add
label define year_lbl 1974 `"1974"', add
label define year_lbl 1975 `"1975"', add
label define year_lbl 1976 `"1976"', add
label define year_lbl 1977 `"1977"', add
label define year_lbl 1978 `"1978"', add
label define year_lbl 1979 `"1979"', add
label define year_lbl 1980 `"1980"', add
label define year_lbl 1981 `"1981"', add
label define year_lbl 1982 `"1982"', add
label define year_lbl 1983 `"1983"', add
label define year_lbl 1984 `"1984"', add
label define year_lbl 1985 `"1985"', add
label define year_lbl 1986 `"1986"', add
label define year_lbl 1987 `"1987"', add
label define year_lbl 1989 `"1989"', add
label define year_lbl 1990 `"1990"', add
label define year_lbl 1991 `"1991"', add
label define year_lbl 1992 `"1992"', add
label define year_lbl 1993 `"1993"', add
label define year_lbl 1994 `"1994"', add
label define year_lbl 1995 `"1995"', add
label define year_lbl 1996 `"1996"', add
label define year_lbl 1997 `"1997"', add
label define year_lbl 1998 `"1998"', add
label define year_lbl 1999 `"1999"', add
label define year_lbl 2000 `"2000"', add
label define year_lbl 2001 `"2001"', add
label define year_lbl 2002 `"2002"', add
label define year_lbl 2003 `"2003"', add
label define year_lbl 2004 `"2004"', add
label define year_lbl 2005 `"2005"', add
label define year_lbl 2006 `"2006"', add
label define year_lbl 2007 `"2007"', add
label define year_lbl 2008 `"2008"', add
label define year_lbl 2009 `"2009"', add
label define year_lbl 2010 `"2010"', add
label define year_lbl 2011 `"2011"', add
label define year_lbl 2012 `"2012"', add
label define year_lbl 2013 `"2013"', add
label define year_lbl 2014 `"2014"', add
label define year_lbl 2015 `"2015"', add
label define year_lbl 2016 `"2016"', add
label define year_lbl 2017 `"2017"', add
label define year_lbl 2018 `"2018"', add
label define year_lbl 2019 `"2019"', add
label define year_lbl 2020 `"2020"', add
label values year year_lbl

label define sample_lbl 032197001 `"Argentina 1970"'
label define sample_lbl 032198001 `"Argentina 1980"', add
label define sample_lbl 032199101 `"Argentina 1991"', add
label define sample_lbl 032200101 `"Argentina 2001"', add
label define sample_lbl 032201001 `"Argentina 2010"', add
label define sample_lbl 051200101 `"Armenia 2001"', add
label define sample_lbl 051201101 `"Armenia 2011"', add
label define sample_lbl 040197101 `"Austria 1971"', add
label define sample_lbl 040198101 `"Austria 1981"', add
label define sample_lbl 040199101 `"Austria 1991"', add
label define sample_lbl 040200101 `"Austria 2001"', add
label define sample_lbl 040201101 `"Austria 2011"', add
label define sample_lbl 050199101 `"Bangladesh 1991"', add
label define sample_lbl 050200101 `"Bangladesh 2001"', add
label define sample_lbl 050201101 `"Bangladesh 2011"', add
label define sample_lbl 112199901 `"Belarus 1999"', add
label define sample_lbl 112200901 `"Belarus 2009"', add
label define sample_lbl 204197901 `"Benin 1979"', add
label define sample_lbl 204199201 `"Benin 1992"', add
label define sample_lbl 204200201 `"Benin 2002"', add
label define sample_lbl 204201301 `"Benin 2013"', add
label define sample_lbl 068197601 `"Bolivia 1976"', add
label define sample_lbl 068199201 `"Bolivia 1992"', add
label define sample_lbl 068200101 `"Bolivia 2001"', add
label define sample_lbl 068201201 `"Bolivia 2012"', add
label define sample_lbl 072198101 `"Botswana 1981"', add
label define sample_lbl 072199101 `"Botswana 1991"', add
label define sample_lbl 072200101 `"Botswana 2001"', add
label define sample_lbl 072201101 `"Botswana 2011"', add
label define sample_lbl 076196001 `"Brazil 1960"', add
label define sample_lbl 076197001 `"Brazil 1970"', add
label define sample_lbl 076198001 `"Brazil 1980"', add
label define sample_lbl 076199101 `"Brazil 1991"', add
label define sample_lbl 076200001 `"Brazil 2000"', add
label define sample_lbl 076201001 `"Brazil 2010"', add
label define sample_lbl 854198501 `"Burkina Faso 1985"', add
label define sample_lbl 854199601 `"Burkina Faso 1996"', add
label define sample_lbl 854200601 `"Burkina Faso 2006"', add
label define sample_lbl 116199801 `"Cambodia 1998"', add
label define sample_lbl 116200401 `"Cambodia 2004"', add
label define sample_lbl 116200801 `"Cambodia 2008"', add
label define sample_lbl 116201301 `"Cambodia 2013"', add
label define sample_lbl 116201901 `"Cambodia 2019"', add
label define sample_lbl 120197601 `"Cameroon 1976"', add
label define sample_lbl 120198701 `"Cameroon 1987"', add
label define sample_lbl 120200501 `"Cameroon 2005"', add
label define sample_lbl 124185201 `"Canada 1852"', add
label define sample_lbl 124187101 `"Canada 1871"', add
label define sample_lbl 124188101 `"Canada 1881"', add
label define sample_lbl 124189101 `"Canada 1891"', add
label define sample_lbl 124190101 `"Canada 1901"', add
label define sample_lbl 124191101 `"Canada 1911"', add
label define sample_lbl 124197101 `"Canada 1971"', add
label define sample_lbl 124198101 `"Canada 1981"', add
label define sample_lbl 124199101 `"Canada 1991"', add
label define sample_lbl 124200101 `"Canada 2001"', add
label define sample_lbl 124201101 `"Canada 2011"', add
label define sample_lbl 152196001 `"Chile 1960"', add
label define sample_lbl 152197001 `"Chile 1970"', add
label define sample_lbl 152198201 `"Chile 1982"', add
label define sample_lbl 152199201 `"Chile 1992"', add
label define sample_lbl 152200201 `"Chile 2002"', add
label define sample_lbl 152201701 `"Chile 2017"', add
label define sample_lbl 156198201 `"China 1982"', add
label define sample_lbl 156199001 `"China 1990"', add
label define sample_lbl 156200001 `"China 2000"', add
label define sample_lbl 170196401 `"Colombia 1964"', add
label define sample_lbl 170197301 `"Colombia 1973"', add
label define sample_lbl 170198501 `"Colombia 1985"', add
label define sample_lbl 170199301 `"Colombia 1993"', add
label define sample_lbl 170200501 `"Colombia 2005"', add
label define sample_lbl 188196301 `"Costa Rica 1963"', add
label define sample_lbl 188197301 `"Costa Rica 1973"', add
label define sample_lbl 188198401 `"Costa Rica 1984"', add
label define sample_lbl 188200001 `"Costa Rica 2000"', add
label define sample_lbl 188201101 `"Costa Rica 2011"', add
label define sample_lbl 192200201 `"Cuba 2002"', add
label define sample_lbl 192201201 `"Cuba 2012"', add
label define sample_lbl 208178701 `"Denmark 1787"', add
label define sample_lbl 208180101 `"Denmark 1801"', add
label define sample_lbl 208184501 `"Denmark 1845"', add
label define sample_lbl 208188001 `"Denmark 1880"', add
label define sample_lbl 208188501 `"Denmark 1885"', add
label define sample_lbl 214196001 `"Dominican Republic 1960"', add
label define sample_lbl 214197001 `"Dominican Republic 1970"', add
label define sample_lbl 214198101 `"Dominican Republic 1981"', add
label define sample_lbl 214200201 `"Dominican Republic 2002"', add
label define sample_lbl 214201001 `"Dominican Republic 2010"', add
label define sample_lbl 218196201 `"Ecuador 1962"', add
label define sample_lbl 218197401 `"Ecuador 1974"', add
label define sample_lbl 218198201 `"Ecuador 1982"', add
label define sample_lbl 218199001 `"Ecuador 1990"', add
label define sample_lbl 218200101 `"Ecuador 2001"', add
label define sample_lbl 218201001 `"Ecuador 2010"', add
label define sample_lbl 818184801 `"Egypt 1848"', add
label define sample_lbl 818186801 `"Egypt 1868"', add
label define sample_lbl 818198601 `"Egypt 1986"', add
label define sample_lbl 818199601 `"Egypt 1996"', add
label define sample_lbl 818200601 `"Egypt 2006"', add
label define sample_lbl 222199201 `"El Salvador 1992"', add
label define sample_lbl 222200701 `"El Salvador 2007"', add
label define sample_lbl 231198401 `"Ethiopia 1984"', add
label define sample_lbl 231199401 `"Ethiopia 1994"', add
label define sample_lbl 231200701 `"Ethiopia 2007"', add
label define sample_lbl 242196601 `"Fiji 1966"', add
label define sample_lbl 242197601 `"Fiji 1976"', add
label define sample_lbl 242198601 `"Fiji 1986"', add
label define sample_lbl 242199601 `"Fiji 1996"', add
label define sample_lbl 242200701 `"Fiji 2007"', add
label define sample_lbl 242201401 `"Fiji 2014"', add
label define sample_lbl 246201001 `"Finland 2010"', add
label define sample_lbl 250196201 `"France 1962"', add
label define sample_lbl 250196801 `"France 1968"', add
label define sample_lbl 250197501 `"France 1975"', add
label define sample_lbl 250198201 `"France 1982"', add
label define sample_lbl 250199001 `"France 1990"', add
label define sample_lbl 250199901 `"France 1999"', add
label define sample_lbl 250200601 `"France 2006"', add
label define sample_lbl 250201101 `"France 2011"', add
label define sample_lbl 276181901 `"Germany 1819 (Mecklenburg)"', add
label define sample_lbl 276197001 `"Germany 1970 (West)"', add
label define sample_lbl 276197101 `"Germany 1971 (East)"', add
label define sample_lbl 276198101 `"Germany 1981 (East)"', add
label define sample_lbl 276198701 `"Germany 1987 (West)"', add
label define sample_lbl 288198401 `"Ghana 1984"', add
label define sample_lbl 288200001 `"Ghana 2000"', add
label define sample_lbl 288201001 `"Ghana 2010"', add
label define sample_lbl 300197101 `"Greece 1971"', add
label define sample_lbl 300198101 `"Greece 1981"', add
label define sample_lbl 300199101 `"Greece 1991"', add
label define sample_lbl 300200101 `"Greece 2001"', add
label define sample_lbl 300201101 `"Greece 2011"', add
label define sample_lbl 320196401 `"Guatemala 1964"', add
label define sample_lbl 320197301 `"Guatemala 1973"', add
label define sample_lbl 320198101 `"Guatemala 1981"', add
label define sample_lbl 320199401 `"Guatemala 1994"', add
label define sample_lbl 320200201 `"Guatemala 2002"', add
label define sample_lbl 324198301 `"Guinea 1983"', add
label define sample_lbl 324199601 `"Guinea 1996"', add
label define sample_lbl 324201401 `"Guinea 2014"', add
label define sample_lbl 332197101 `"Haiti 1971"', add
label define sample_lbl 332198201 `"Haiti 1982"', add
label define sample_lbl 332200301 `"Haiti 2003"', add
label define sample_lbl 340196101 `"Honduras 1961"', add
label define sample_lbl 340197401 `"Honduras 1974"', add
label define sample_lbl 340198801 `"Honduras 1988"', add
label define sample_lbl 340200101 `"Honduras 2001"', add
label define sample_lbl 340201301 `"Honduras 2013"', add
label define sample_lbl 348197001 `"Hungary 1970"', add
label define sample_lbl 348198001 `"Hungary 1980"', add
label define sample_lbl 348199001 `"Hungary 1990"', add
label define sample_lbl 348200101 `"Hungary 2001"', add
label define sample_lbl 348201101 `"Hungary 2011"', add
label define sample_lbl 352170301 `"Iceland 1703"', add
label define sample_lbl 352172901 `"Iceland 1729"', add
label define sample_lbl 352180101 `"Iceland 1801"', add
label define sample_lbl 352190101 `"Iceland 1901"', add
label define sample_lbl 352191001 `"Iceland 1910"', add
label define sample_lbl 356198341 `"India 1983"', add
label define sample_lbl 356198741 `"India 1987"', add
label define sample_lbl 356199341 `"India 1993"', add
label define sample_lbl 356199941 `"India 1999"', add
label define sample_lbl 356200441 `"India 2004"', add
label define sample_lbl 356200941 `"India 2009"', add
label define sample_lbl 360197101 `"Indonesia 1971"', add
label define sample_lbl 360197601 `"Indonesia 1976"', add
label define sample_lbl 360198001 `"Indonesia 1980"', add
label define sample_lbl 360198501 `"Indonesia 1985"', add
label define sample_lbl 360199001 `"Indonesia 1990"', add
label define sample_lbl 360199501 `"Indonesia 1995"', add
label define sample_lbl 360200001 `"Indonesia 2000"', add
label define sample_lbl 360200501 `"Indonesia 2005"', add
label define sample_lbl 360201001 `"Indonesia 2010"', add
label define sample_lbl 364200601 `"Iran 2006"', add
label define sample_lbl 364201101 `"Iran 2011"', add
label define sample_lbl 368199701 `"Iraq 1997"', add
label define sample_lbl 372190101 `"Ireland 1901"', add
label define sample_lbl 372191101 `"Ireland 1911"', add
label define sample_lbl 372197101 `"Ireland 1971"', add
label define sample_lbl 372197901 `"Ireland 1979"', add
label define sample_lbl 372198101 `"Ireland 1981"', add
label define sample_lbl 372198601 `"Ireland 1986"', add
label define sample_lbl 372199101 `"Ireland 1991"', add
label define sample_lbl 372199601 `"Ireland 1996"', add
label define sample_lbl 372200201 `"Ireland 2002"', add
label define sample_lbl 372200601 `"Ireland 2006"', add
label define sample_lbl 372201101 `"Ireland 2011"', add
label define sample_lbl 372201601 `"Ireland 2016"', add
label define sample_lbl 376197201 `"Israel 1972"', add
label define sample_lbl 376198301 `"Israel 1983"', add
label define sample_lbl 376199501 `"Israel 1995"', add
label define sample_lbl 376200801 `"Israel 2008"', add
label define sample_lbl 380200101 `"Italy 2001"', add
label define sample_lbl 380201101 `"Italy 2011"', add
label define sample_lbl 380201121 `"Italy 2011 Q1 LFS"', add
label define sample_lbl 380201221 `"Italy 2012 Q1 LFS"', add
label define sample_lbl 380201321 `"Italy 2013 Q1 LFS"', add
label define sample_lbl 380201421 `"Italy 2014 Q1 LFS"', add
label define sample_lbl 380201521 `"Italy 2015 Q1 LFS"', add
label define sample_lbl 380201621 `"Italy 2016 Q1 LFS"', add
label define sample_lbl 380201721 `"Italy 2017 Q1 LFS"', add
label define sample_lbl 380201821 `"Italy 2018 Q1 LFS"', add
label define sample_lbl 380201921 `"Italy 2019 Q1 LFS"', add
label define sample_lbl 380202021 `"Italy 2020 Q1 LFS"', add
label define sample_lbl 384198801 `"Côte d'Ivoire 1988"', add
label define sample_lbl 384199801 `"Côte d'Ivoire 1998"', add
label define sample_lbl 388198201 `"Jamaica 1982"', add
label define sample_lbl 388199101 `"Jamaica 1991"', add
label define sample_lbl 388200101 `"Jamaica 2001"', add
label define sample_lbl 400200401 `"Jordan 2004"', add
label define sample_lbl 404196901 `"Kenya 1969"', add
label define sample_lbl 404197901 `"Kenya 1979"', add
label define sample_lbl 404198901 `"Kenya 1989"', add
label define sample_lbl 404199901 `"Kenya 1999"', add
label define sample_lbl 404200901 `"Kenya 2009"', add
label define sample_lbl 404201901 `"Kenya 2019"', add
label define sample_lbl 417199901 `"Kyrgyz Republic 1999"', add
label define sample_lbl 417200901 `"Kyrgyz Republic 2009"', add
label define sample_lbl 418199501 `"Laos 1995"', add
label define sample_lbl 418200501 `"Laos 2005"', add
label define sample_lbl 418201501 `"Laos 2015"', add
label define sample_lbl 426199601 `"Lesotho 1996"', add
label define sample_lbl 426200601 `"Lesotho 2006"', add
label define sample_lbl 430197401 `"Liberia 1974"', add
label define sample_lbl 430200801 `"Liberia 2008"', add
label define sample_lbl 454198701 `"Malawi 1987"', add
label define sample_lbl 454199801 `"Malawi 1998"', add
label define sample_lbl 454200801 `"Malawi 2008"', add
label define sample_lbl 454201801 `"Malawi 2018"', add
label define sample_lbl 458197001 `"Malaysia 1970"', add
label define sample_lbl 458198001 `"Malaysia 1980"', add
label define sample_lbl 458199101 `"Malaysia 1991"', add
label define sample_lbl 458200001 `"Malaysia 2000"', add
label define sample_lbl 466198701 `"Mali 1987"', add
label define sample_lbl 466199801 `"Mali 1998"', add
label define sample_lbl 466200901 `"Mali 2009"', add
label define sample_lbl 480199001 `"Mauritius 1990"', add
label define sample_lbl 480200001 `"Mauritius 2000"', add
label define sample_lbl 480201101 `"Mauritius 2011"', add
label define sample_lbl 484196001 `"Mexico 1960"', add
label define sample_lbl 484197001 `"Mexico 1970"', add
label define sample_lbl 484199001 `"Mexico 1990"', add
label define sample_lbl 484199501 `"Mexico 1995"', add
label define sample_lbl 484200001 `"Mexico 2000"', add
label define sample_lbl 484200501 `"Mexico 2005"', add
label define sample_lbl 484201001 `"Mexico 2010"', add
label define sample_lbl 484201501 `"Mexico 2015"', add
label define sample_lbl 484202001 `"Mexico 2020"', add
label define sample_lbl 484200521 `"Mexico 2005 Q1 LFS"', add
label define sample_lbl 484200522 `"Mexico 2005 Q2 LFS"', add
label define sample_lbl 484200523 `"Mexico 2005 Q3 LFS"', add
label define sample_lbl 484200524 `"Mexico 2005 Q4 LFS"', add
label define sample_lbl 484200621 `"Mexico 2006 Q1 LFS"', add
label define sample_lbl 484200622 `"Mexico 2006 Q2 LFS"', add
label define sample_lbl 484200623 `"Mexico 2006 Q3 LFS"', add
label define sample_lbl 484200624 `"Mexico 2006 Q4 LFS"', add
label define sample_lbl 484200721 `"Mexico 2007 Q1 LFS"', add
label define sample_lbl 484200722 `"Mexico 2007 Q2 LFS"', add
label define sample_lbl 484200723 `"Mexico 2007 Q3 LFS"', add
label define sample_lbl 484200724 `"Mexico 2007 Q4 LFS"', add
label define sample_lbl 484200821 `"Mexico 2008 Q1 LFS"', add
label define sample_lbl 484200822 `"Mexico 2008 Q2 LFS"', add
label define sample_lbl 484200823 `"Mexico 2008 Q3 LFS"', add
label define sample_lbl 484200824 `"Mexico 2008 Q4 LFS"', add
label define sample_lbl 484200921 `"Mexico 2009 Q1 LFS"', add
label define sample_lbl 484200922 `"Mexico 2009 Q2 LFS"', add
label define sample_lbl 484200923 `"Mexico 2009 Q3 LFS"', add
label define sample_lbl 484200924 `"Mexico 2009 Q4 LFS"', add
label define sample_lbl 484201021 `"Mexico 2010 Q1 LFS"', add
label define sample_lbl 484201022 `"Mexico 2010 Q2 LFS"', add
label define sample_lbl 484201023 `"Mexico 2010 Q3 LFS"', add
label define sample_lbl 484201024 `"Mexico 2010 Q4 LFS"', add
label define sample_lbl 484201121 `"Mexico 2011 Q1 LFS"', add
label define sample_lbl 484201122 `"Mexico 2011 Q2 LFS"', add
label define sample_lbl 484201123 `"Mexico 2011 Q3 LFS"', add
label define sample_lbl 484201124 `"Mexico 2011 Q4 LFS"', add
label define sample_lbl 484201221 `"Mexico 2012 Q1 LFS"', add
label define sample_lbl 484201222 `"Mexico 2012 Q2 LFS"', add
label define sample_lbl 484201223 `"Mexico 2012 Q3 LFS"', add
label define sample_lbl 484201224 `"Mexico 2012 Q4 LFS"', add
label define sample_lbl 484201321 `"Mexico 2013 Q1 LFS"', add
label define sample_lbl 484201322 `"Mexico 2013 Q2 LFS"', add
label define sample_lbl 484201323 `"Mexico 2013 Q3 LFS"', add
label define sample_lbl 484201324 `"Mexico 2013 Q4 LFS"', add
label define sample_lbl 484201421 `"Mexico 2014 Q1 LFS"', add
label define sample_lbl 484201422 `"Mexico 2014 Q2 LFS"', add
label define sample_lbl 484201423 `"Mexico 2014 Q3 LFS"', add
label define sample_lbl 484201424 `"Mexico 2014 Q4 LFS"', add
label define sample_lbl 484201521 `"Mexico 2015 Q1 LFS"', add
label define sample_lbl 484201522 `"Mexico 2015 Q2 LFS"', add
label define sample_lbl 484201523 `"Mexico 2015 Q3 LFS"', add
label define sample_lbl 484201524 `"Mexico 2015 Q4 LFS"', add
label define sample_lbl 484201621 `"Mexico 2016 Q1 LFS"', add
label define sample_lbl 484201622 `"Mexico 2016 Q2 LFS"', add
label define sample_lbl 484201623 `"Mexico 2016 Q3 LFS"', add
label define sample_lbl 484201624 `"Mexico 2016 Q4 LFS"', add
label define sample_lbl 484201721 `"Mexico 2017 Q1 LFS"', add
label define sample_lbl 484201722 `"Mexico 2017 Q2 LFS"', add
label define sample_lbl 484201723 `"Mexico 2017 Q3 LFS"', add
label define sample_lbl 484201724 `"Mexico 2017 Q4 LFS"', add
label define sample_lbl 484201821 `"Mexico 2018 Q1 LFS"', add
label define sample_lbl 484201822 `"Mexico 2018 Q2 LFS"', add
label define sample_lbl 484201823 `"Mexico 2018 Q3 LFS"', add
label define sample_lbl 484201824 `"Mexico 2018 Q4 LFS"', add
label define sample_lbl 484201921 `"Mexico 2019 Q1 LFS"', add
label define sample_lbl 484201922 `"Mexico 2019 Q2 LFS"', add
label define sample_lbl 484201923 `"Mexico 2019 Q3 LFS"', add
label define sample_lbl 484201924 `"Mexico 2019 Q4 LFS"', add
label define sample_lbl 484202021 `"Mexico 2020 Q1 LFS"', add
label define sample_lbl 484202023 `"Mexico 2020 Q3 LFS"', add
label define sample_lbl 496198901 `"Mongolia 1989"', add
label define sample_lbl 496200001 `"Mongolia 2000"', add
label define sample_lbl 496201001 `"Mongolia 2010"', add
label define sample_lbl 496202001 `"Mongolia 2020"', add
label define sample_lbl 504198201 `"Morocco 1982"', add
label define sample_lbl 504199401 `"Morocco 1994"', add
label define sample_lbl 504200401 `"Morocco 2004"', add
label define sample_lbl 504201401 `"Morocco 2014"', add
label define sample_lbl 508199701 `"Mozambique 1997"', add
label define sample_lbl 508200701 `"Mozambique 2007"', add
label define sample_lbl 508201701 `"Mozambique 2017"', add
label define sample_lbl 104201401 `"Myanmar 2014"', add
label define sample_lbl 524200101 `"Nepal 2001"', add
label define sample_lbl 524201101 `"Nepal 2011"', add
label define sample_lbl 528196001 `"Netherlands 1960"', add
label define sample_lbl 528197101 `"Netherlands 1971"', add
label define sample_lbl 528200101 `"Netherlands 2001"', add
label define sample_lbl 528201101 `"Netherlands 2011"', add
label define sample_lbl 558197101 `"Nicaragua 1971"', add
label define sample_lbl 558199501 `"Nicaragua 1995"', add
label define sample_lbl 558200501 `"Nicaragua 2005"', add
label define sample_lbl 566200621 `"Nigeria 2006"', add
label define sample_lbl 566200721 `"Nigeria 2007"', add
label define sample_lbl 566200821 `"Nigeria 2008"', add
label define sample_lbl 566200921 `"Nigeria 2009"', add
label define sample_lbl 566201021 `"Nigeria 2010"', add
label define sample_lbl 578180101 `"Norway 1801"', add
label define sample_lbl 578186501 `"Norway 1865"', add
label define sample_lbl 578187501 `"Norway 1875"', add
label define sample_lbl 578190001 `"Norway 1900"', add
label define sample_lbl 578191001 `"Norway 1910"', add
label define sample_lbl 586197301 `"Pakistan 1973"', add
label define sample_lbl 586198101 `"Pakistan 1981"', add
label define sample_lbl 586199801 `"Pakistan 1998"', add
label define sample_lbl 275199701 `"Palestine 1997"', add
label define sample_lbl 275200701 `"Palestine 2007"', add
label define sample_lbl 275201701 `"Palestine 2017"', add
label define sample_lbl 591196001 `"Panama 1960"', add
label define sample_lbl 591197001 `"Panama 1970"', add
label define sample_lbl 591198001 `"Panama 1980"', add
label define sample_lbl 591199001 `"Panama 1990"', add
label define sample_lbl 591200001 `"Panama 2000"', add
label define sample_lbl 591201001 `"Panama 2010"', add
label define sample_lbl 598198001 `"Papua New Guinea 1980"', add
label define sample_lbl 598199001 `"Papua New Guinea 1990"', add
label define sample_lbl 598200001 `"Papua New Guinea 2000"', add
label define sample_lbl 600196201 `"Paraguay 1962"', add
label define sample_lbl 600197201 `"Paraguay 1972"', add
label define sample_lbl 600198201 `"Paraguay 1982"', add
label define sample_lbl 600199201 `"Paraguay 1992"', add
label define sample_lbl 600200201 `"Paraguay 2002"', add
label define sample_lbl 604199301 `"Peru 1993"', add
label define sample_lbl 604200701 `"Peru 2007"', add
label define sample_lbl 604201701 `"Peru 2017"', add
label define sample_lbl 608199721 `"Philippines 1997 Q1 LFS"', add
label define sample_lbl 608199722 `"Philippines 1997 Q2 LFS"', add
label define sample_lbl 608199723 `"Philippines 1997 Q3 LFS"', add
label define sample_lbl 608199724 `"Philippines 1997 Q4 LFS"', add
label define sample_lbl 608199821 `"Philippines 1998 Q1 LFS"', add
label define sample_lbl 608199822 `"Philippines 1998 Q2 LFS"', add
label define sample_lbl 608199823 `"Philippines 1998 Q3 LFS"', add
label define sample_lbl 608199824 `"Philippines 1998 Q4 LFS"', add
label define sample_lbl 608199921 `"Philippines 1999 Q1 LFS"', add
label define sample_lbl 608199922 `"Philippines 1999 Q2 LFS"', add
label define sample_lbl 608199923 `"Philippines 1999 Q3 LFS"', add
label define sample_lbl 608199924 `"Philippines 1999 Q4 LFS"', add
label define sample_lbl 608200021 `"Philippines 2000 Q1 LFS"', add
label define sample_lbl 608200022 `"Philippines 2000 Q2 LFS"', add
label define sample_lbl 608200023 `"Philippines 2000 Q3 LFS"', add
label define sample_lbl 608200024 `"Philippines 2000 Q4 LFS"', add
label define sample_lbl 608200121 `"Philippines 2001 Q1 LFS"', add
label define sample_lbl 608200122 `"Philippines 2001 Q2 LFS"', add
label define sample_lbl 608200123 `"Philippines 2001 Q3 LFS"', add
label define sample_lbl 608200124 `"Philippines 2001 Q4 LFS"', add
label define sample_lbl 608200221 `"Philippines 2002 Q1 LFS"', add
label define sample_lbl 608200222 `"Philippines 2002 Q2 LFS"', add
label define sample_lbl 608200223 `"Philippines 2002 Q3 LFS"', add
label define sample_lbl 608200224 `"Philippines 2002 Q4 LFS"', add
label define sample_lbl 608200321 `"Philippines 2003 Q1 LFS"', add
label define sample_lbl 608200322 `"Philippines 2003 Q2 LFS"', add
label define sample_lbl 608200323 `"Philippines 2003 Q3 LFS"', add
label define sample_lbl 608200324 `"Philippines 2003 Q4 LFS"', add
label define sample_lbl 608200421 `"Philippines 2004 Q1 LFS"', add
label define sample_lbl 608200422 `"Philippines 2004 Q2 LFS"', add
label define sample_lbl 608200423 `"Philippines 2004 Q3 LFS"', add
label define sample_lbl 608200424 `"Philippines 2004 Q4 LFS"', add
label define sample_lbl 608200521 `"Philippines 2005 Q1 LFS"', add
label define sample_lbl 608200522 `"Philippines 2005 Q2 LFS"', add
label define sample_lbl 608200523 `"Philippines 2005 Q3 LFS"', add
label define sample_lbl 608200524 `"Philippines 2005 Q4 LFS"', add
label define sample_lbl 608200621 `"Philippines 2006 Q1 LFS"', add
label define sample_lbl 608200622 `"Philippines 2006 Q2 LFS"', add
label define sample_lbl 608200623 `"Philippines 2006 Q3 LFS"', add
label define sample_lbl 608200624 `"Philippines 2006 Q4 LFS"', add
label define sample_lbl 608200721 `"Philippines 2007 Q1 LFS"', add
label define sample_lbl 608200722 `"Philippines 2007 Q2 LFS"', add
label define sample_lbl 608200723 `"Philippines 2007 Q3 LFS"', add
label define sample_lbl 608200724 `"Philippines 2007 Q4 LFS"', add
label define sample_lbl 608200821 `"Philippines 2008 Q1 LFS"', add
label define sample_lbl 608200822 `"Philippines 2008 Q2 LFS"', add
label define sample_lbl 608200823 `"Philippines 2008 Q3 LFS"', add
label define sample_lbl 608200824 `"Philippines 2008 Q4 LFS"', add
label define sample_lbl 608200921 `"Philippines 2009 Q1 LFS"', add
label define sample_lbl 608200922 `"Philippines 2009 Q2 LFS"', add
label define sample_lbl 608200923 `"Philippines 2009 Q3 LFS"', add
label define sample_lbl 608200924 `"Philippines 2009 Q4 LFS"', add
label define sample_lbl 608201021 `"Philippines 2010 Q1 LFS"', add
label define sample_lbl 608201022 `"Philippines 2010 Q2 LFS"', add
label define sample_lbl 608201023 `"Philippines 2010 Q3 LFS"', add
label define sample_lbl 608201024 `"Philippines 2010 Q4 LFS"', add
label define sample_lbl 608201121 `"Philippines 2011 Q1 LFS"', add
label define sample_lbl 608201122 `"Philippines 2011 Q2 LFS"', add
label define sample_lbl 608201123 `"Philippines 2011 Q3 LFS"', add
label define sample_lbl 608201124 `"Philippines 2011 Q4 LFS"', add
label define sample_lbl 608201221 `"Philippines 2012 Q1 LFS"', add
label define sample_lbl 608201222 `"Philippines 2012 Q2 LFS"', add
label define sample_lbl 608201223 `"Philippines 2012 Q3 LFS"', add
label define sample_lbl 608201224 `"Philippines 2012 Q4 LFS"', add
label define sample_lbl 608201321 `"Philippines 2013 Q1 LFS"', add
label define sample_lbl 608201322 `"Philippines 2013 Q2 LFS"', add
label define sample_lbl 608201323 `"Philippines 2013 Q3 LFS"', add
label define sample_lbl 608201324 `"Philippines 2013 Q4 LFS"', add
label define sample_lbl 608201421 `"Philippines 2014 Q1 LFS"', add
label define sample_lbl 608201422 `"Philippines 2014 Q2 LFS"', add
label define sample_lbl 608201423 `"Philippines 2014 Q3 LFS"', add
label define sample_lbl 608201424 `"Philippines 2014 Q4 LFS"', add
label define sample_lbl 608201521 `"Philippines 2015 Q1 LFS"', add
label define sample_lbl 608201522 `"Philippines 2015 Q2 LFS"', add
label define sample_lbl 608201523 `"Philippines 2015 Q3 LFS"', add
label define sample_lbl 608201524 `"Philippines 2015 Q4 LFS"', add
label define sample_lbl 608201621 `"Philippines 2016 Q1 LFS"', add
label define sample_lbl 608201622 `"Philippines 2016 Q2 LFS"', add
label define sample_lbl 608201623 `"Philippines 2016 Q3 LFS"', add
label define sample_lbl 608201624 `"Philippines 2016 Q4 LFS"', add
label define sample_lbl 608201721 `"Philippines 2017 Q1 LFS"', add
label define sample_lbl 608201722 `"Philippines 2017 Q2 LFS"', add
label define sample_lbl 608201723 `"Philippines 2017 Q3 LFS"', add
label define sample_lbl 608201724 `"Philippines 2017 Q4 LFS"', add
label define sample_lbl 608201821 `"Philippines 2018 Q1 LFS"', add
label define sample_lbl 608201822 `"Philippines 2018 Q2 LFS"', add
label define sample_lbl 608201823 `"Philippines 2018 Q3 LFS"', add
label define sample_lbl 608201824 `"Philippines 2018 Q4 LFS"', add
label define sample_lbl 608201921 `"Philippines 2019 Q1 LFS"', add
label define sample_lbl 608201922 `"Philippines 2019 Q2 LFS"', add
label define sample_lbl 608201923 `"Philippines 2019 Q3 LFS"', add
label define sample_lbl 608199001 `"Philippines 1990"', add
label define sample_lbl 608199501 `"Philippines 1995"', add
label define sample_lbl 608200001 `"Philippines 2000"', add
label define sample_lbl 608201001 `"Philippines 2010"', add
label define sample_lbl 616197801 `"Poland 1978"', add
label define sample_lbl 616198801 `"Poland 1988"', add
label define sample_lbl 616200201 `"Poland 2002"', add
label define sample_lbl 616201101 `"Poland 2011"', add
label define sample_lbl 620198101 `"Portugal 1981"', add
label define sample_lbl 620199101 `"Portugal 1991"', add
label define sample_lbl 620200101 `"Portugal 2001"', add
label define sample_lbl 620201101 `"Portugal 2011"', add
label define sample_lbl 630197001 `"Puerto Rico 1970"', add
label define sample_lbl 630198001 `"Puerto Rico 1980"', add
label define sample_lbl 630199001 `"Puerto Rico 1990"', add
label define sample_lbl 630200001 `"Puerto Rico 2000"', add
label define sample_lbl 630200501 `"Puerto Rico 2005"', add
label define sample_lbl 630201001 `"Puerto Rico 2010"', add
label define sample_lbl 630201501 `"Puerto Rico 2015"', add
label define sample_lbl 630202001 `"Puerto Rico 2020"', add
label define sample_lbl 642197701 `"Romania 1977"', add
label define sample_lbl 642199201 `"Romania 1992"', add
label define sample_lbl 642200201 `"Romania 2002"', add
label define sample_lbl 642201101 `"Romania 2011"', add
label define sample_lbl 643200201 `"Russia 2002"', add
label define sample_lbl 643201001 `"Russia 2010"', add
label define sample_lbl 646199101 `"Rwanda 1991"', add
label define sample_lbl 646200201 `"Rwanda 2002"', add
label define sample_lbl 646201201 `"Rwanda 2012"', add
label define sample_lbl 662198001 `"Saint Lucia 1980"', add
label define sample_lbl 662199101 `"Saint Lucia 1991"', add
label define sample_lbl 686198801 `"Senegal 1988"', add
label define sample_lbl 686200201 `"Senegal 2002"', add
label define sample_lbl 686201301 `"Senegal 2013"', add
label define sample_lbl 694200401 `"Sierra Leone 2004"', add
label define sample_lbl 694201501 `"Sierra Leone 2015"', add
label define sample_lbl 703199101 `"Slovak Republic 1991"', add
label define sample_lbl 703200101 `"Slovak Republic 2001"', add
label define sample_lbl 703201101 `"Slovak Republic 2011"', add
label define sample_lbl 705200201 `"Slovenia 2002"', add
label define sample_lbl 710199601 `"South Africa 1996"', add
label define sample_lbl 710200101 `"South Africa 2001"', add
label define sample_lbl 710200701 `"South Africa 2007"', add
label define sample_lbl 710201101 `"South Africa 2011"', add
label define sample_lbl 710201601 `"South Africa 2016"', add
label define sample_lbl 728200801 `"South Sudan 2008"', add
label define sample_lbl 724198101 `"Spain 1981"', add
label define sample_lbl 724199101 `"Spain 1991"', add
label define sample_lbl 724200101 `"Spain 2001"', add
label define sample_lbl 724201101 `"Spain 2011"', add
label define sample_lbl 724200521 `"Spain 2005 Q1 LFS"', add
label define sample_lbl 724200522 `"Spain 2005 Q2 LFS"', add
label define sample_lbl 724200523 `"Spain 2005 Q3 LFS"', add
label define sample_lbl 724200524 `"Spain 2005 Q4 LFS"', add
label define sample_lbl 724200621 `"Spain 2006 Q1 LFS"', add
label define sample_lbl 724200622 `"Spain 2006 Q2 LFS"', add
label define sample_lbl 724200623 `"Spain 2006 Q3 LFS"', add
label define sample_lbl 724200624 `"Spain 2006 Q4 LFS"', add
label define sample_lbl 724200721 `"Spain 2007 Q1 LFS"', add
label define sample_lbl 724200722 `"Spain 2007 Q2 LFS"', add
label define sample_lbl 724200723 `"Spain 2007 Q3 LFS"', add
label define sample_lbl 724200724 `"Spain 2007 Q4 LFS"', add
label define sample_lbl 724200821 `"Spain 2008 Q1 LFS"', add
label define sample_lbl 724200822 `"Spain 2008 Q2 LFS"', add
label define sample_lbl 724200823 `"Spain 2008 Q3 LFS"', add
label define sample_lbl 724200824 `"Spain 2008 Q4 LFS"', add
label define sample_lbl 724200921 `"Spain 2009 Q1 LFS"', add
label define sample_lbl 724200922 `"Spain 2009 Q2 LFS"', add
label define sample_lbl 724200923 `"Spain 2009 Q3 LFS"', add
label define sample_lbl 724200924 `"Spain 2009 Q4 LFS"', add
label define sample_lbl 724201021 `"Spain 2010 Q1 LFS"', add
label define sample_lbl 724201022 `"Spain 2010 Q2 LFS"', add
label define sample_lbl 724201023 `"Spain 2010 Q3 LFS"', add
label define sample_lbl 724201024 `"Spain 2010 Q4 LFS"', add
label define sample_lbl 724201121 `"Spain 2011 Q1 LFS"', add
label define sample_lbl 724201122 `"Spain 2011 Q2 LFS"', add
label define sample_lbl 724201123 `"Spain 2011 Q3 LFS"', add
label define sample_lbl 724201124 `"Spain 2011 Q4 LFS"', add
label define sample_lbl 724201221 `"Spain 2012 Q1 LFS"', add
label define sample_lbl 724201222 `"Spain 2012 Q2 LFS"', add
label define sample_lbl 724201223 `"Spain 2012 Q3 LFS"', add
label define sample_lbl 724201224 `"Spain 2012 Q4 LFS"', add
label define sample_lbl 724201321 `"Spain 2013 Q1 LFS"', add
label define sample_lbl 724201322 `"Spain 2013 Q2 LFS"', add
label define sample_lbl 724201323 `"Spain 2013 Q3 LFS"', add
label define sample_lbl 724201324 `"Spain 2013 Q4 LFS"', add
label define sample_lbl 724201421 `"Spain 2014 Q1 LFS"', add
label define sample_lbl 724201422 `"Spain 2014 Q2 LFS"', add
label define sample_lbl 724201423 `"Spain 2014 Q3 LFS"', add
label define sample_lbl 724201424 `"Spain 2014 Q4 LFS"', add
label define sample_lbl 724201521 `"Spain 2015 Q1 LFS"', add
label define sample_lbl 724201522 `"Spain 2015 Q2 LFS"', add
label define sample_lbl 724201523 `"Spain 2015 Q3 LFS"', add
label define sample_lbl 724201524 `"Spain 2015 Q4 LFS"', add
label define sample_lbl 724201621 `"Spain 2016 Q1 LFS"', add
label define sample_lbl 724201622 `"Spain 2016 Q2 LFS"', add
label define sample_lbl 724201623 `"Spain 2016 Q3 LFS"', add
label define sample_lbl 724201624 `"Spain 2016 Q4 LFS"', add
label define sample_lbl 724201721 `"Spain 2017 Q1 LFS"', add
label define sample_lbl 724201722 `"Spain 2017 Q2 LFS"', add
label define sample_lbl 724201723 `"Spain 2017 Q3 LFS"', add
label define sample_lbl 724201724 `"Spain 2017 Q4 LFS"', add
label define sample_lbl 724201821 `"Spain 2018 Q1 LFS"', add
label define sample_lbl 724201822 `"Spain 2018 Q2 LFS"', add
label define sample_lbl 724201823 `"Spain 2018 Q3 LFS"', add
label define sample_lbl 724201824 `"Spain 2018 Q4 LFS"', add
label define sample_lbl 724201921 `"Spain 2019 Q1 LFS"', add
label define sample_lbl 724201922 `"Spain 2019 Q2 LFS"', add
label define sample_lbl 724201923 `"Spain 2019 Q3 LFS"', add
label define sample_lbl 724201924 `"Spain 2019 Q4 LFS"', add
label define sample_lbl 724202021 `"Spain 2020 Q1 LFS"', add
label define sample_lbl 724202022 `"Spain 2020 Q2 LFS"', add
label define sample_lbl 724202023 `"Spain 2020 Q3 LFS"', add
label define sample_lbl 724202024 `"Spain 2020 Q4 LFS"', add
label define sample_lbl 729200801 `"Sudan 2008"', add
label define sample_lbl 740200401 `"Suriname 2004"', add
label define sample_lbl 740201201 `"Suriname 2012"', add
label define sample_lbl 752188001 `"Sweden 1880"', add
label define sample_lbl 752189001 `"Sweden 1890"', add
label define sample_lbl 752190001 `"Sweden 1900"', add
label define sample_lbl 752191001 `"Sweden 1910"', add
label define sample_lbl 756197001 `"Switzerland 1970"', add
label define sample_lbl 756198001 `"Switzerland 1980"', add
label define sample_lbl 756199001 `"Switzerland 1990"', add
label define sample_lbl 756200001 `"Switzerland 2000"', add
label define sample_lbl 756201101 `"Switzerland 2011"', add
label define sample_lbl 834198801 `"Tanzania 1988"', add
label define sample_lbl 834200201 `"Tanzania 2002"', add
label define sample_lbl 834201201 `"Tanzania 2012"', add
label define sample_lbl 764197001 `"Thailand 1970"', add
label define sample_lbl 764198001 `"Thailand 1980"', add
label define sample_lbl 764199001 `"Thailand 1990"', add
label define sample_lbl 764200001 `"Thailand 2000"', add
label define sample_lbl 768196001 `"Togo 1960"', add
label define sample_lbl 768197001 `"Togo 1970"', add
label define sample_lbl 768201001 `"Togo 2010"', add
label define sample_lbl 780197001 `"Trinidad and Tobago 1970"', add
label define sample_lbl 780198001 `"Trinidad and Tobago 1980"', add
label define sample_lbl 780199001 `"Trinidad and Tobago 1990"', add
label define sample_lbl 780200001 `"Trinidad and Tobago 2000"', add
label define sample_lbl 780201101 `"Trinidad and Tobago 2011"', add
label define sample_lbl 792198501 `"Turkey 1985"', add
label define sample_lbl 792199001 `"Turkey 1990"', add
label define sample_lbl 792200001 `"Turkey 2000"', add
label define sample_lbl 800199101 `"Uganda 1991"', add
label define sample_lbl 800200201 `"Uganda 2002"', add
label define sample_lbl 800201401 `"Uganda 2014"', add
label define sample_lbl 804200101 `"Ukraine 2001"', add
label define sample_lbl 826185101 `"United Kingdom 1851 (England and Wales)"', add
label define sample_lbl 826185102 `"United Kingdom 1851 (Scotland)"', add
label define sample_lbl 826185103 `"United Kingdom 1851 (2% sample)"', add
label define sample_lbl 826186101 `"United Kingdom 1861 (England and Wales)"', add
label define sample_lbl 826186102 `"United Kingdom 1861 (Scotland)"', add
label define sample_lbl 826187101 `"United Kingdom 1871 (Scotland)"', add
label define sample_lbl 826188101 `"United Kingdom 1881 (England and Wales)"', add
label define sample_lbl 826188102 `"United Kingdom 1881 (Scotland)"', add
label define sample_lbl 826189101 `"United Kingdom 1891 (England and Wales)"', add
label define sample_lbl 826189102 `"United Kingdom 1891 (Scotland)"', add
label define sample_lbl 826190101 `"United Kingdom 1901 (England and Wales)"', add
label define sample_lbl 826190102 `"United Kingdom 1901 (Scotland)"', add
label define sample_lbl 826191101 `"United Kingdom 1911 (England and Wales)"', add
label define sample_lbl 826196101 `"United Kingdom 1961"', add
label define sample_lbl 826197101 `"United Kingdom 1971"', add
label define sample_lbl 826199101 `"United Kingdom 1991"', add
label define sample_lbl 826200101 `"United Kingdom 2001"', add
label define sample_lbl 840185001 `"United States 1850 (100%)"', add
label define sample_lbl 840185002 `"United States 1850 (1%)"', add
label define sample_lbl 840186001 `"United States 1860 (1%)"', add
label define sample_lbl 840187001 `"United States 1870 (1%)"', add
label define sample_lbl 840188001 `"United States 1880 (100%)"', add
label define sample_lbl 840188002 `"United States 1880 (10%)"', add
label define sample_lbl 840190001 `"United States 1900 (5%)"', add
label define sample_lbl 840191001 `"United States 1910 (1%)"', add
label define sample_lbl 840196001 `"United States 1960"', add
label define sample_lbl 840197001 `"United States 1970"', add
label define sample_lbl 840198001 `"United States 1980"', add
label define sample_lbl 840199001 `"United States 1990"', add
label define sample_lbl 840200001 `"United States 2000"', add
label define sample_lbl 840200501 `"United States 2005"', add
label define sample_lbl 840201001 `"United States 2010"', add
label define sample_lbl 840201501 `"United States 2015"', add
label define sample_lbl 840202001 `"United States 2020"', add
label define sample_lbl 858196301 `"Uruguay 1963"', add
label define sample_lbl 858196302 `"Uruguay 1963 (full count)"', add
label define sample_lbl 858197501 `"Uruguay 1975"', add
label define sample_lbl 858197502 `"Uruguay 1975 (full count)"', add
label define sample_lbl 858198501 `"Uruguay 1985"', add
label define sample_lbl 858198502 `"Uruguay 1985 (full count)"', add
label define sample_lbl 858199601 `"Uruguay 1996"', add
label define sample_lbl 858199602 `"Uruguay 1996 (full count)"', add
label define sample_lbl 858200621 `"Uruguay 2006"', add
label define sample_lbl 858201101 `"Uruguay 2011"', add
label define sample_lbl 858201102 `"Uruguay 2011 (full count)"', add
label define sample_lbl 862197101 `"Venezuela 1971"', add
label define sample_lbl 862198101 `"Venezuela 1981"', add
label define sample_lbl 862199001 `"Venezuela 1990"', add
label define sample_lbl 862200101 `"Venezuela 2001"', add
label define sample_lbl 704198901 `"Vietnam 1989"', add
label define sample_lbl 704199901 `"Vietnam 1999"', add
label define sample_lbl 704200901 `"Vietnam 2009"', add
label define sample_lbl 704201901 `"Vietnam 2019"', add
label define sample_lbl 894199001 `"Zambia 1990"', add
label define sample_lbl 894200001 `"Zambia 2000"', add
label define sample_lbl 894201001 `"Zambia 2010"', add
label define sample_lbl 716201201 `"Zimbabwe 2012"', add
label values sample sample_lbl

label define quarter_lbl 1 `"Quarter 1"'
label define quarter_lbl 2 `"Quarter 2"', add
label define quarter_lbl 3 `"Quarter 3"', add
label define quarter_lbl 4 `"Quarter 4"', add
label values quarter quarter_lbl

label define geo1_mx_lbl 484001 `"Aguascalientes"'
label define geo1_mx_lbl 484002 `"Baja California"', add
label define geo1_mx_lbl 484003 `"Baja California Sur"', add
label define geo1_mx_lbl 484004 `"Campeche"', add
label define geo1_mx_lbl 484005 `"Coahuila de Zaragoza"', add
label define geo1_mx_lbl 484006 `"Colima"', add
label define geo1_mx_lbl 484007 `"Chiapas"', add
label define geo1_mx_lbl 484008 `"Chihuahua"', add
label define geo1_mx_lbl 484009 `"Distrito Federal"', add
label define geo1_mx_lbl 484010 `"Durango"', add
label define geo1_mx_lbl 484011 `"Guanajuato"', add
label define geo1_mx_lbl 484012 `"Guerrero"', add
label define geo1_mx_lbl 484013 `"Hidalgo"', add
label define geo1_mx_lbl 484014 `"Jalisco"', add
label define geo1_mx_lbl 484015 `"México"', add
label define geo1_mx_lbl 484016 `"Michoacán de Ocampo"', add
label define geo1_mx_lbl 484017 `"Morelos"', add
label define geo1_mx_lbl 484018 `"Nayarit"', add
label define geo1_mx_lbl 484019 `"Nuevo León"', add
label define geo1_mx_lbl 484020 `"Oaxaca"', add
label define geo1_mx_lbl 484021 `"Puebla"', add
label define geo1_mx_lbl 484022 `"Querétaro"', add
label define geo1_mx_lbl 484023 `"Quintana Roo"', add
label define geo1_mx_lbl 484024 `"San Luis Potosí"', add
label define geo1_mx_lbl 484025 `"Sinaloa"', add
label define geo1_mx_lbl 484026 `"Sonora"', add
label define geo1_mx_lbl 484027 `"Tabasco"', add
label define geo1_mx_lbl 484028 `"Tamaulipas"', add
label define geo1_mx_lbl 484029 `"Tlaxcala"', add
label define geo1_mx_lbl 484030 `"Veracruz de Ignacio de la Llave"', add
label define geo1_mx_lbl 484031 `"Yucatán"', add
label define geo1_mx_lbl 484032 `"Zacatecas"', add
label values geo1_mx geo1_mx_lbl

label define geo2_mx_lbl 484001001 `"Aguascalientes, El Llano, San Francisco de los Romo"'
label define geo2_mx_lbl 484001002 `"Asientos"', add
label define geo2_mx_lbl 484001003 `"Calvillo"', add
label define geo2_mx_lbl 484001004 `"Cosío"', add
label define geo2_mx_lbl 484001005 `"Jesús María"', add
label define geo2_mx_lbl 484001006 `"Pabellón de Arteaga, Rincón de Romos"', add
label define geo2_mx_lbl 484001007 `"San José de Gracia"', add
label define geo2_mx_lbl 484001008 `"Tepezalá"', add
label define geo2_mx_lbl 484001999 `"Aguascalientes, municipality unknown"', add
label define geo2_mx_lbl 484002001 `"Ensenada, San Quintín"', add
label define geo2_mx_lbl 484002002 `"Mexicali"', add
label define geo2_mx_lbl 484002004 `"Tijuana, Playas de Rosarito, Tecate"', add
label define geo2_mx_lbl 484003001 `"Comondú, Mulegé, La Paz, Los Cabos, Loreto"', add
label define geo2_mx_lbl 484004001 `"Calkiní"', add
label define geo2_mx_lbl 484004003 `"Carmen, Champotón, Hopelchén, Escárcega, Calakmul, Candelaria, Seybaplaya, Campeche"', add
label define geo2_mx_lbl 484004004 `"Hecelchakán"', add
label define geo2_mx_lbl 484004005 `"Palizada"', add
label define geo2_mx_lbl 484004006 `"Tenabo"', add
label define geo2_mx_lbl 484004999 `"Campeche, municipality unknown"', add
label define geo2_mx_lbl 484005001 `"Abasolo"', add
label define geo2_mx_lbl 484005002 `"Acuña"', add
label define geo2_mx_lbl 484005003 `"Allende"', add
label define geo2_mx_lbl 484005004 `"Arteaga"', add
label define geo2_mx_lbl 484005005 `"Candela"', add
label define geo2_mx_lbl 484005006 `"Castaños"', add
label define geo2_mx_lbl 484005007 `"Cuatro Ciénegas"', add
label define geo2_mx_lbl 484005008 `"Escobedo"', add
label define geo2_mx_lbl 484005009 `"Francisco I. Madero"', add
label define geo2_mx_lbl 484005010 `"Frontera"', add
label define geo2_mx_lbl 484005011 `"General Cepeda"', add
label define geo2_mx_lbl 484005012 `"Guerrero"', add
label define geo2_mx_lbl 484005013 `"Hidalgo"', add
label define geo2_mx_lbl 484005014 `"Jiménez"', add
label define geo2_mx_lbl 484005015 `"Juárez"', add
label define geo2_mx_lbl 484005016 `"Lamadrid"', add
label define geo2_mx_lbl 484005017 `"Matamoros"', add
label define geo2_mx_lbl 484005018 `"Monclova"', add
label define geo2_mx_lbl 484005019 `"Morelos"', add
label define geo2_mx_lbl 484005020 `"Múzquiz"', add
label define geo2_mx_lbl 484005021 `"Nadadores"', add
label define geo2_mx_lbl 484005022 `"Nava"', add
label define geo2_mx_lbl 484005023 `"Ocampo"', add
label define geo2_mx_lbl 484005024 `"Parras"', add
label define geo2_mx_lbl 484005025 `"Piedras Negras"', add
label define geo2_mx_lbl 484005026 `"Progreso"', add
label define geo2_mx_lbl 484005027 `"Ramos Arizpe"', add
label define geo2_mx_lbl 484005028 `"Sabinas"', add
label define geo2_mx_lbl 484005029 `"Sacramento"', add
label define geo2_mx_lbl 484005030 `"Saltillo"', add
label define geo2_mx_lbl 484005031 `"San Buenaventura"', add
label define geo2_mx_lbl 484005032 `"San Juan de Sabinas"', add
label define geo2_mx_lbl 484005033 `"San Pedro"', add
label define geo2_mx_lbl 484005034 `"Sierra Mojada"', add
label define geo2_mx_lbl 484005035 `"Torreón"', add
label define geo2_mx_lbl 484005036 `"Viesca"', add
label define geo2_mx_lbl 484005037 `"Villa Unión"', add
label define geo2_mx_lbl 484005038 `"Zaragoza"', add
label define geo2_mx_lbl 484005999 `"Coahuila, municipality unknown"', add
label define geo2_mx_lbl 484006001 `"Armería, Manzanillo"', add
label define geo2_mx_lbl 484006002 `"Colima"', add
label define geo2_mx_lbl 484006003 `"Comala"', add
label define geo2_mx_lbl 484006004 `"Coquimatlán"', add
label define geo2_mx_lbl 484006005 `"Cuauhtémoc"', add
label define geo2_mx_lbl 484006006 `"Ixtlahuacán"', add
label define geo2_mx_lbl 484006007 `"Minatitlán"', add
label define geo2_mx_lbl 484006008 `"Tecomán"', add
label define geo2_mx_lbl 484006009 `"Villa de Álvarez"', add
label define geo2_mx_lbl 484006999 `"Colima, municipality unknown"', add
label define geo2_mx_lbl 484007001 `"Acacoyagua"', add
label define geo2_mx_lbl 484007002 `"Acala, Chiapa de Corzo, Emiliano Zapata"', add
label define geo2_mx_lbl 484007003 `"Acapetahua"', add
label define geo2_mx_lbl 484007004 `"Altamirano"', add
label define geo2_mx_lbl 484007005 `"Amatán"', add
label define geo2_mx_lbl 484007006 `"Amatenango de la Frontera"', add
label define geo2_mx_lbl 484007007 `"Amatenango del Valle"', add
label define geo2_mx_lbl 484007008 `"Angel Albino Corzo, Monte Cristo de Guerrero"', add
label define geo2_mx_lbl 484007009 `"Arriaga"', add
label define geo2_mx_lbl 484007010 `"Bejucal de Ocampo"', add
label define geo2_mx_lbl 484007011 `"Bella Vista"', add
label define geo2_mx_lbl 484007012 `"Berriozábal"', add
label define geo2_mx_lbl 484007013 `"Bochil"', add
label define geo2_mx_lbl 484007014 `"El Bosque"', add
label define geo2_mx_lbl 484007015 `"Cacahoatán"', add
label define geo2_mx_lbl 484007016 `"Catazajá"', add
label define geo2_mx_lbl 484007017 `"Cintalapa"', add
label define geo2_mx_lbl 484007018 `"Coapilla"', add
label define geo2_mx_lbl 484007019 `"Comitán de Domínguez"', add
label define geo2_mx_lbl 484007020 `"La Concordia"', add
label define geo2_mx_lbl 484007021 `"Copainalá"', add
label define geo2_mx_lbl 484007022 `"Chalchihuitán"', add
label define geo2_mx_lbl 484007023 `"Chamula"', add
label define geo2_mx_lbl 484007024 `"Chanal"', add
label define geo2_mx_lbl 484007025 `"Chapultenango"', add
label define geo2_mx_lbl 484007026 `"Chenalhó, Aldama"', add
label define geo2_mx_lbl 484007028 `"Chiapilla"', add
label define geo2_mx_lbl 484007029 `"Chicoasén"', add
label define geo2_mx_lbl 484007030 `"Chicomuselo"', add
label define geo2_mx_lbl 484007031 `"Chilón"', add
label define geo2_mx_lbl 484007032 `"Escuintla"', add
label define geo2_mx_lbl 484007033 `"Francisco León"', add
label define geo2_mx_lbl 484007034 `"Frontera Comalapa"', add
label define geo2_mx_lbl 484007035 `"Frontera Hidalgo"', add
label define geo2_mx_lbl 484007036 `"La Grandeza"', add
label define geo2_mx_lbl 484007037 `"Huehuetán"', add
label define geo2_mx_lbl 484007038 `"Huixtán"', add
label define geo2_mx_lbl 484007039 `"Huitiupán"', add
label define geo2_mx_lbl 484007040 `"Huixtla"', add
label define geo2_mx_lbl 484007041 `"La Independencia"', add
label define geo2_mx_lbl 484007042 `"Ixhuatán"', add
label define geo2_mx_lbl 484007043 `"Ixtacomitán"', add
label define geo2_mx_lbl 484007044 `"Ixtapa"', add
label define geo2_mx_lbl 484007045 `"Ixtapangajoya"', add
label define geo2_mx_lbl 484007046 `"Jiquipilas"', add
label define geo2_mx_lbl 484007047 `"Jitotol"', add
label define geo2_mx_lbl 484007048 `"Juárez"', add
label define geo2_mx_lbl 484007049 `"Larráinzar, Santiago el Pinar"', add
label define geo2_mx_lbl 484007050 `"La Libertad"', add
label define geo2_mx_lbl 484007051 `"Mapastepec"', add
label define geo2_mx_lbl 484007052 `"Las Margaritas, Maravilla Tenejapa"', add
label define geo2_mx_lbl 484007053 `"Mazapa de Madero"', add
label define geo2_mx_lbl 484007054 `"Mazatán"', add
label define geo2_mx_lbl 484007055 `"Metapa"', add
label define geo2_mx_lbl 484007056 `"Mitontic"', add
label define geo2_mx_lbl 484007057 `"Motozintla"', add
label define geo2_mx_lbl 484007058 `"Nicolás Ruíz"', add
label define geo2_mx_lbl 484007059 `"Ocosingo, San Juan Cancuc, Benemérito de las Américas, Marqués de Comillas"', add
label define geo2_mx_lbl 484007060 `"Ocotepec"', add
label define geo2_mx_lbl 484007061 `"Ocozocoautla de Espinosa, Tecpatán, Mezcalapa"', add
label define geo2_mx_lbl 484007062 `"Ostuacán"', add
label define geo2_mx_lbl 484007063 `"Osumacinta"', add
label define geo2_mx_lbl 484007064 `"Oxchuc"', add
label define geo2_mx_lbl 484007065 `"Palenque"', add
label define geo2_mx_lbl 484007066 `"Pantelhó"', add
label define geo2_mx_lbl 484007067 `"Pantepec"', add
label define geo2_mx_lbl 484007068 `"Pichucalco"', add
label define geo2_mx_lbl 484007069 `"Pijijiapan"', add
label define geo2_mx_lbl 484007070 `"El Porvenir"', add
label define geo2_mx_lbl 484007071 `"Villa Comaltitlán"', add
label define geo2_mx_lbl 484007072 `"Pueblo Nuevo Solistahuacán, Rayón, Rincón Chamula San Pedro, Tapilula"', add
label define geo2_mx_lbl 484007074 `"Reforma"', add
label define geo2_mx_lbl 484007075 `"Las Rosas"', add
label define geo2_mx_lbl 484007076 `"Sabanilla"', add
label define geo2_mx_lbl 484007077 `"Salto de Agua"', add
label define geo2_mx_lbl 484007078 `"San Cristóbal de las Casas"', add
label define geo2_mx_lbl 484007079 `"San Fernando"', add
label define geo2_mx_lbl 484007080 `"Siltepec, Capitán Luis Ángel Vidal, Honduras de la Sierra"', add
label define geo2_mx_lbl 484007081 `"Simojovel, San Andrés Duraznal"', add
label define geo2_mx_lbl 484007082 `"Sitalá"', add
label define geo2_mx_lbl 484007083 `"Socoltenango"', add
label define geo2_mx_lbl 484007084 `"Solosuchiapa"', add
label define geo2_mx_lbl 484007085 `"Soyaló"', add
label define geo2_mx_lbl 484007086 `"Suchiapa"', add
label define geo2_mx_lbl 484007087 `"Suchiate"', add
label define geo2_mx_lbl 484007088 `"Sunuapa"', add
label define geo2_mx_lbl 484007089 `"Tapachula"', add
label define geo2_mx_lbl 484007090 `"Tapalapa"', add
label define geo2_mx_lbl 484007093 `"Tenejapa"', add
label define geo2_mx_lbl 484007094 `"Teopisca"', add
label define geo2_mx_lbl 484007095 `"Tila"', add
label define geo2_mx_lbl 484007096 `"Tonalá"', add
label define geo2_mx_lbl 484007097 `"Totolapa"', add
label define geo2_mx_lbl 484007098 `"La Trinitaria"', add
label define geo2_mx_lbl 484007099 `"Tumbalá"', add
label define geo2_mx_lbl 484007100 `"Tuxtla Gutiérrez"', add
label define geo2_mx_lbl 484007101 `"Tuxtla Chico"', add
label define geo2_mx_lbl 484007102 `"Tuzantán"', add
label define geo2_mx_lbl 484007103 `"Tzimol"', add
label define geo2_mx_lbl 484007104 `"Unión Juárez"', add
label define geo2_mx_lbl 484007105 `"Venustiano Carranza"', add
label define geo2_mx_lbl 484007106 `"Villa Corzo, El Parral"', add
label define geo2_mx_lbl 484007107 `"Villaflores"', add
label define geo2_mx_lbl 484007108 `"Yajalón"', add
label define geo2_mx_lbl 484007109 `"San Lucas"', add
label define geo2_mx_lbl 484007110 `"Zinacantán"', add
label define geo2_mx_lbl 484007999 `"Chiapas, municipality unknown"', add
label define geo2_mx_lbl 484008001 `"Ahumada"', add
label define geo2_mx_lbl 484008002 `"Aldama"', add
label define geo2_mx_lbl 484008003 `"Allende"', add
label define geo2_mx_lbl 484008004 `"Aquiles Serdán"', add
label define geo2_mx_lbl 484008005 `"Ascensión"', add
label define geo2_mx_lbl 484008006 `"Bachíniva"', add
label define geo2_mx_lbl 484008007 `"Balleza, Batopilas, Guachochi"', add
label define geo2_mx_lbl 484008008 `"Bocoyna"', add
label define geo2_mx_lbl 484008009 `"Buenaventura"', add
label define geo2_mx_lbl 484008010 `"Camargo"', add
label define geo2_mx_lbl 484008011 `"Carichí"', add
label define geo2_mx_lbl 484008012 `"Casas Grandes"', add
label define geo2_mx_lbl 484008013 `"Coronado"', add
label define geo2_mx_lbl 484008014 `"Coyame del Sotol"', add
label define geo2_mx_lbl 484008015 `"La Cruz"', add
label define geo2_mx_lbl 484008016 `"Cuauhtémoc"', add
label define geo2_mx_lbl 484008017 `"Cusihuiriachi"', add
label define geo2_mx_lbl 484008018 `"Chihuahua"', add
label define geo2_mx_lbl 484008019 `"Chínipas"', add
label define geo2_mx_lbl 484008020 `"Delicias"', add
label define geo2_mx_lbl 484008021 `"Dr. Belisario Domínguez"', add
label define geo2_mx_lbl 484008022 `"Galeana"', add
label define geo2_mx_lbl 484008023 `"Santa Isabel"', add
label define geo2_mx_lbl 484008024 `"Gómez Farías"', add
label define geo2_mx_lbl 484008025 `"Gran Morelos"', add
label define geo2_mx_lbl 484008026 `"Guadalupe"', add
label define geo2_mx_lbl 484008027 `"Guadalupe y Calvo"', add
label define geo2_mx_lbl 484008028 `"Guazapares"', add
label define geo2_mx_lbl 484008029 `"Guerrero"', add
label define geo2_mx_lbl 484008030 `"Hidalgo del Parral"', add
label define geo2_mx_lbl 484008031 `"Huejotitán"', add
label define geo2_mx_lbl 484008032 `"Ignacio Zaragoza"', add
label define geo2_mx_lbl 484008033 `"Janos"', add
label define geo2_mx_lbl 484008034 `"Jiménez"', add
label define geo2_mx_lbl 484008035 `"Juárez"', add
label define geo2_mx_lbl 484008036 `"Julimes"', add
label define geo2_mx_lbl 484008037 `"López"', add
label define geo2_mx_lbl 484008038 `"Madera"', add
label define geo2_mx_lbl 484008039 `"Maguarichi"', add
label define geo2_mx_lbl 484008040 `"Manuel Benavides"', add
label define geo2_mx_lbl 484008041 `"Matachí"', add
label define geo2_mx_lbl 484008042 `"Matamoros"', add
label define geo2_mx_lbl 484008043 `"Meoqui"', add
label define geo2_mx_lbl 484008044 `"Morelos"', add
label define geo2_mx_lbl 484008045 `"Moris"', add
label define geo2_mx_lbl 484008046 `"Namiquipa"', add
label define geo2_mx_lbl 484008047 `"Nonoava"', add
label define geo2_mx_lbl 484008048 `"Nuevo Casas Grandes"', add
label define geo2_mx_lbl 484008049 `"Ocampo"', add
label define geo2_mx_lbl 484008050 `"Ojinaga"', add
label define geo2_mx_lbl 484008051 `"Praxedis G. Guerrero"', add
label define geo2_mx_lbl 484008052 `"Riva Palacio"', add
label define geo2_mx_lbl 484008053 `"Rosales"', add
label define geo2_mx_lbl 484008054 `"Rosario"', add
label define geo2_mx_lbl 484008055 `"San Francisco de Borja"', add
label define geo2_mx_lbl 484008056 `"San Francisco de Conchos"', add
label define geo2_mx_lbl 484008057 `"San Francisco del Oro"', add
label define geo2_mx_lbl 484008058 `"Santa Bárbara"', add
label define geo2_mx_lbl 484008059 `"Satevó"', add
label define geo2_mx_lbl 484008060 `"Saucillo"', add
label define geo2_mx_lbl 484008061 `"Temósachic"', add
label define geo2_mx_lbl 484008062 `"El Tule"', add
label define geo2_mx_lbl 484008063 `"Urique"', add
label define geo2_mx_lbl 484008064 `"Uruachi"', add
label define geo2_mx_lbl 484008065 `"Valle de Zaragoza"', add
label define geo2_mx_lbl 484008999 `"Chihuahua, municipality unknown"', add
label define geo2_mx_lbl 484009001 `"Azcapotzalco, Coyoacán, Cuajimalpa de Morelos, Gustavo A. Madero, Iztacalco, Álvaro Obregón, Benito Juárez, Cuauhtémoc, Miguel Hidalgo, Venustiano Carranza"', add
label define geo2_mx_lbl 484009002 `"Iztapalapa, Xochimilco"', add
label define geo2_mx_lbl 484009003 `"La Magdalena Contreras"', add
label define geo2_mx_lbl 484009004 `"Milpa Alta"', add
label define geo2_mx_lbl 484009005 `"Tláhuac"', add
label define geo2_mx_lbl 484009006 `"Tlalpan"', add
label define geo2_mx_lbl 484009999 `"Distrito Federal, municipality unknown"', add
label define geo2_mx_lbl 484010001 `"Canatlán, Nuevo Ideal"', add
label define geo2_mx_lbl 484010002 `"Canelas"', add
label define geo2_mx_lbl 484010003 `"Coneto de Comonfort"', add
label define geo2_mx_lbl 484010004 `"Cuencamé"', add
label define geo2_mx_lbl 484010005 `"Durango"', add
label define geo2_mx_lbl 484010006 `"General Simón Bolívar"', add
label define geo2_mx_lbl 484010007 `"Gómez Palacio"', add
label define geo2_mx_lbl 484010008 `"Guadalupe Victoria"', add
label define geo2_mx_lbl 484010009 `"Guanaceví"', add
label define geo2_mx_lbl 484010010 `"Hidalgo"', add
label define geo2_mx_lbl 484010011 `"Indé"', add
label define geo2_mx_lbl 484010012 `"Lerdo"', add
label define geo2_mx_lbl 484010013 `"Mapimí"', add
label define geo2_mx_lbl 484010014 `"Mezquital"', add
label define geo2_mx_lbl 484010015 `"Nazas"', add
label define geo2_mx_lbl 484010016 `"Nombre de Dios"', add
label define geo2_mx_lbl 484010017 `"Ocampo"', add
label define geo2_mx_lbl 484010018 `"El Oro"', add
label define geo2_mx_lbl 484010019 `"Otáez"', add
label define geo2_mx_lbl 484010020 `"Pánuco de Coronado"', add
label define geo2_mx_lbl 484010021 `"Peñón Blanco"', add
label define geo2_mx_lbl 484010022 `"Poanas"', add
label define geo2_mx_lbl 484010023 `"Pueblo Nuevo"', add
label define geo2_mx_lbl 484010024 `"Rodeo"', add
label define geo2_mx_lbl 484010025 `"San Bernardo"', add
label define geo2_mx_lbl 484010026 `"San Dimas"', add
label define geo2_mx_lbl 484010027 `"San Juan de Guadalupe"', add
label define geo2_mx_lbl 484010028 `"San Juan del Río"', add
label define geo2_mx_lbl 484010029 `"San Luis del Cordero"', add
label define geo2_mx_lbl 484010030 `"San Pedro del Gallo"', add
label define geo2_mx_lbl 484010031 `"Santa Clara"', add
label define geo2_mx_lbl 484010032 `"Santiago Papasquiaro"', add
label define geo2_mx_lbl 484010033 `"Súchil"', add
label define geo2_mx_lbl 484010034 `"Tamazula"', add
label define geo2_mx_lbl 484010035 `"Tepehuanes"', add
label define geo2_mx_lbl 484010036 `"Tlahualilo"', add
label define geo2_mx_lbl 484010037 `"Topia"', add
label define geo2_mx_lbl 484010038 `"Vicente Guerrero"', add
label define geo2_mx_lbl 484010999 `"Durango, municipality unknown"', add
label define geo2_mx_lbl 484011001 `"Abasolo"', add
label define geo2_mx_lbl 484011002 `"Acámbaro"', add
label define geo2_mx_lbl 484011003 `"Allende"', add
label define geo2_mx_lbl 484011004 `"Apaseo el Alto"', add
label define geo2_mx_lbl 484011005 `"Apaseo el Grande"', add
label define geo2_mx_lbl 484011006 `"Atarjea"', add
label define geo2_mx_lbl 484011007 `"Celaya"', add
label define geo2_mx_lbl 484011008 `"Manuel Doblado"', add
label define geo2_mx_lbl 484011009 `"Comonfort"', add
label define geo2_mx_lbl 484011010 `"Coroneo"', add
label define geo2_mx_lbl 484011011 `"Cortazar"', add
label define geo2_mx_lbl 484011012 `"Cuerámaro"', add
label define geo2_mx_lbl 484011013 `"Doctor Mora"', add
label define geo2_mx_lbl 484011014 `"Dolores Hidalgo Cuna de la Independencia Nacional"', add
label define geo2_mx_lbl 484011015 `"Guanajuato"', add
label define geo2_mx_lbl 484011016 `"Huanímaro"', add
label define geo2_mx_lbl 484011017 `"Irapuato"', add
label define geo2_mx_lbl 484011018 `"Jaral del Progreso"', add
label define geo2_mx_lbl 484011019 `"Jerécuaro"', add
label define geo2_mx_lbl 484011020 `"León"', add
label define geo2_mx_lbl 484011021 `"Moroleón"', add
label define geo2_mx_lbl 484011022 `"Ocampo"', add
label define geo2_mx_lbl 484011023 `"Pénjamo"', add
label define geo2_mx_lbl 484011024 `"Pueblo Nuevo"', add
label define geo2_mx_lbl 484011025 `"Purísima del Rincón"', add
label define geo2_mx_lbl 484011026 `"Romita"', add
label define geo2_mx_lbl 484011027 `"Salamanca"', add
label define geo2_mx_lbl 484011028 `"Salvatierra"', add
label define geo2_mx_lbl 484011029 `"San Diego de la Unión"', add
label define geo2_mx_lbl 484011030 `"San Felipe"', add
label define geo2_mx_lbl 484011031 `"San Francisco del Rincón"', add
label define geo2_mx_lbl 484011032 `"San José Iturbide"', add
label define geo2_mx_lbl 484011033 `"San Luis de la Paz"', add
label define geo2_mx_lbl 484011034 `"Santa Catarina"', add
label define geo2_mx_lbl 484011035 `"Santa Cruz de Juventino Rosas"', add
label define geo2_mx_lbl 484011036 `"Santiago Maravatío"', add
label define geo2_mx_lbl 484011037 `"Silao de la Victoria"', add
label define geo2_mx_lbl 484011038 `"Tarandacuao"', add
label define geo2_mx_lbl 484011039 `"Tarimoro"', add
label define geo2_mx_lbl 484011040 `"Tierra Blanca"', add
label define geo2_mx_lbl 484011041 `"Uriangato"', add
label define geo2_mx_lbl 484011042 `"Valle de Santiago"', add
label define geo2_mx_lbl 484011043 `"Victoria"', add
label define geo2_mx_lbl 484011044 `"Villagrán"', add
label define geo2_mx_lbl 484011045 `"Xichú"', add
label define geo2_mx_lbl 484011046 `"Yuriria"', add
label define geo2_mx_lbl 484011999 `"Guanajuato, municipality unknown"', add
label define geo2_mx_lbl 484012001 `"Acapulco de Juárez"', add
label define geo2_mx_lbl 484012002 `"Ahuacuotzingo"', add
label define geo2_mx_lbl 484012003 `"Ajuchitlán del Progreso"', add
label define geo2_mx_lbl 484012004 `"Alcozauca de Guerrero"', add
label define geo2_mx_lbl 484012005 `"Alpoyeca"', add
label define geo2_mx_lbl 484012006 `"Apaxtla"', add
label define geo2_mx_lbl 484012007 `"Arcelia"', add
label define geo2_mx_lbl 484012008 `"Atenango del Río"', add
label define geo2_mx_lbl 484012009 `"Atlamajalcingo del Monte"', add
label define geo2_mx_lbl 484012010 `"Atlixtac"', add
label define geo2_mx_lbl 484012011 `"Atoyac de Álvarez"', add
label define geo2_mx_lbl 484012012 `"Ayutla de los Libres"', add
label define geo2_mx_lbl 484012013 `"Azoyú, Marquelia, Juchitán"', add
label define geo2_mx_lbl 484012014 `"Benito Juárez"', add
label define geo2_mx_lbl 484012015 `"Buenavista de Cuéllar"', add
label define geo2_mx_lbl 484012016 `"Coahuayutla de José María Izazaga"', add
label define geo2_mx_lbl 484012017 `"Cocula"', add
label define geo2_mx_lbl 484012018 `"Copala"', add
label define geo2_mx_lbl 484012019 `"Copalillo"', add
label define geo2_mx_lbl 484012020 `"Copanatoyac"', add
label define geo2_mx_lbl 484012021 `"Coyuca de Benítez"', add
label define geo2_mx_lbl 484012022 `"Coyuca de Catalán"', add
label define geo2_mx_lbl 484012023 `"Cuajinicuilapa"', add
label define geo2_mx_lbl 484012024 `"Cualác"', add
label define geo2_mx_lbl 484012025 `"Cuautepec"', add
label define geo2_mx_lbl 484012026 `"Cuetzala del Progreso"', add
label define geo2_mx_lbl 484012027 `"Cutzamala de Pinzón"', add
label define geo2_mx_lbl 484012028 `"Chilapa de Álvarez, José Joaquín de Herrera"', add
label define geo2_mx_lbl 484012029 `"Chilpancingo de los Bravo"', add
label define geo2_mx_lbl 484012030 `"Florencio Villarreal"', add
label define geo2_mx_lbl 484012031 `"General Canuto A. Neri"', add
label define geo2_mx_lbl 484012032 `"General Heliodoro Castillo"', add
label define geo2_mx_lbl 484012033 `"Huamuxtitlán"', add
label define geo2_mx_lbl 484012034 `"Huitzuco de los Figueroa"', add
label define geo2_mx_lbl 484012035 `"Iguala de la Independencia"', add
label define geo2_mx_lbl 484012036 `"Igualapa"', add
label define geo2_mx_lbl 484012037 `"Ixcateopan de Cuauhtémoc"', add
label define geo2_mx_lbl 484012038 `"Zihuatanejo Azueta, La Union de Isidoro Montes de Oca"', add
label define geo2_mx_lbl 484012039 `"Juan R. Escudero"', add
label define geo2_mx_lbl 484012040 `"Leonardo Bravo"', add
label define geo2_mx_lbl 484012041 `"Malinaltepec, Iliatenco"', add
label define geo2_mx_lbl 484012042 `"Mártir de Cuilapan"', add
label define geo2_mx_lbl 484012043 `"Metlatónoc, Cochoapa el Grande"', add
label define geo2_mx_lbl 484012044 `"Mochitlán"', add
label define geo2_mx_lbl 484012045 `"Olinalá"', add
label define geo2_mx_lbl 484012046 `"Ometepec"', add
label define geo2_mx_lbl 484012047 `"Pedro Ascencio Alquisiras"', add
label define geo2_mx_lbl 484012048 `"Petatlán"', add
label define geo2_mx_lbl 484012049 `"Pilcaya"', add
label define geo2_mx_lbl 484012050 `"Pungarabato"', add
label define geo2_mx_lbl 484012051 `"Quechultenango"', add
label define geo2_mx_lbl 484012052 `"San Luis Acatlán"', add
label define geo2_mx_lbl 484012053 `"San Marcos"', add
label define geo2_mx_lbl 484012054 `"San Miguel Totolapan"', add
label define geo2_mx_lbl 484012055 `"Taxco de Alarcón"', add
label define geo2_mx_lbl 484012056 `"Tecoanapa"', add
label define geo2_mx_lbl 484012057 `"Técpan de Galeana"', add
label define geo2_mx_lbl 484012058 `"Teloloapan"', add
label define geo2_mx_lbl 484012059 `"Tepecoacuilco de Trujano"', add
label define geo2_mx_lbl 484012060 `"Tetipac"', add
label define geo2_mx_lbl 484012061 `"Tixtla de Guerrero"', add
label define geo2_mx_lbl 484012062 `"Tlacoachistlahuaca"', add
label define geo2_mx_lbl 484012063 `"Tlacoapa"', add
label define geo2_mx_lbl 484012064 `"Tlalchapa"', add
label define geo2_mx_lbl 484012065 `"Tlalixtaquilla de Maldonado"', add
label define geo2_mx_lbl 484012066 `"Tlapa de Comonfort"', add
label define geo2_mx_lbl 484012067 `"Tlapehuala"', add
label define geo2_mx_lbl 484012068 `"Xalpatláhuac"', add
label define geo2_mx_lbl 484012069 `"Xochihuehuetlán"', add
label define geo2_mx_lbl 484012070 `"Xochistlahuaca"', add
label define geo2_mx_lbl 484012071 `"Zapotitlán Tablas, Acatepec"', add
label define geo2_mx_lbl 484012072 `"Zirándaro"', add
label define geo2_mx_lbl 484012073 `"Zitlala"', add
label define geo2_mx_lbl 484012074 `"Eduardo Neri"', add
label define geo2_mx_lbl 484012999 `"Guerrero, municipality unknown"', add
label define geo2_mx_lbl 484013001 `"Acatlán"', add
label define geo2_mx_lbl 484013002 `"Acaxochitlán"', add
label define geo2_mx_lbl 484013003 `"Actopan"', add
label define geo2_mx_lbl 484013004 `"Agua Blanca de Iturbide"', add
label define geo2_mx_lbl 484013005 `"Ajacuba"', add
label define geo2_mx_lbl 484013006 `"Alfajayucan"', add
label define geo2_mx_lbl 484013007 `"Almoloya"', add
label define geo2_mx_lbl 484013008 `"Apan"', add
label define geo2_mx_lbl 484013009 `"El Arenal"', add
label define geo2_mx_lbl 484013010 `"Atitalaquia"', add
label define geo2_mx_lbl 484013011 `"Atlapexco"', add
label define geo2_mx_lbl 484013012 `"Atotonilco el Grande"', add
label define geo2_mx_lbl 484013013 `"Atotonilco de Tula"', add
label define geo2_mx_lbl 484013014 `"Calnali"', add
label define geo2_mx_lbl 484013015 `"Cardonal"', add
label define geo2_mx_lbl 484013016 `"Cuautepec de Hinojosa"', add
label define geo2_mx_lbl 484013017 `"Chapantongo"', add
label define geo2_mx_lbl 484013018 `"Chapulhuacán"', add
label define geo2_mx_lbl 484013019 `"Chilcuautla, Progreso de Obregón"', add
label define geo2_mx_lbl 484013020 `"Eloxochitlán"', add
label define geo2_mx_lbl 484013021 `"Emiliano Zapata"', add
label define geo2_mx_lbl 484013022 `"Epazoyucan"', add
label define geo2_mx_lbl 484013023 `"Francisco I. Madero"', add
label define geo2_mx_lbl 484013024 `"Huasca de Ocampo"', add
label define geo2_mx_lbl 484013025 `"Huautla"', add
label define geo2_mx_lbl 484013026 `"Huazalingo"', add
label define geo2_mx_lbl 484013027 `"Huehuetla"', add
label define geo2_mx_lbl 484013028 `"Huejutla de Reyes"', add
label define geo2_mx_lbl 484013029 `"Huichapan"', add
label define geo2_mx_lbl 484013030 `"Ixmiquilpan"', add
label define geo2_mx_lbl 484013031 `"Jacala de Ledezma"', add
label define geo2_mx_lbl 484013032 `"Jaltocán"', add
label define geo2_mx_lbl 484013033 `"Juárez Hidalgo"', add
label define geo2_mx_lbl 484013034 `"Lolotla"', add
label define geo2_mx_lbl 484013035 `"Metepec"', add
label define geo2_mx_lbl 484013036 `"San Agustín Metzquititlán"', add
label define geo2_mx_lbl 484013037 `"Metztitlán"', add
label define geo2_mx_lbl 484013038 `"Mineral del Chico"', add
label define geo2_mx_lbl 484013039 `"Mineral del Monte"', add
label define geo2_mx_lbl 484013040 `"La Misión"', add
label define geo2_mx_lbl 484013041 `"Mixquiahuala de Juárez"', add
label define geo2_mx_lbl 484013042 `"Molango de Escamilla"', add
label define geo2_mx_lbl 484013043 `"Nicolás Flores"', add
label define geo2_mx_lbl 484013044 `"Nopala de Villagrán"', add
label define geo2_mx_lbl 484013045 `"Omitlán de Juárez"', add
label define geo2_mx_lbl 484013046 `"San Felipe Orizatlan"', add
label define geo2_mx_lbl 484013047 `"Pacula"', add
label define geo2_mx_lbl 484013048 `"Pachuca de Soto"', add
label define geo2_mx_lbl 484013049 `"Pisaflores"', add
label define geo2_mx_lbl 484013050 `"Mineral de La Reforma"', add
label define geo2_mx_lbl 484013051 `"San Agustín Tlaxiaca"', add
label define geo2_mx_lbl 484013052 `"San Bartolo Tutotepec"', add
label define geo2_mx_lbl 484013053 `"San Salvador"', add
label define geo2_mx_lbl 484013054 `"Santiago de Anaya"', add
label define geo2_mx_lbl 484013055 `"Santiago Tulantepec de Lugo Guerrero"', add
label define geo2_mx_lbl 484013056 `"Singuilucan"', add
label define geo2_mx_lbl 484013057 `"Tasquillo"', add
label define geo2_mx_lbl 484013058 `"Tecozautla"', add
label define geo2_mx_lbl 484013059 `"Tenango de Doria"', add
label define geo2_mx_lbl 484013060 `"Tepeapulco"', add
label define geo2_mx_lbl 484013061 `"Tepehuacán de Guerrero"', add
label define geo2_mx_lbl 484013062 `"Tepeji del Río de Ocampo"', add
label define geo2_mx_lbl 484013063 `"Tepetitlán"', add
label define geo2_mx_lbl 484013064 `"Tetepango, Tlahuelilpan"', add
label define geo2_mx_lbl 484013065 `"Villa de Tezontepec"', add
label define geo2_mx_lbl 484013066 `"Tezontepec de Aldama"', add
label define geo2_mx_lbl 484013067 `"Tianguistengo"', add
label define geo2_mx_lbl 484013068 `"Tizayuca"', add
label define geo2_mx_lbl 484013069 `"Tlahuiltepa"', add
label define geo2_mx_lbl 484013070 `"Tlanalapa"', add
label define geo2_mx_lbl 484013071 `"Tlanchinol"', add
label define geo2_mx_lbl 484013072 `"Tlaxcoapan"', add
label define geo2_mx_lbl 484013073 `"Tolcayuca"', add
label define geo2_mx_lbl 484013074 `"Tula de Allende"', add
label define geo2_mx_lbl 484013075 `"Tulancingo de Bravo"', add
label define geo2_mx_lbl 484013076 `"Xochiatipan"', add
label define geo2_mx_lbl 484013077 `"Xochicoatlán"', add
label define geo2_mx_lbl 484013078 `"Yahualica"', add
label define geo2_mx_lbl 484013079 `"Zacualtipán de Ángeles"', add
label define geo2_mx_lbl 484013080 `"Zapotlán de Juárez"', add
label define geo2_mx_lbl 484013081 `"Zempoala"', add
label define geo2_mx_lbl 484013082 `"Zimapán"', add
label define geo2_mx_lbl 484013999 `"Hidalgo, municipality unknown"', add
label define geo2_mx_lbl 484014001 `"Acatic"', add
label define geo2_mx_lbl 484014002 `"Acatlán de Juárez"', add
label define geo2_mx_lbl 484014003 `"Ahualulco de Mercado"', add
label define geo2_mx_lbl 484014004 `"Amacueca"', add
label define geo2_mx_lbl 484014005 `"Amatitán"', add
label define geo2_mx_lbl 484014006 `"Ameca"', add
label define geo2_mx_lbl 484014007 `"San Juanito de Escobedo"', add
label define geo2_mx_lbl 484014008 `"Arandas, San Ignacio Cerro Gordo"', add
label define geo2_mx_lbl 484014009 `"El Arenal"', add
label define geo2_mx_lbl 484014010 `"Atemajac de Brizuela"', add
label define geo2_mx_lbl 484014011 `"Atengo"', add
label define geo2_mx_lbl 484014012 `"Atenguillo"', add
label define geo2_mx_lbl 484014013 `"Atotonilco el Alto"', add
label define geo2_mx_lbl 484014014 `"Atoyac"', add
label define geo2_mx_lbl 484014015 `"Autlán de Navarro"', add
label define geo2_mx_lbl 484014016 `"Ayotlán"', add
label define geo2_mx_lbl 484014017 `"Ayutla"', add
label define geo2_mx_lbl 484014018 `"La Barca"', add
label define geo2_mx_lbl 484014019 `"Bolaños"', add
label define geo2_mx_lbl 484014020 `"Cabo Corrientes"', add
label define geo2_mx_lbl 484014021 `"Casimiro Castillo"', add
label define geo2_mx_lbl 484014022 `"Cihuatlán"', add
label define geo2_mx_lbl 484014023 `"Zapotlán el Grande"', add
label define geo2_mx_lbl 484014024 `"Cocula"', add
label define geo2_mx_lbl 484014025 `"Colotlán"', add
label define geo2_mx_lbl 484014026 `"Concepción de Buenos Aires"', add
label define geo2_mx_lbl 484014027 `"Cuautitlán de García Barragán"', add
label define geo2_mx_lbl 484014028 `"Cuautla"', add
label define geo2_mx_lbl 484014029 `"Cuquío"', add
label define geo2_mx_lbl 484014030 `"Chapala"', add
label define geo2_mx_lbl 484014031 `"Chimaltitán"', add
label define geo2_mx_lbl 484014032 `"Chiquilistlán"', add
label define geo2_mx_lbl 484014033 `"Degollado"', add
label define geo2_mx_lbl 484014034 `"Ejutla"', add
label define geo2_mx_lbl 484014035 `"Encarnación de Díaz"', add
label define geo2_mx_lbl 484014036 `"Etzatlán"', add
label define geo2_mx_lbl 484014037 `"El Grullo"', add
label define geo2_mx_lbl 484014038 `"Guachinango"', add
label define geo2_mx_lbl 484014039 `"Guadalajara"', add
label define geo2_mx_lbl 484014040 `"Hostotipaquillo"', add
label define geo2_mx_lbl 484014041 `"Huejúcar"', add
label define geo2_mx_lbl 484014042 `"Huejuquilla el Alto"', add
label define geo2_mx_lbl 484014043 `"La Huerta"', add
label define geo2_mx_lbl 484014044 `"Ixtlahuacán de los Membrillos"', add
label define geo2_mx_lbl 484014045 `"Ixtlahuacán del Río"', add
label define geo2_mx_lbl 484014046 `"Jalostotitlán"', add
label define geo2_mx_lbl 484014047 `"Jamay"', add
label define geo2_mx_lbl 484014048 `"Jesús María"', add
label define geo2_mx_lbl 484014049 `"Jilotlán de los Dolores"', add
label define geo2_mx_lbl 484014050 `"Jocotepec"', add
label define geo2_mx_lbl 484014051 `"Juanacatlán"', add
label define geo2_mx_lbl 484014052 `"Juchitlán"', add
label define geo2_mx_lbl 484014053 `"Lagos de Moreno"', add
label define geo2_mx_lbl 484014054 `"El Limón"', add
label define geo2_mx_lbl 484014055 `"Magdalena"', add
label define geo2_mx_lbl 484014056 `"Santa Maria del Oro"', add
label define geo2_mx_lbl 484014057 `"La Manzanilla de la Paz"', add
label define geo2_mx_lbl 484014058 `"Mascota"', add
label define geo2_mx_lbl 484014059 `"Mazamitla"', add
label define geo2_mx_lbl 484014060 `"Mexticacán"', add
label define geo2_mx_lbl 484014061 `"Mezquitic"', add
label define geo2_mx_lbl 484014062 `"Mixtlán"', add
label define geo2_mx_lbl 484014063 `"Ocotlán"', add
label define geo2_mx_lbl 484014064 `"Ojuelos de Jalisco"', add
label define geo2_mx_lbl 484014065 `"Pihuamo"', add
label define geo2_mx_lbl 484014066 `"Poncitlán"', add
label define geo2_mx_lbl 484014067 `"Puerto Vallarta"', add
label define geo2_mx_lbl 484014068 `"Villa Purificación"', add
label define geo2_mx_lbl 484014069 `"Quitupan"', add
label define geo2_mx_lbl 484014070 `"El Salto"', add
label define geo2_mx_lbl 484014071 `"San Cristóbal de la Barranca"', add
label define geo2_mx_lbl 484014072 `"San Diego de Alejandría"', add
label define geo2_mx_lbl 484014073 `"San Juan de los Lagos"', add
label define geo2_mx_lbl 484014074 `"San Julián"', add
label define geo2_mx_lbl 484014075 `"San Marcos"', add
label define geo2_mx_lbl 484014076 `"San Martín de Bolaños"', add
label define geo2_mx_lbl 484014077 `"San Martin de Hidalgo"', add
label define geo2_mx_lbl 484014078 `"San Miguel el Alto"', add
label define geo2_mx_lbl 484014079 `"Gómez Farías"', add
label define geo2_mx_lbl 484014080 `"San Sebastián del Oeste"', add
label define geo2_mx_lbl 484014081 `"Santa María de los Ángeles"', add
label define geo2_mx_lbl 484014082 `"Sayula"', add
label define geo2_mx_lbl 484014083 `"Tala"', add
label define geo2_mx_lbl 484014084 `"Talpa de Allende"', add
label define geo2_mx_lbl 484014085 `"Tamazula de Gordiano"', add
label define geo2_mx_lbl 484014086 `"Tapalpa"', add
label define geo2_mx_lbl 484014087 `"Tecalitlán"', add
label define geo2_mx_lbl 484014088 `"Tecolotlán"', add
label define geo2_mx_lbl 484014089 `"Techaluta de Montenegro"', add
label define geo2_mx_lbl 484014090 `"Tenamaxtlán"', add
label define geo2_mx_lbl 484014091 `"Teocaltiche"', add
label define geo2_mx_lbl 484014092 `"Teocuitatlán de Corona"', add
label define geo2_mx_lbl 484014093 `"Tepatitlán de Morelos"', add
label define geo2_mx_lbl 484014094 `"Tequila"', add
label define geo2_mx_lbl 484014095 `"Teuchitlán"', add
label define geo2_mx_lbl 484014096 `"Tizapán el Alto"', add
label define geo2_mx_lbl 484014097 `"Tlajomulco de Zúñiga"', add
label define geo2_mx_lbl 484014098 `"San Pedro Tlaquepaque"', add
label define geo2_mx_lbl 484014099 `"Tolimán"', add
label define geo2_mx_lbl 484014100 `"Tomatlán"', add
label define geo2_mx_lbl 484014101 `"Tonalá"', add
label define geo2_mx_lbl 484014102 `"Tonaya"', add
label define geo2_mx_lbl 484014103 `"Tonila"', add
label define geo2_mx_lbl 484014104 `"Totatiche"', add
label define geo2_mx_lbl 484014105 `"Tototlán"', add
label define geo2_mx_lbl 484014106 `"Tuxcacuesco"', add
label define geo2_mx_lbl 484014107 `"Tuxcueca"', add
label define geo2_mx_lbl 484014108 `"Tuxpan"', add
label define geo2_mx_lbl 484014109 `"Unión de San Antonio"', add
label define geo2_mx_lbl 484014110 `"Unión de Tula"', add
label define geo2_mx_lbl 484014111 `"Valle de Guadalupe"', add
label define geo2_mx_lbl 484014112 `"Valle de Juárez"', add
label define geo2_mx_lbl 484014113 `"San Gabriel"', add
label define geo2_mx_lbl 484014114 `"Villa Corona"', add
label define geo2_mx_lbl 484014115 `"Villa Guerrero"', add
label define geo2_mx_lbl 484014116 `"Villa Hidalgo"', add
label define geo2_mx_lbl 484014117 `"Cañadas de Obregón"', add
label define geo2_mx_lbl 484014118 `"Yahualica de González Gallo"', add
label define geo2_mx_lbl 484014119 `"Zacoalco de Torres"', add
label define geo2_mx_lbl 484014120 `"Zapopan"', add
label define geo2_mx_lbl 484014121 `"Zapotiltic"', add
label define geo2_mx_lbl 484014122 `"Zapotitlán de Vadillo"', add
label define geo2_mx_lbl 484014123 `"Zapotlán del Rey"', add
label define geo2_mx_lbl 484014124 `"Zapotlanejo"', add
label define geo2_mx_lbl 484014999 `"Jalisco, municipality unknown"', add
label define geo2_mx_lbl 484015001 `"Acambay de Ruíz Castañeda"', add
label define geo2_mx_lbl 484015002 `"Acolman"', add
label define geo2_mx_lbl 484015003 `"Aculco"', add
label define geo2_mx_lbl 484015004 `"Almoloya de Alquisiras"', add
label define geo2_mx_lbl 484015005 `"Almoloya de Juárez"', add
label define geo2_mx_lbl 484015006 `"Almoloya del Rio"', add
label define geo2_mx_lbl 484015007 `"Amanalco"', add
label define geo2_mx_lbl 484015008 `"Amatepec"', add
label define geo2_mx_lbl 484015009 `"Amecameca"', add
label define geo2_mx_lbl 484015010 `"Apaxco"', add
label define geo2_mx_lbl 484015011 `"Atenco, Chimalhuacán, Ecatepec de Morelos, Nezahualcóyotl, Texcoco, Tlalnepantla de Baz"', add
label define geo2_mx_lbl 484015012 `"Atizapán"', add
label define geo2_mx_lbl 484015013 `"Atizapán de Zaragoza"', add
label define geo2_mx_lbl 484015014 `"Atlacomulco"', add
label define geo2_mx_lbl 484015015 `"Atlautla"', add
label define geo2_mx_lbl 484015016 `"Axapusco"', add
label define geo2_mx_lbl 484015017 `"Ayapango"', add
label define geo2_mx_lbl 484015018 `"Calimaya"', add
label define geo2_mx_lbl 484015019 `"Capulhuac"', add
label define geo2_mx_lbl 484015020 `"Coacalco de Berriozábal"', add
label define geo2_mx_lbl 484015021 `"Coatepec Harinas"', add
label define geo2_mx_lbl 484015022 `"Cocotitlán"', add
label define geo2_mx_lbl 484015023 `"Coyotepec"', add
label define geo2_mx_lbl 484015024 `"Cuautitlán, Tepotzotlán, Tultitlán, Cuautitlán Izcalli"', add
label define geo2_mx_lbl 484015025 `"Chalco, Valle de Chalco Solidaridad"', add
label define geo2_mx_lbl 484015026 `"Chapa de Mota"', add
label define geo2_mx_lbl 484015027 `"Chapultepec"', add
label define geo2_mx_lbl 484015028 `"Chiautla"', add
label define geo2_mx_lbl 484015029 `"Chicoloapan"', add
label define geo2_mx_lbl 484015030 `"Chiconcuac"', add
label define geo2_mx_lbl 484015031 `"Donato Guerra"', add
label define geo2_mx_lbl 484015032 `"Ecatzingo"', add
label define geo2_mx_lbl 484015033 `"Huehuetoca"', add
label define geo2_mx_lbl 484015034 `"Hueypoxtla"', add
label define geo2_mx_lbl 484015035 `"Huixquilucan"', add
label define geo2_mx_lbl 484015036 `"Isidro Fabela"', add
label define geo2_mx_lbl 484015037 `"Ixtapaluca"', add
label define geo2_mx_lbl 484015038 `"Ixtapan de la Sal"', add
label define geo2_mx_lbl 484015039 `"Ixtapan del Oro"', add
label define geo2_mx_lbl 484015040 `"Ixtlahuaca"', add
label define geo2_mx_lbl 484015041 `"Xalatlaco"', add
label define geo2_mx_lbl 484015042 `"Jaltenco, Tonanitla"', add
label define geo2_mx_lbl 484015043 `"Jilotepec"', add
label define geo2_mx_lbl 484015044 `"Jilotzingo"', add
label define geo2_mx_lbl 484015045 `"Jiquipilco"', add
label define geo2_mx_lbl 484015046 `"Jocotitlán"', add
label define geo2_mx_lbl 484015047 `"Joquicingo"', add
label define geo2_mx_lbl 484015048 `"Juchitepec"', add
label define geo2_mx_lbl 484015049 `"Lerma"', add
label define geo2_mx_lbl 484015050 `"Malinalco"', add
label define geo2_mx_lbl 484015051 `"Melchor Ocampo"', add
label define geo2_mx_lbl 484015052 `"Metepec"', add
label define geo2_mx_lbl 484015053 `"Mexicaltzingo"', add
label define geo2_mx_lbl 484015054 `"Morelos"', add
label define geo2_mx_lbl 484015055 `"Naucalpan de Juárez"', add
label define geo2_mx_lbl 484015056 `"Nextlalpan"', add
label define geo2_mx_lbl 484015057 `"Nicolás Romero"', add
label define geo2_mx_lbl 484015058 `"Nopaltepec"', add
label define geo2_mx_lbl 484015059 `"Ocoyoacac"', add
label define geo2_mx_lbl 484015060 `"Ocuilan"', add
label define geo2_mx_lbl 484015061 `"El Oro"', add
label define geo2_mx_lbl 484015062 `"Otumba"', add
label define geo2_mx_lbl 484015063 `"Otzoloapan"', add
label define geo2_mx_lbl 484015064 `"Otzolotepec"', add
label define geo2_mx_lbl 484015065 `"Ozumba"', add
label define geo2_mx_lbl 484015066 `"Papalotla"', add
label define geo2_mx_lbl 484015067 `"La Paz"', add
label define geo2_mx_lbl 484015068 `"Polotitlán"', add
label define geo2_mx_lbl 484015069 `"Rayón"', add
label define geo2_mx_lbl 484015070 `"San Antonio la Isla"', add
label define geo2_mx_lbl 484015071 `"San Felipe del Progreso, San José del Rincón"', add
label define geo2_mx_lbl 484015072 `"San Martín de las Pirámides"', add
label define geo2_mx_lbl 484015073 `"San Mateo Atenco"', add
label define geo2_mx_lbl 484015074 `"San Simón de Guerrero"', add
label define geo2_mx_lbl 484015075 `"Santo Tomás"', add
label define geo2_mx_lbl 484015076 `"Soyaniquilpan de Juárez"', add
label define geo2_mx_lbl 484015077 `"Sultepec"', add
label define geo2_mx_lbl 484015078 `"Tecámac"', add
label define geo2_mx_lbl 484015079 `"Tejupilco, Luvianos"', add
label define geo2_mx_lbl 484015080 `"Temamatla"', add
label define geo2_mx_lbl 484015081 `"Temascalapa"', add
label define geo2_mx_lbl 484015082 `"Temascalcingo"', add
label define geo2_mx_lbl 484015083 `"Temascaltepec"', add
label define geo2_mx_lbl 484015084 `"Temoaya"', add
label define geo2_mx_lbl 484015085 `"Tenancingo"', add
label define geo2_mx_lbl 484015086 `"Tenango del Aire"', add
label define geo2_mx_lbl 484015087 `"Tenango del Valle"', add
label define geo2_mx_lbl 484015088 `"Teoloyucan"', add
label define geo2_mx_lbl 484015089 `"Teotihuacán"', add
label define geo2_mx_lbl 484015090 `"Tepetlaoxtoc"', add
label define geo2_mx_lbl 484015091 `"Tepetlixpa"', add
label define geo2_mx_lbl 484015092 `"Tequixquiac"', add
label define geo2_mx_lbl 484015093 `"Texcaltitlán"', add
label define geo2_mx_lbl 484015094 `"Texcalyacac"', add
label define geo2_mx_lbl 484015095 `"Tezoyuca"', add
label define geo2_mx_lbl 484015096 `"Tianguistenco"', add
label define geo2_mx_lbl 484015097 `"Timilpan"', add
label define geo2_mx_lbl 484015098 `"Tlalmanalco"', add
label define geo2_mx_lbl 484015099 `"Tlatlaya"', add
label define geo2_mx_lbl 484015100 `"Toluca"', add
label define geo2_mx_lbl 484015101 `"Tonatico"', add
label define geo2_mx_lbl 484015102 `"Tultepec"', add
label define geo2_mx_lbl 484015103 `"Valle de Bravo"', add
label define geo2_mx_lbl 484015104 `"Villa de Allende"', add
label define geo2_mx_lbl 484015105 `"Villa del Carbón"', add
label define geo2_mx_lbl 484015106 `"Villa Guerrero"', add
label define geo2_mx_lbl 484015107 `"Villa Victoria"', add
label define geo2_mx_lbl 484015108 `"Xonacatlán"', add
label define geo2_mx_lbl 484015109 `"Zacazonapan"', add
label define geo2_mx_lbl 484015110 `"Zacualpan"', add
label define geo2_mx_lbl 484015111 `"Zinacantepec"', add
label define geo2_mx_lbl 484015112 `"Zumpahuacan"', add
label define geo2_mx_lbl 484015113 `"Zumpango"', add
label define geo2_mx_lbl 484015999 `"Mexico, municipality unknown"', add
label define geo2_mx_lbl 484016001 `"Acuitzio"', add
label define geo2_mx_lbl 484016002 `"Aguililla"', add
label define geo2_mx_lbl 484016003 `"Álvaro Obregón"', add
label define geo2_mx_lbl 484016004 `"Angamacutiro, Puruándiro, José Sixto Verduzco"', add
label define geo2_mx_lbl 484016005 `"Angangueo"', add
label define geo2_mx_lbl 484016006 `"Apatzingán"', add
label define geo2_mx_lbl 484016007 `"Aporo"', add
label define geo2_mx_lbl 484016008 `"Aquila"', add
label define geo2_mx_lbl 484016009 `"Ario"', add
label define geo2_mx_lbl 484016010 `"Arteaga"', add
label define geo2_mx_lbl 484016011 `"Briseñas"', add
label define geo2_mx_lbl 484016012 `"Buenavista"', add
label define geo2_mx_lbl 484016013 `"Carácuaro"', add
label define geo2_mx_lbl 484016014 `"Coahuayana"', add
label define geo2_mx_lbl 484016015 `"Coalcomán de Vázquez Pallares"', add
label define geo2_mx_lbl 484016016 `"Coeneo"', add
label define geo2_mx_lbl 484016017 `"Contepec, Epitacio Huerta"', add
label define geo2_mx_lbl 484016018 `"Copándaro"', add
label define geo2_mx_lbl 484016019 `"Cotija"', add
label define geo2_mx_lbl 484016020 `"Cuitzeo"', add
label define geo2_mx_lbl 484016021 `"Charapan"', add
label define geo2_mx_lbl 484016022 `"Charo"', add
label define geo2_mx_lbl 484016023 `"Chavinda"', add
label define geo2_mx_lbl 484016024 `"Cherán"', add
label define geo2_mx_lbl 484016025 `"Chilchota"', add
label define geo2_mx_lbl 484016026 `"Chinicuila"', add
label define geo2_mx_lbl 484016027 `"Chucándiro"', add
label define geo2_mx_lbl 484016028 `"Churintzio"', add
label define geo2_mx_lbl 484016029 `"Churumuco"', add
label define geo2_mx_lbl 484016030 `"Ecuandureo"', add
label define geo2_mx_lbl 484016031 `"Erongarícuaro"', add
label define geo2_mx_lbl 484016032 `"Gabriel Zamora"', add
label define geo2_mx_lbl 484016033 `"Hidalgo"', add
label define geo2_mx_lbl 484016034 `"La Huacana"', add
label define geo2_mx_lbl 484016035 `"Huandacareo"', add
label define geo2_mx_lbl 484016036 `"Huaniqueo"', add
label define geo2_mx_lbl 484016037 `"Huetamo"', add
label define geo2_mx_lbl 484016038 `"Huiramba"', add
label define geo2_mx_lbl 484016039 `"Indaparapeo"', add
label define geo2_mx_lbl 484016040 `"Irimbo"', add
label define geo2_mx_lbl 484016041 `"Ixtlán"', add
label define geo2_mx_lbl 484016042 `"Jacona"', add
label define geo2_mx_lbl 484016043 `"Jiménez"', add
label define geo2_mx_lbl 484016044 `"Jiquilpan, Marcos Castellanos"', add
label define geo2_mx_lbl 484016045 `"Juárez"', add
label define geo2_mx_lbl 484016046 `"Jungapeo"', add
label define geo2_mx_lbl 484016047 `"Lagunillas"', add
label define geo2_mx_lbl 484016048 `"Madero"', add
label define geo2_mx_lbl 484016049 `"Maravatío"', add
label define geo2_mx_lbl 484016050 `"Lázaro Cárdenas"', add
label define geo2_mx_lbl 484016051 `"Morelia"', add
label define geo2_mx_lbl 484016052 `"Morelos"', add
label define geo2_mx_lbl 484016053 `"Múgica"', add
label define geo2_mx_lbl 484016054 `"Nahuatzen"', add
label define geo2_mx_lbl 484016055 `"Nocupétaro"', add
label define geo2_mx_lbl 484016056 `"Nuevo Parangaricutiro"', add
label define geo2_mx_lbl 484016057 `"Nuevo Urecho"', add
label define geo2_mx_lbl 484016058 `"Numarán"', add
label define geo2_mx_lbl 484016059 `"Ocampo"', add
label define geo2_mx_lbl 484016060 `"Pajacuarán"', add
label define geo2_mx_lbl 484016061 `"Panindícuaro"', add
label define geo2_mx_lbl 484016062 `"Parácuaro"', add
label define geo2_mx_lbl 484016063 `"Paracho"', add
label define geo2_mx_lbl 484016064 `"Pátzcuaro"', add
label define geo2_mx_lbl 484016065 `"Penjamillo"', add
label define geo2_mx_lbl 484016066 `"Peribán"', add
label define geo2_mx_lbl 484016067 `"La Piedad"', add
label define geo2_mx_lbl 484016068 `"Purépero"', add
label define geo2_mx_lbl 484016069 `"Queréndaro"', add
label define geo2_mx_lbl 484016070 `"Quiroga"', add
label define geo2_mx_lbl 484016071 `"Cojumatlán de Régules"', add
label define geo2_mx_lbl 484016072 `"Los Reyes"', add
label define geo2_mx_lbl 484016073 `"Sahuayo"', add
label define geo2_mx_lbl 484016074 `"San Lucas"', add
label define geo2_mx_lbl 484016075 `"Santa Ana Maya"', add
label define geo2_mx_lbl 484016076 `"Salvador Escalante"', add
label define geo2_mx_lbl 484016077 `"Senguio"', add
label define geo2_mx_lbl 484016078 `"Susupuato"', add
label define geo2_mx_lbl 484016079 `"Tacámbaro"', add
label define geo2_mx_lbl 484016080 `"Tancítaro"', add
label define geo2_mx_lbl 484016081 `"Tangamandapio"', add
label define geo2_mx_lbl 484016082 `"Tangancícuaro"', add
label define geo2_mx_lbl 484016083 `"Tanhuato"', add
label define geo2_mx_lbl 484016084 `"Taretan"', add
label define geo2_mx_lbl 484016085 `"Tarimbaro"', add
label define geo2_mx_lbl 484016086 `"Tepalcatepec"', add
label define geo2_mx_lbl 484016087 `"Tingambato"', add
label define geo2_mx_lbl 484016088 `"Tingüindín"', add
label define geo2_mx_lbl 484016089 `"Tiquicheo de Nicolás Romero"', add
label define geo2_mx_lbl 484016090 `"Tlalpujahua"', add
label define geo2_mx_lbl 484016091 `"Tlazazalca"', add
label define geo2_mx_lbl 484016092 `"Tocumbo"', add
label define geo2_mx_lbl 484016093 `"Tumbiscatío"', add
label define geo2_mx_lbl 484016094 `"Turicato"', add
label define geo2_mx_lbl 484016095 `"Tuxpan"', add
label define geo2_mx_lbl 484016096 `"Tuzantla"', add
label define geo2_mx_lbl 484016097 `"Tzintzuntzan"', add
label define geo2_mx_lbl 484016098 `"Tzitzio"', add
label define geo2_mx_lbl 484016099 `"Uruapan"', add
label define geo2_mx_lbl 484016100 `"Venustiano Carranza"', add
label define geo2_mx_lbl 484016101 `"Villamar"', add
label define geo2_mx_lbl 484016102 `"Vista Hermosa"', add
label define geo2_mx_lbl 484016103 `"Yurécuaro"', add
label define geo2_mx_lbl 484016104 `"Zacapu"', add
label define geo2_mx_lbl 484016105 `"Zamora"', add
label define geo2_mx_lbl 484016106 `"Zináparo"', add
label define geo2_mx_lbl 484016107 `"Zinapécuaro"', add
label define geo2_mx_lbl 484016108 `"Ziracuaretiro"', add
label define geo2_mx_lbl 484016109 `"Zitácuaro"', add
label define geo2_mx_lbl 484016999 `"Michaocan, municipality unknown"', add
label define geo2_mx_lbl 484017001 `"Amacuzac"', add
label define geo2_mx_lbl 484017002 `"Atlatlahucan"', add
label define geo2_mx_lbl 484017003 `"Axochiapan"', add
label define geo2_mx_lbl 484017004 `"Ayala"', add
label define geo2_mx_lbl 484017005 `"Coatlán del Río"', add
label define geo2_mx_lbl 484017006 `"Cuautla"', add
label define geo2_mx_lbl 484017007 `"Cuernavaca"', add
label define geo2_mx_lbl 484017008 `"Emiliano Zapata"', add
label define geo2_mx_lbl 484017009 `"Huitzilac"', add
label define geo2_mx_lbl 484017010 `"Jantetelco"', add
label define geo2_mx_lbl 484017011 `"Jiutepec"', add
label define geo2_mx_lbl 484017012 `"Jojutla"', add
label define geo2_mx_lbl 484017013 `"Jonacatepec"', add
label define geo2_mx_lbl 484017014 `"Mazatepec"', add
label define geo2_mx_lbl 484017015 `"Miacatlán, Coatetelco"', add
label define geo2_mx_lbl 484017016 `"Ocuituco"', add
label define geo2_mx_lbl 484017017 `"Puente de Ixtla, Xoxocotla"', add
label define geo2_mx_lbl 484017018 `"Temixco"', add
label define geo2_mx_lbl 484017019 `"Tepalcingo"', add
label define geo2_mx_lbl 484017020 `"Tepoztlán"', add
label define geo2_mx_lbl 484017021 `"Tetecala"', add
label define geo2_mx_lbl 484017022 `"Tetela del Volcán, Hueyapan"', add
label define geo2_mx_lbl 484017023 `"Tlalnepantla"', add
label define geo2_mx_lbl 484017024 `"Tlaltizapán de Zapata"', add
label define geo2_mx_lbl 484017025 `"Tlaquiltenango"', add
label define geo2_mx_lbl 484017026 `"Tlayacapan"', add
label define geo2_mx_lbl 484017027 `"Totolapan"', add
label define geo2_mx_lbl 484017028 `"Xochitepec"', add
label define geo2_mx_lbl 484017029 `"Yautepec"', add
label define geo2_mx_lbl 484017030 `"Yecapixtla"', add
label define geo2_mx_lbl 484017031 `"Zacatepec de Hidalgo"', add
label define geo2_mx_lbl 484017032 `"Zacualpan de Amilpas, Temoac"', add
label define geo2_mx_lbl 484017999 `"Morelos, municipality unknown"', add
label define geo2_mx_lbl 484018001 `"Acaponeta"', add
label define geo2_mx_lbl 484018002 `"Ahuacatlán"', add
label define geo2_mx_lbl 484018003 `"Amatlán de Cañas"', add
label define geo2_mx_lbl 484018004 `"Compostela, Bahía de Banderas"', add
label define geo2_mx_lbl 484018005 `"Huajicori"', add
label define geo2_mx_lbl 484018006 `"Ixtlán del Río"', add
label define geo2_mx_lbl 484018007 `"Jala"', add
label define geo2_mx_lbl 484018008 `"Xalisco"', add
label define geo2_mx_lbl 484018009 `"Del Nayar"', add
label define geo2_mx_lbl 484018010 `"Rosamorada"', add
label define geo2_mx_lbl 484018011 `"Ruíz"', add
label define geo2_mx_lbl 484018012 `"San Blas"', add
label define geo2_mx_lbl 484018013 `"San Pedro Lagunillas"', add
label define geo2_mx_lbl 484018014 `"Santa María del Oro"', add
label define geo2_mx_lbl 484018015 `"Santiago Ixcuintla"', add
label define geo2_mx_lbl 484018016 `"Tecuala"', add
label define geo2_mx_lbl 484018017 `"Tepic"', add
label define geo2_mx_lbl 484018018 `"Tuxpan"', add
label define geo2_mx_lbl 484018019 `"La Yesca"', add
label define geo2_mx_lbl 484019001 `"Abasolo"', add
label define geo2_mx_lbl 484019002 `"Agualeguas"', add
label define geo2_mx_lbl 484019003 `"Los Aldamas"', add
label define geo2_mx_lbl 484019004 `"Allende"', add
label define geo2_mx_lbl 484019005 `"Anáhuac"', add
label define geo2_mx_lbl 484019006 `"Apodaca"', add
label define geo2_mx_lbl 484019007 `"Aramberri"', add
label define geo2_mx_lbl 484019008 `"Bustamante"', add
label define geo2_mx_lbl 484019009 `"Cadereyta Jiménez"', add
label define geo2_mx_lbl 484019010 `"El Carmen"', add
label define geo2_mx_lbl 484019011 `"Cerralvo"', add
label define geo2_mx_lbl 484019012 `"Ciénega de Flores"', add
label define geo2_mx_lbl 484019013 `"China"', add
label define geo2_mx_lbl 484019014 `"Doctor Arroyo"', add
label define geo2_mx_lbl 484019015 `"Doctor Coss"', add
label define geo2_mx_lbl 484019016 `"Doctor González"', add
label define geo2_mx_lbl 484019017 `"Galeana"', add
label define geo2_mx_lbl 484019018 `"García"', add
label define geo2_mx_lbl 484019019 `"San Pedro Garza García"', add
label define geo2_mx_lbl 484019020 `"General Bravo"', add
label define geo2_mx_lbl 484019021 `"General Escobedo"', add
label define geo2_mx_lbl 484019022 `"General Terán"', add
label define geo2_mx_lbl 484019023 `"General Treviño"', add
label define geo2_mx_lbl 484019024 `"General Zaragoza"', add
label define geo2_mx_lbl 484019025 `"General Zuazua"', add
label define geo2_mx_lbl 484019026 `"Guadalupe"', add
label define geo2_mx_lbl 484019027 `"Los Herreras"', add
label define geo2_mx_lbl 484019028 `"Higueras"', add
label define geo2_mx_lbl 484019029 `"Hualahuises"', add
label define geo2_mx_lbl 484019030 `"Iturbide"', add
label define geo2_mx_lbl 484019031 `"Juárez"', add
label define geo2_mx_lbl 484019032 `"Lampazos de Naranjo"', add
label define geo2_mx_lbl 484019033 `"Linares"', add
label define geo2_mx_lbl 484019034 `"Marín"', add
label define geo2_mx_lbl 484019035 `"Melchor Ocampo"', add
label define geo2_mx_lbl 484019036 `"Mier y Noriega"', add
label define geo2_mx_lbl 484019037 `"Mina"', add
label define geo2_mx_lbl 484019038 `"Montemorelos"', add
label define geo2_mx_lbl 484019039 `"Monterrey"', add
label define geo2_mx_lbl 484019040 `"Parás"', add
label define geo2_mx_lbl 484019041 `"Pesquería"', add
label define geo2_mx_lbl 484019042 `"Los Ramones"', add
label define geo2_mx_lbl 484019043 `"Rayones"', add
label define geo2_mx_lbl 484019044 `"Sabinas Hidalgo"', add
label define geo2_mx_lbl 484019045 `"Salinas Victoria"', add
label define geo2_mx_lbl 484019046 `"San Nicolás de los Garza"', add
label define geo2_mx_lbl 484019047 `"Hidalgo"', add
label define geo2_mx_lbl 484019048 `"Santa Catarina"', add
label define geo2_mx_lbl 484019049 `"Santiago"', add
label define geo2_mx_lbl 484019050 `"Vallecillo"', add
label define geo2_mx_lbl 484019051 `"Villaldama"', add
label define geo2_mx_lbl 484019999 `"Nuevo Leon, municipality unknown"', add
label define geo2_mx_lbl 484020001 `"Abejones"', add
label define geo2_mx_lbl 484020002 `"Acatlán de Pérez Figueroa"', add
label define geo2_mx_lbl 484020003 `"Asunción Cacalotepec"', add
label define geo2_mx_lbl 484020004 `"Asunción Cuyotepeji"', add
label define geo2_mx_lbl 484020005 `"Asunción Ixtaltepec"', add
label define geo2_mx_lbl 484020006 `"Asunción Nochixtlán"', add
label define geo2_mx_lbl 484020007 `"Asunción Ocotlán"', add
label define geo2_mx_lbl 484020008 `"Asunción Tlacolulita"', add
label define geo2_mx_lbl 484020009 `"Ayotzintepec"', add
label define geo2_mx_lbl 484020010 `"El Barrio de la Soledad"', add
label define geo2_mx_lbl 484020011 `"Calihualá"', add
label define geo2_mx_lbl 484020012 `"Candelaria Loxicha"', add
label define geo2_mx_lbl 484020013 `"Ciénega de Zimatlán"', add
label define geo2_mx_lbl 484020014 `"Ciudad Ixtepec"', add
label define geo2_mx_lbl 484020015 `"Coatecas Altas"', add
label define geo2_mx_lbl 484020016 `"Coicoyán de las Flores"', add
label define geo2_mx_lbl 484020017 `"La Compañía"', add
label define geo2_mx_lbl 484020018 `"Concepción Buenavista"', add
label define geo2_mx_lbl 484020019 `"Concepción Pápalo"', add
label define geo2_mx_lbl 484020020 `"Constancia del Rosario"', add
label define geo2_mx_lbl 484020021 `"Cosolapa"', add
label define geo2_mx_lbl 484020022 `"Cosoltepec"', add
label define geo2_mx_lbl 484020023 `"Cuilápam de Guerrero"', add
label define geo2_mx_lbl 484020024 `"Cuyamecalco Villa de Zaragoza"', add
label define geo2_mx_lbl 484020025 `"Chahuites"', add
label define geo2_mx_lbl 484020026 `"Chalcatongo de Hidalgo"', add
label define geo2_mx_lbl 484020027 `"Chiquihuitlán de Benito Juárez"', add
label define geo2_mx_lbl 484020028 `"Heroica Ciudad de Ejutla de Crespo"', add
label define geo2_mx_lbl 484020029 `"Eloxochitlán de Flores Magón"', add
label define geo2_mx_lbl 484020030 `"El Espinal"', add
label define geo2_mx_lbl 484020031 `"Tamazulápam del Espíritu Santo"', add
label define geo2_mx_lbl 484020032 `"Fresnillo de Trujano"', add
label define geo2_mx_lbl 484020033 `"Guadalupe Etla"', add
label define geo2_mx_lbl 484020034 `"Guadalupe de Ramírez"', add
label define geo2_mx_lbl 484020035 `"Guelatao de Juárez"', add
label define geo2_mx_lbl 484020036 `"Guevea de Humboldt"', add
label define geo2_mx_lbl 484020037 `"Mesones Hidalgo"', add
label define geo2_mx_lbl 484020038 `"Villa Hidalgo"', add
label define geo2_mx_lbl 484020039 `"Heroica Ciudad de Huajuapan de León"', add
label define geo2_mx_lbl 484020040 `"Huautepec"', add
label define geo2_mx_lbl 484020041 `"Huautla de Jiménez"', add
label define geo2_mx_lbl 484020042 `"Ixtlán de Juárez, San Juan Atepec"', add
label define geo2_mx_lbl 484020043 `"Heroica Ciudad de Juchitán de Zaragoza"', add
label define geo2_mx_lbl 484020044 `"Loma Bonita"', add
label define geo2_mx_lbl 484020045 `"Magdalena Apasco"', add
label define geo2_mx_lbl 484020046 `"Magdalena Jaltepec"', add
label define geo2_mx_lbl 484020047 `"Santa Magdalena Jicotlán"', add
label define geo2_mx_lbl 484020048 `"Magdalena Mixtepec"', add
label define geo2_mx_lbl 484020049 `"Magdalena Ocotlán"', add
label define geo2_mx_lbl 484020050 `"Magdalena Peñasco"', add
label define geo2_mx_lbl 484020051 `"Magdalena Teitipac"', add
label define geo2_mx_lbl 484020052 `"Magdalena Tequisistlán"', add
label define geo2_mx_lbl 484020053 `"Magdalena Tlacotepec"', add
label define geo2_mx_lbl 484020054 `"Magdalena Zahuatlán"', add
label define geo2_mx_lbl 484020055 `"Mariscala de Juárez"', add
label define geo2_mx_lbl 484020056 `"Mártires de Tacubaya"', add
label define geo2_mx_lbl 484020057 `"Matías Romero Avendaño"', add
label define geo2_mx_lbl 484020058 `"Mazatlán Villa de Flores"', add
label define geo2_mx_lbl 484020059 `"Miahuatlán de Porfirio Díaz"', add
label define geo2_mx_lbl 484020060 `"Mixistlán de la Reforma"', add
label define geo2_mx_lbl 484020061 `"Monjas"', add
label define geo2_mx_lbl 484020062 `"Natividad"', add
label define geo2_mx_lbl 484020063 `"Nazareno Etla"', add
label define geo2_mx_lbl 484020064 `"Nejapa de Madero"', add
label define geo2_mx_lbl 484020065 `"Ixpantepec Nieves"', add
label define geo2_mx_lbl 484020066 `"Santiago Niltepec"', add
label define geo2_mx_lbl 484020067 `"Oaxaca de Juárez"', add
label define geo2_mx_lbl 484020068 `"Ocotlán de Morelos"', add
label define geo2_mx_lbl 484020069 `"La Pe"', add
label define geo2_mx_lbl 484020070 `"Pinotepa de Don Luis"', add
label define geo2_mx_lbl 484020071 `"Pluma Hidalgo"', add
label define geo2_mx_lbl 484020072 `"San José del Progreso"', add
label define geo2_mx_lbl 484020073 `"Putla Villa de Guerrero"', add
label define geo2_mx_lbl 484020074 `"Santa Catarina Quioquitani"', add
label define geo2_mx_lbl 484020075 `"Reforma de Pineda"', add
label define geo2_mx_lbl 484020076 `"La Reforma"', add
label define geo2_mx_lbl 484020077 `"Reyes Etla"', add
label define geo2_mx_lbl 484020078 `"Rojas de Cuauhtémoc"', add
label define geo2_mx_lbl 484020079 `"Salina Cruz"', add
label define geo2_mx_lbl 484020080 `"San Agustín Amatengo"', add
label define geo2_mx_lbl 484020081 `"San Agustín Atenango"', add
label define geo2_mx_lbl 484020082 `"San Agustín Chayuco"', add
label define geo2_mx_lbl 484020083 `"San Agustín de las Juntas"', add
label define geo2_mx_lbl 484020084 `"San Agustín Etla"', add
label define geo2_mx_lbl 484020085 `"San Agustín Loxicha"', add
label define geo2_mx_lbl 484020086 `"San Agustín Tlacotepec"', add
label define geo2_mx_lbl 484020087 `"San Agustín Yatareni"', add
label define geo2_mx_lbl 484020088 `"San Andrés Cabecera Nueva"', add
label define geo2_mx_lbl 484020089 `"San Andrés Dinicuiti"', add
label define geo2_mx_lbl 484020090 `"San Andrés Huaxpaltepec"', add
label define geo2_mx_lbl 484020091 `"San Andrés Huayápam"', add
label define geo2_mx_lbl 484020092 `"San Andrés Ixtlahuaca"', add
label define geo2_mx_lbl 484020093 `"San Andrés Lagunas"', add
label define geo2_mx_lbl 484020094 `"San Andrés Nuxiño"', add
label define geo2_mx_lbl 484020095 `"San Andrés Paxtlán"', add
label define geo2_mx_lbl 484020096 `"San Andrés Sinaxtla"', add
label define geo2_mx_lbl 484020097 `"San Andrés Solaga"', add
label define geo2_mx_lbl 484020098 `"San Andrés Teotilálpam"', add
label define geo2_mx_lbl 484020099 `"San Andrés Tepetlapa"', add
label define geo2_mx_lbl 484020100 `"San Andrés Yaá"', add
label define geo2_mx_lbl 484020101 `"San Andrés Zabache"', add
label define geo2_mx_lbl 484020102 `"San Andrés Zautla"', add
label define geo2_mx_lbl 484020103 `"San Antonino Castillo Velasco"', add
label define geo2_mx_lbl 484020104 `"San Antonino el Alto"', add
label define geo2_mx_lbl 484020105 `"San Antonino Monte Verde"', add
label define geo2_mx_lbl 484020106 `"San Antonio Acutla"', add
label define geo2_mx_lbl 484020107 `"San Antonio de la Cal"', add
label define geo2_mx_lbl 484020108 `"San Antonio Huitepec"', add
label define geo2_mx_lbl 484020109 `"San Antonio Nanahuatípam, Teotitlán de Flores Magón"', add
label define geo2_mx_lbl 484020110 `"San Antonio Sinicahua"', add
label define geo2_mx_lbl 484020111 `"San Antonio Tepetlapa"', add
label define geo2_mx_lbl 484020112 `"San Baltazar Chichicápam"', add
label define geo2_mx_lbl 484020113 `"San Baltazar Loxicha"', add
label define geo2_mx_lbl 484020114 `"San Baltazar Yatzachi el Bajo"', add
label define geo2_mx_lbl 484020115 `"San Bartolo Coyotepec"', add
label define geo2_mx_lbl 484020116 `"San Bartolomé Ayautla"', add
label define geo2_mx_lbl 484020117 `"San Bartolomé Loxicha"', add
label define geo2_mx_lbl 484020118 `"San Bartolomé Quialana"', add
label define geo2_mx_lbl 484020119 `"San Bartolomé Yucuañe"', add
label define geo2_mx_lbl 484020120 `"San Bartolomé Zoogocho"', add
label define geo2_mx_lbl 484020121 `"San Bartolo Soyaltepec"', add
label define geo2_mx_lbl 484020122 `"San Bartolo Yautepec"', add
label define geo2_mx_lbl 484020123 `"San Bernardo Mixtepec"', add
label define geo2_mx_lbl 484020124 `"San Blas Atempa"', add
label define geo2_mx_lbl 484020125 `"San Carlos Yautepec"', add
label define geo2_mx_lbl 484020126 `"San Cristóbal Amatlán"', add
label define geo2_mx_lbl 484020127 `"San Cristóbal Amoltepec"', add
label define geo2_mx_lbl 484020128 `"San Cristóbal Lachirioag"', add
label define geo2_mx_lbl 484020129 `"San Cristóbal Suchixtlahuaca"', add
label define geo2_mx_lbl 484020130 `"San Dionisio del Mar"', add
label define geo2_mx_lbl 484020131 `"San Dionisio Ocotepec"', add
label define geo2_mx_lbl 484020132 `"San Dionisio Ocotlán"', add
label define geo2_mx_lbl 484020133 `"San Esteban Atatlahuca"', add
label define geo2_mx_lbl 484020134 `"San Felipe Jalapa de Díaz"', add
label define geo2_mx_lbl 484020135 `"San Felipe Tejalápam"', add
label define geo2_mx_lbl 484020136 `"San Felipe Usila"', add
label define geo2_mx_lbl 484020137 `"San Francisco Cahuacuá"', add
label define geo2_mx_lbl 484020138 `"San Francisco Cajonos"', add
label define geo2_mx_lbl 484020139 `"San Francisco Chapulapa"', add
label define geo2_mx_lbl 484020140 `"San Francisco Chindúa"', add
label define geo2_mx_lbl 484020141 `"San Francisco del Mar"', add
label define geo2_mx_lbl 484020142 `"San Francisco Huehuetlán"', add
label define geo2_mx_lbl 484020143 `"San Francisco Ixhuatán"', add
label define geo2_mx_lbl 484020144 `"San Francisco Jaltepetongo"', add
label define geo2_mx_lbl 484020145 `"San Francisco Lachigoló"', add
label define geo2_mx_lbl 484020146 `"San Francisco Logueche"', add
label define geo2_mx_lbl 484020147 `"San Francisco Nuxaño"', add
label define geo2_mx_lbl 484020148 `"San Francisco Ozolotepec"', add
label define geo2_mx_lbl 484020149 `"San Francisco Sola"', add
label define geo2_mx_lbl 484020150 `"San Francisco Telixtlahuaca"', add
label define geo2_mx_lbl 484020151 `"San Francisco Teopan"', add
label define geo2_mx_lbl 484020152 `"San Francisco Tlapancingo"', add
label define geo2_mx_lbl 484020153 `"San Gabriel Mixtepec"', add
label define geo2_mx_lbl 484020154 `"San Ildefonso Amatlán"', add
label define geo2_mx_lbl 484020155 `"San Ildefonso Sola"', add
label define geo2_mx_lbl 484020156 `"San Ildefonso Villa Alta"', add
label define geo2_mx_lbl 484020157 `"San Jacinto Amilpas"', add
label define geo2_mx_lbl 484020158 `"San Jacinto Tlacotepec"', add
label define geo2_mx_lbl 484020159 `"San Jerónimo Coatlán"', add
label define geo2_mx_lbl 484020160 `"San Jerónimo Silacayoapilla"', add
label define geo2_mx_lbl 484020161 `"San Jerónimo Sosola"', add
label define geo2_mx_lbl 484020162 `"San Jerónimo Taviche"', add
label define geo2_mx_lbl 484020163 `"San Jerónimo Tecóatl"', add
label define geo2_mx_lbl 484020164 `"San Jorge Nuchita"', add
label define geo2_mx_lbl 484020165 `"San José Ayuquila"', add
label define geo2_mx_lbl 484020166 `"San José Chiltepec"', add
label define geo2_mx_lbl 484020167 `"San José del Peñasco"', add
label define geo2_mx_lbl 484020168 `"San José Estancia Grande"', add
label define geo2_mx_lbl 484020169 `"San José Independencia"', add
label define geo2_mx_lbl 484020170 `"San José Lachiguiri"', add
label define geo2_mx_lbl 484020171 `"San José Tenango"', add
label define geo2_mx_lbl 484020172 `"San Juan Achiutla"', add
label define geo2_mx_lbl 484020173 `"Ánimas Trujano"', add
label define geo2_mx_lbl 484020174 `"San Juan Bautista Atatlahuca"', add
label define geo2_mx_lbl 484020175 `"San Juan Bautista Coixtlahuaca"', add
label define geo2_mx_lbl 484020176 `"San Juan Bautista Cuicatlán"', add
label define geo2_mx_lbl 484020177 `"San Juan Bautista Guelache"', add
label define geo2_mx_lbl 484020178 `"San Juan Bautista Jayacatlán"', add
label define geo2_mx_lbl 484020179 `"San Juan Bautista lo de Soto"', add
label define geo2_mx_lbl 484020180 `"San Juan Bautista Suchitepec"', add
label define geo2_mx_lbl 484020181 `"San Juan Bautista Tlacoatzintepec"', add
label define geo2_mx_lbl 484020182 `"San Juan Bautista Tlachichilco"', add
label define geo2_mx_lbl 484020183 `"San Juan Bautista Tuxtepec"', add
label define geo2_mx_lbl 484020184 `"San Juan Cacahuatepec"', add
label define geo2_mx_lbl 484020185 `"San Juan Cieneguilla"', add
label define geo2_mx_lbl 484020186 `"San Juan Coatzóspam"', add
label define geo2_mx_lbl 484020187 `"San Juan Colorado"', add
label define geo2_mx_lbl 484020188 `"San Juan Comaltepec"', add
label define geo2_mx_lbl 484020189 `"San Juan Cotzocón"', add
label define geo2_mx_lbl 484020190 `"San Juan Chicomezúchil"', add
label define geo2_mx_lbl 484020191 `"San Juan Chilateca"', add
label define geo2_mx_lbl 484020192 `"San Juan del Estado"', add
label define geo2_mx_lbl 484020193 `"San Juan del Río"', add
label define geo2_mx_lbl 484020194 `"San Juan Diuxi"', add
label define geo2_mx_lbl 484020195 `"San Juan Evangelista Analco"', add
label define geo2_mx_lbl 484020196 `"San Juan Guelavía"', add
label define geo2_mx_lbl 484020197 `"San Juan Guichicovi"', add
label define geo2_mx_lbl 484020198 `"San Juan Ihualtepec"', add
label define geo2_mx_lbl 484020199 `"San Juan Juquila Mixes"', add
label define geo2_mx_lbl 484020200 `"San Juan Juquila Vijanos"', add
label define geo2_mx_lbl 484020201 `"San Juan Lachao"', add
label define geo2_mx_lbl 484020202 `"San Juan Lachigalla"', add
label define geo2_mx_lbl 484020203 `"San Juan Lajarcia"', add
label define geo2_mx_lbl 484020204 `"San Juan Lalana"', add
label define geo2_mx_lbl 484020205 `"San Juan de los Cués"', add
label define geo2_mx_lbl 484020206 `"San Juan Mazatlán"', add
label define geo2_mx_lbl 484020207 `"San Juan Mixtepec Distrito 08"', add
label define geo2_mx_lbl 484020208 `"San Juan Mixtepec Distrito 26"', add
label define geo2_mx_lbl 484020209 `"San Juan Ñumí"', add
label define geo2_mx_lbl 484020210 `"San Juan Ozolotepec"', add
label define geo2_mx_lbl 484020211 `"San Juan Petlapa"', add
label define geo2_mx_lbl 484020212 `"San Juan Quiahije"', add
label define geo2_mx_lbl 484020213 `"San Juan Quiotepec"', add
label define geo2_mx_lbl 484020214 `"San Juan Sayultepec"', add
label define geo2_mx_lbl 484020215 `"San Juan Tabaá"', add
label define geo2_mx_lbl 484020216 `"San Juan Tamazola"', add
label define geo2_mx_lbl 484020217 `"San Juan Teita"', add
label define geo2_mx_lbl 484020218 `"San Juan Teitipac"', add
label define geo2_mx_lbl 484020219 `"San Juan Tepeuxila"', add
label define geo2_mx_lbl 484020220 `"San Juan Teposcolula"', add
label define geo2_mx_lbl 484020221 `"San Juan Yaeé"', add
label define geo2_mx_lbl 484020222 `"San Juan Yatzona"', add
label define geo2_mx_lbl 484020223 `"San Juan Yucuita"', add
label define geo2_mx_lbl 484020224 `"San Lorenzo"', add
label define geo2_mx_lbl 484020225 `"San Lorenzo Albarradas"', add
label define geo2_mx_lbl 484020226 `"San Lorenzo Cacaotepec"', add
label define geo2_mx_lbl 484020227 `"San Lorenzo Cuaunecuiltitla"', add
label define geo2_mx_lbl 484020228 `"San Lorenzo Texmelúcan"', add
label define geo2_mx_lbl 484020229 `"San Lorenzo Victoria"', add
label define geo2_mx_lbl 484020230 `"San Lucas Camotlán"', add
label define geo2_mx_lbl 484020231 `"San Lucas Ojitlán"', add
label define geo2_mx_lbl 484020232 `"San Lucas Quiaviní"', add
label define geo2_mx_lbl 484020233 `"San Lucas Zoquiápam"', add
label define geo2_mx_lbl 484020234 `"San Luis Amatlán"', add
label define geo2_mx_lbl 484020235 `"San Marcial Ozolotepec"', add
label define geo2_mx_lbl 484020236 `"San Marcos Arteaga"', add
label define geo2_mx_lbl 484020237 `"San Martin de los Cansecos"', add
label define geo2_mx_lbl 484020238 `"San Martín Huamelúlpam"', add
label define geo2_mx_lbl 484020239 `"San Martin Itunyoso"', add
label define geo2_mx_lbl 484020240 `"San Martín Lachilá"', add
label define geo2_mx_lbl 484020241 `"San Martin Peras"', add
label define geo2_mx_lbl 484020242 `"San Martin Tilcajete"', add
label define geo2_mx_lbl 484020243 `"San Martin Toxpalan"', add
label define geo2_mx_lbl 484020244 `"San Martin Zacatepec"', add
label define geo2_mx_lbl 484020245 `"San Mateo Cajonos"', add
label define geo2_mx_lbl 484020246 `"Capulálpam de Méndez"', add
label define geo2_mx_lbl 484020247 `"San Mateo del Mar"', add
label define geo2_mx_lbl 484020248 `"San Mateo Yoloxochitlán"', add
label define geo2_mx_lbl 484020249 `"San Mateo Etlatongo"', add
label define geo2_mx_lbl 484020250 `"San Mateo Nejápam"', add
label define geo2_mx_lbl 484020251 `"San Mateo Peñasco"', add
label define geo2_mx_lbl 484020252 `"San Mateo Piñas"', add
label define geo2_mx_lbl 484020253 `"San Mateo Río Hondo"', add
label define geo2_mx_lbl 484020254 `"San Mateo Sindihui"', add
label define geo2_mx_lbl 484020255 `"San Mateo Tlapiltepec"', add
label define geo2_mx_lbl 484020256 `"San Melchor Betaza"', add
label define geo2_mx_lbl 484020257 `"San Miguel Achiutla"', add
label define geo2_mx_lbl 484020258 `"San Miguel Ahuehuetitlán"', add
label define geo2_mx_lbl 484020259 `"San Miguel Aloápam"', add
label define geo2_mx_lbl 484020260 `"San Miguel Amatitlán"', add
label define geo2_mx_lbl 484020261 `"San Miguel Amatlán"', add
label define geo2_mx_lbl 484020262 `"San Miguel Coatlán"', add
label define geo2_mx_lbl 484020263 `"San Miguel Chicahua"', add
label define geo2_mx_lbl 484020264 `"San Miguel Chimalapa"', add
label define geo2_mx_lbl 484020265 `"San Miguel del Puerto"', add
label define geo2_mx_lbl 484020266 `"San Miguel del Río"', add
label define geo2_mx_lbl 484020267 `"San Miguel Ejutla"', add
label define geo2_mx_lbl 484020268 `"San Miguel el Grande"', add
label define geo2_mx_lbl 484020269 `"San Miguel Huautla"', add
label define geo2_mx_lbl 484020270 `"San Miguel Mixtepec"', add
label define geo2_mx_lbl 484020271 `"San Miguel Panixtlahuaca"', add
label define geo2_mx_lbl 484020272 `"San Miguel Peras"', add
label define geo2_mx_lbl 484020273 `"San Miguel Piedras"', add
label define geo2_mx_lbl 484020274 `"San Miguel Quetzaltepec"', add
label define geo2_mx_lbl 484020275 `"San Miguel Santa Flor"', add
label define geo2_mx_lbl 484020276 `"Villa Sola de Vega"', add
label define geo2_mx_lbl 484020277 `"San Miguel Soyaltepec"', add
label define geo2_mx_lbl 484020278 `"San Miguel Suchixtepec"', add
label define geo2_mx_lbl 484020279 `"Villa Talea de Castro"', add
label define geo2_mx_lbl 484020280 `"San Miguel Tecomatlán"', add
label define geo2_mx_lbl 484020281 `"San Miguel Tenango"', add
label define geo2_mx_lbl 484020282 `"San Miguel Tequixtepec"', add
label define geo2_mx_lbl 484020283 `"San Miguel Tilquiápam"', add
label define geo2_mx_lbl 484020284 `"San Miguel Tlacamama"', add
label define geo2_mx_lbl 484020285 `"San Miguel Tlacotepec"', add
label define geo2_mx_lbl 484020286 `"San Miguel Tulancingo"', add
label define geo2_mx_lbl 484020287 `"San Miguel Yotao"', add
label define geo2_mx_lbl 484020288 `"San Nicolás"', add
label define geo2_mx_lbl 484020289 `"San Nicolás Hidalgo"', add
label define geo2_mx_lbl 484020290 `"San Pablo Coatlán"', add
label define geo2_mx_lbl 484020291 `"San Pablo Cuatro Venados"', add
label define geo2_mx_lbl 484020292 `"San Pablo Etla"', add
label define geo2_mx_lbl 484020293 `"San Pablo Huitzo"', add
label define geo2_mx_lbl 484020294 `"San Pablo Huixtepec"', add
label define geo2_mx_lbl 484020295 `"San Pablo Macuiltianguis"', add
label define geo2_mx_lbl 484020296 `"San Pablo Tijaltepec"', add
label define geo2_mx_lbl 484020297 `"San Pablo Villa de Mitla"', add
label define geo2_mx_lbl 484020298 `"San Pablo Yaganiza"', add
label define geo2_mx_lbl 484020299 `"San Pedro Amuzgos"', add
label define geo2_mx_lbl 484020300 `"San Pedro Apóstol"', add
label define geo2_mx_lbl 484020301 `"San Pedro Atoyac"', add
label define geo2_mx_lbl 484020302 `"San Pedro Cajonos"', add
label define geo2_mx_lbl 484020303 `"San Pedro Coxcaltepec Cántaros"', add
label define geo2_mx_lbl 484020304 `"San Pedro Comitancillo"', add
label define geo2_mx_lbl 484020305 `"San Pedro el Alto"', add
label define geo2_mx_lbl 484020306 `"San Pedro Huamelula"', add
label define geo2_mx_lbl 484020307 `"San Pedro Huilotepec"', add
label define geo2_mx_lbl 484020308 `"San Pedro Ixcatlán"', add
label define geo2_mx_lbl 484020309 `"San Pedro Ixtlahuaca"', add
label define geo2_mx_lbl 484020310 `"San Pedro Jaltepetongo"', add
label define geo2_mx_lbl 484020311 `"San Pedro Jicayán"', add
label define geo2_mx_lbl 484020312 `"San Pedro Jocotipac"', add
label define geo2_mx_lbl 484020313 `"San Pedro Juchatengo"', add
label define geo2_mx_lbl 484020314 `"San Pedro Mártir"', add
label define geo2_mx_lbl 484020315 `"San Pedro Mártir Quiechapa"', add
label define geo2_mx_lbl 484020316 `"San Pedro Mártir Yucuxaco"', add
label define geo2_mx_lbl 484020317 `"San Pedro Mixtepec - distr. 22"', add
label define geo2_mx_lbl 484020318 `"San Pedro Mixtepec - distr. 26"', add
label define geo2_mx_lbl 484020319 `"San Pedro Molinos"', add
label define geo2_mx_lbl 484020320 `"San Pedro Nopala"', add
label define geo2_mx_lbl 484020321 `"San Pedro Ocopetatillo"', add
label define geo2_mx_lbl 484020322 `"San Pedro Ocotepec"', add
label define geo2_mx_lbl 484020323 `"San Pedro Pochutla"', add
label define geo2_mx_lbl 484020324 `"San Pedro Quiatoni"', add
label define geo2_mx_lbl 484020325 `"San Pedro Sochiápam"', add
label define geo2_mx_lbl 484020326 `"San Pedro Tapanatepec"', add
label define geo2_mx_lbl 484020327 `"San Pedro Taviche"', add
label define geo2_mx_lbl 484020328 `"San Pedro Teozacoalco"', add
label define geo2_mx_lbl 484020329 `"San Pedro Teutila"', add
label define geo2_mx_lbl 484020330 `"San Pedro Tidaá"', add
label define geo2_mx_lbl 484020331 `"San Pedro Topiltepec"', add
label define geo2_mx_lbl 484020332 `"San Pedro Totolápam"', add
label define geo2_mx_lbl 484020333 `"Villa de Tututepec de Melchor Ocampo"', add
label define geo2_mx_lbl 484020334 `"San Pedro Yaneri"', add
label define geo2_mx_lbl 484020335 `"San Pedro Yólox"', add
label define geo2_mx_lbl 484020336 `"San Pedro y San Pablo Ayutla"', add
label define geo2_mx_lbl 484020337 `"Villa de Etla"', add
label define geo2_mx_lbl 484020338 `"San Pedro y San Pablo Teposcolula"', add
label define geo2_mx_lbl 484020339 `"San Pedro y San Pablo Tequixtepec"', add
label define geo2_mx_lbl 484020340 `"San Pedro Yucunama"', add
label define geo2_mx_lbl 484020341 `"San Raymundo Jalpan"', add
label define geo2_mx_lbl 484020342 `"San Sebastián Abasolo"', add
label define geo2_mx_lbl 484020343 `"San Sebastián Coatlán"', add
label define geo2_mx_lbl 484020344 `"San Sebastián Ixcapa"', add
label define geo2_mx_lbl 484020345 `"San Sebastián Nicananduta"', add
label define geo2_mx_lbl 484020346 `"San Sebastián Río Hondo"', add
label define geo2_mx_lbl 484020347 `"San Sebastián Tecomaxtlahuaca"', add
label define geo2_mx_lbl 484020348 `"San Sebastián Teitipac"', add
label define geo2_mx_lbl 484020349 `"San Sebastián Tutla"', add
label define geo2_mx_lbl 484020350 `"San Simón Almolongas"', add
label define geo2_mx_lbl 484020351 `"San Simón Zahuatlán"', add
label define geo2_mx_lbl 484020352 `"Santa Ana"', add
label define geo2_mx_lbl 484020353 `"Santa Ana Ateixtlahuaca"', add
label define geo2_mx_lbl 484020354 `"Santa Ana Cuauhtémoc"', add
label define geo2_mx_lbl 484020355 `"Santa Ana del Valle"', add
label define geo2_mx_lbl 484020356 `"Santa Ana Tavela"', add
label define geo2_mx_lbl 484020357 `"Santa Ana Tlapacoyan"', add
label define geo2_mx_lbl 484020358 `"Santa Ana Yareni"', add
label define geo2_mx_lbl 484020359 `"Santa Ana Zegache"', add
label define geo2_mx_lbl 484020360 `"Santa Catalina Quierí"', add
label define geo2_mx_lbl 484020361 `"Santa Catarina Cuixtla"', add
label define geo2_mx_lbl 484020362 `"Santa Catarina Ixtepeji"', add
label define geo2_mx_lbl 484020363 `"Santa Catarina Juquila"', add
label define geo2_mx_lbl 484020364 `"Santa Catarina Lachatao"', add
label define geo2_mx_lbl 484020365 `"Santa Catarina Loxicha"', add
label define geo2_mx_lbl 484020366 `"Santa Catarina Mechoacán"', add
label define geo2_mx_lbl 484020367 `"Santa Catarina Minas"', add
label define geo2_mx_lbl 484020368 `"Santa Catarina Quiané"', add
label define geo2_mx_lbl 484020369 `"Santa Catarina Tayata"', add
label define geo2_mx_lbl 484020370 `"Santa Catarina Ticuá"', add
label define geo2_mx_lbl 484020371 `"Santa Catarina Yosonotú"', add
label define geo2_mx_lbl 484020372 `"Santa Catarina Zapoquila"', add
label define geo2_mx_lbl 484020373 `"Santa Cruz Acatepec"', add
label define geo2_mx_lbl 484020374 `"Santa Cruz Amilpas"', add
label define geo2_mx_lbl 484020375 `"Santa Cruz de Bravo"', add
label define geo2_mx_lbl 484020376 `"Santa Cruz Itundujia"', add
label define geo2_mx_lbl 484020377 `"Santa Cruz Mixtepec"', add
label define geo2_mx_lbl 484020378 `"Santa Cruz Nundaco"', add
label define geo2_mx_lbl 484020379 `"Santa Cruz Papalutla"', add
label define geo2_mx_lbl 484020380 `"Santa Cruz Tacache de Mina"', add
label define geo2_mx_lbl 484020381 `"Santa Cruz Tacahua"', add
label define geo2_mx_lbl 484020382 `"Santa Cruz Tayata"', add
label define geo2_mx_lbl 484020383 `"Santa Cruz Xitla"', add
label define geo2_mx_lbl 484020384 `"Santa Cruz Xoxocotlán"', add
label define geo2_mx_lbl 484020385 `"Santa Cruz Zenzontepec"', add
label define geo2_mx_lbl 484020386 `"Santa Gertrudis"', add
label define geo2_mx_lbl 484020387 `"Santa Inés del Monte"', add
label define geo2_mx_lbl 484020388 `"Santa Inés Yatzeche"', add
label define geo2_mx_lbl 484020389 `"Santa Lucía del Camino"', add
label define geo2_mx_lbl 484020390 `"Santa Lucía Miahuatlán"', add
label define geo2_mx_lbl 484020391 `"Santa Lucía Monteverde"', add
label define geo2_mx_lbl 484020392 `"Santa Lucía Ocotlán"', add
label define geo2_mx_lbl 484020393 `"Santa María Alotepec"', add
label define geo2_mx_lbl 484020394 `"Santa María Apazco"', add
label define geo2_mx_lbl 484020395 `"Santa María la Asunción"', add
label define geo2_mx_lbl 484020396 `"Heroica Ciudad de Tlaxiaco"', add
label define geo2_mx_lbl 484020397 `"Ayoquezco de Aldama"', add
label define geo2_mx_lbl 484020398 `"Santa Maria Atzompa"', add
label define geo2_mx_lbl 484020399 `"Santa María Camotlán, Santiago Huajolotitlán"', add
label define geo2_mx_lbl 484020400 `"Santa María Colotepec"', add
label define geo2_mx_lbl 484020401 `"Santa María Cortijo"', add
label define geo2_mx_lbl 484020402 `"Santa Maria Coyotepec"', add
label define geo2_mx_lbl 484020403 `"Santa María Chachoápam"', add
label define geo2_mx_lbl 484020404 `"Villa de Chilapa de Díaz"', add
label define geo2_mx_lbl 484020405 `"Santa María Chilchotla"', add
label define geo2_mx_lbl 484020406 `"Santa María Chimalapa"', add
label define geo2_mx_lbl 484020407 `"Santa María del Rosario"', add
label define geo2_mx_lbl 484020408 `"Santa María del Tule"', add
label define geo2_mx_lbl 484020409 `"Santa María Ecatepec"', add
label define geo2_mx_lbl 484020410 `"Santa María Guelacé"', add
label define geo2_mx_lbl 484020411 `"Santa María Guienagati"', add
label define geo2_mx_lbl 484020412 `"Santa María Huatulco"', add
label define geo2_mx_lbl 484020413 `"Santa María Huazolotitlán"', add
label define geo2_mx_lbl 484020414 `"Santa María Ipalapa"', add
label define geo2_mx_lbl 484020415 `"Santa María Ixcatlán"', add
label define geo2_mx_lbl 484020416 `"Santa María Jacatepec"', add
label define geo2_mx_lbl 484020417 `"Santa María Jalapa del Marqués"', add
label define geo2_mx_lbl 484020418 `"Santa María Jaltianguis"', add
label define geo2_mx_lbl 484020419 `"Santa María Lachixío"', add
label define geo2_mx_lbl 484020420 `"Santa María Mixtequilla"', add
label define geo2_mx_lbl 484020421 `"Santa María Nativitas"', add
label define geo2_mx_lbl 484020422 `"Santa María Nduayaco"', add
label define geo2_mx_lbl 484020423 `"Santa María Ozolotepec"', add
label define geo2_mx_lbl 484020424 `"Santa María Pápalo"', add
label define geo2_mx_lbl 484020425 `"Santa María Peñoles"', add
label define geo2_mx_lbl 484020426 `"Santa María Petapa"', add
label define geo2_mx_lbl 484020427 `"Santa María Quiegolani"', add
label define geo2_mx_lbl 484020428 `"Santa María Sola"', add
label define geo2_mx_lbl 484020429 `"Santa María Tataltepec"', add
label define geo2_mx_lbl 484020430 `"Santa María Tecomavaca"', add
label define geo2_mx_lbl 484020431 `"Santa María Temaxcalapa"', add
label define geo2_mx_lbl 484020432 `"Santa María Temaxcaltepec, Santos Reyes Nopala"', add
label define geo2_mx_lbl 484020433 `"Santa María Teopoxco"', add
label define geo2_mx_lbl 484020434 `"Santa María Tepantlali"', add
label define geo2_mx_lbl 484020435 `"Santa María Texcatitlán"', add
label define geo2_mx_lbl 484020436 `"Santa María Tlahuitoltepec"', add
label define geo2_mx_lbl 484020437 `"Santa María Tlalixtac"', add
label define geo2_mx_lbl 484020438 `"Santa María Tonameca"', add
label define geo2_mx_lbl 484020439 `"Santa María Totolapilla"', add
label define geo2_mx_lbl 484020440 `"Santa María Xadani"', add
label define geo2_mx_lbl 484020441 `"Santa María Yalina"', add
label define geo2_mx_lbl 484020442 `"Santa María Yavesía"', add
label define geo2_mx_lbl 484020443 `"Santa María Yolotepec"', add
label define geo2_mx_lbl 484020444 `"Santa María Yosoyúa"', add
label define geo2_mx_lbl 484020445 `"Santa María Yucuhiti"', add
label define geo2_mx_lbl 484020446 `"Santa María Zacatepec"', add
label define geo2_mx_lbl 484020447 `"Santa María Zaniza"', add
label define geo2_mx_lbl 484020448 `"Santa María Zoquitlán"', add
label define geo2_mx_lbl 484020449 `"Santiago Amoltepec"', add
label define geo2_mx_lbl 484020450 `"Santiago Apoala"', add
label define geo2_mx_lbl 484020451 `"Santiago Apóstol"', add
label define geo2_mx_lbl 484020452 `"Santiago Astata"', add
label define geo2_mx_lbl 484020453 `"Santiago Atitlán"', add
label define geo2_mx_lbl 484020454 `"Santiago Ayuquililla"', add
label define geo2_mx_lbl 484020455 `"Santiago Cacaloxtepec"', add
label define geo2_mx_lbl 484020456 `"Santiago Camotlán"', add
label define geo2_mx_lbl 484020457 `"Santiago Comaltepec"', add
label define geo2_mx_lbl 484020458 `"Santiago Chazumba"', add
label define geo2_mx_lbl 484020459 `"Santiago Choápam"', add
label define geo2_mx_lbl 484020460 `"Santiago del Río"', add
label define geo2_mx_lbl 484020461 `"Santiago Huauclilla"', add
label define geo2_mx_lbl 484020462 `"Santiago Ihuitlán Plumas"', add
label define geo2_mx_lbl 484020463 `"Santiago Ixcuintepec"', add
label define geo2_mx_lbl 484020464 `"Santiago Ixtayutla"', add
label define geo2_mx_lbl 484020465 `"Santiago Jamiltepec"', add
label define geo2_mx_lbl 484020466 `"Santiago Jocotepec"', add
label define geo2_mx_lbl 484020467 `"Santiago Juxtlahuaca"', add
label define geo2_mx_lbl 484020468 `"Santiago Lachiguiri"', add
label define geo2_mx_lbl 484020469 `"Santiago Lalopa"', add
label define geo2_mx_lbl 484020470 `"Santiago Laollaga"', add
label define geo2_mx_lbl 484020471 `"Santiago Laxopa"', add
label define geo2_mx_lbl 484020472 `"Santiago Llano Grande"', add
label define geo2_mx_lbl 484020473 `"Santiago Matatlán"', add
label define geo2_mx_lbl 484020474 `"Santiago Miltepec"', add
label define geo2_mx_lbl 484020475 `"Santiago Minas"', add
label define geo2_mx_lbl 484020476 `"Santiago Nacaltepec"', add
label define geo2_mx_lbl 484020477 `"Santiago Nejapilla"', add
label define geo2_mx_lbl 484020478 `"Santiago Nundiche"', add
label define geo2_mx_lbl 484020479 `"Santiago Nuyoó"', add
label define geo2_mx_lbl 484020480 `"Santiago Pinotepa Nacional"', add
label define geo2_mx_lbl 484020481 `"Santiago Suchilquitongo"', add
label define geo2_mx_lbl 484020482 `"Santiago Tamazola"', add
label define geo2_mx_lbl 484020483 `"Santiago Tapextla"', add
label define geo2_mx_lbl 484020484 `"Villa Tejúpam de la Unión"', add
label define geo2_mx_lbl 484020485 `"Santiago Tenango"', add
label define geo2_mx_lbl 484020486 `"Santiago Tepetlapa"', add
label define geo2_mx_lbl 484020487 `"Santiago Tetepec"', add
label define geo2_mx_lbl 484020488 `"Santiago Texcalcingo"', add
label define geo2_mx_lbl 484020489 `"Santiago Textitlán"', add
label define geo2_mx_lbl 484020490 `"Santiago Tilantongo"', add
label define geo2_mx_lbl 484020491 `"Santiago Tillo"', add
label define geo2_mx_lbl 484020492 `"Santiago Tlazoyaltepec"', add
label define geo2_mx_lbl 484020493 `"Santiago Xanica"', add
label define geo2_mx_lbl 484020494 `"Santiago Xiacuí"', add
label define geo2_mx_lbl 484020495 `"Santiago Yaitepec"', add
label define geo2_mx_lbl 484020496 `"Santiago Yaveo"', add
label define geo2_mx_lbl 484020497 `"Santiago Yolomécatl"', add
label define geo2_mx_lbl 484020498 `"Santiago Yosondúa"', add
label define geo2_mx_lbl 484020499 `"Santiago Yucuyachi"', add
label define geo2_mx_lbl 484020500 `"Santiago Zacatepec"', add
label define geo2_mx_lbl 484020501 `"Santiago Zoochila"', add
label define geo2_mx_lbl 484020502 `"Nuevo Zoquiápam"', add
label define geo2_mx_lbl 484020503 `"Santo Domingo Ingenio"', add
label define geo2_mx_lbl 484020504 `"Santo Domingo Albarradas"', add
label define geo2_mx_lbl 484020505 `"Santo Domingo Armenta"', add
label define geo2_mx_lbl 484020506 `"Santo Domingo Chihuitán"', add
label define geo2_mx_lbl 484020507 `"Santo Domingo de Morelos"', add
label define geo2_mx_lbl 484020508 `"Santo Domingo Ixcatlán"', add
label define geo2_mx_lbl 484020509 `"Santo Domingo Nuxaá"', add
label define geo2_mx_lbl 484020510 `"Santo Domingo Ozolotepec"', add
label define geo2_mx_lbl 484020511 `"Santo Domingo Petapa"', add
label define geo2_mx_lbl 484020512 `"Santo Domingo Roayaga"', add
label define geo2_mx_lbl 484020513 `"Santo Domingo Tehuantepec"', add
label define geo2_mx_lbl 484020514 `"Santo Domingo Teojomulco"', add
label define geo2_mx_lbl 484020515 `"Santo Domingo Tepuxtepec"', add
label define geo2_mx_lbl 484020516 `"Santo Domingo Tlatayápam"', add
label define geo2_mx_lbl 484020517 `"Santo Domingo Tomaltepec"', add
label define geo2_mx_lbl 484020518 `"Santo Domingo Tonalá"', add
label define geo2_mx_lbl 484020519 `"Santo Domingo Tonaltepec"', add
label define geo2_mx_lbl 484020520 `"Santo Domingo Xagacía"', add
label define geo2_mx_lbl 484020521 `"Santo Domingo Yanhuitlán"', add
label define geo2_mx_lbl 484020522 `"Santo Domingo Yodohino"', add
label define geo2_mx_lbl 484020523 `"Santo Domingo Zanatepec"', add
label define geo2_mx_lbl 484020524 `"Santos Reyes Pápalo"', add
label define geo2_mx_lbl 484020525 `"Santos Reyes Tepejillo"', add
label define geo2_mx_lbl 484020526 `"Santos Reyes Yucuná"', add
label define geo2_mx_lbl 484020527 `"Santo Tomás Jalieza"', add
label define geo2_mx_lbl 484020528 `"Santo Tomás Mazaltepec"', add
label define geo2_mx_lbl 484020529 `"Santo Tomás Ocotepec"', add
label define geo2_mx_lbl 484020530 `"Santo Tomás Tamazulapan"', add
label define geo2_mx_lbl 484020531 `"San Vicente Coatlán"', add
label define geo2_mx_lbl 484020532 `"San Vicente Lachixío"', add
label define geo2_mx_lbl 484020533 `"San Vicente Nuñú"', add
label define geo2_mx_lbl 484020534 `"Silacayoápam"', add
label define geo2_mx_lbl 484020535 `"Sitio de Xitlapehua"', add
label define geo2_mx_lbl 484020536 `"Soledad Etla"', add
label define geo2_mx_lbl 484020537 `"Villa de Tamazulápam del Progreso"', add
label define geo2_mx_lbl 484020538 `"Tanetze de Zaragoza"', add
label define geo2_mx_lbl 484020539 `"Taniche"', add
label define geo2_mx_lbl 484020540 `"Tataltepec de Valdés"', add
label define geo2_mx_lbl 484020541 `"Teococuilco de Marcos Pérez"', add
label define geo2_mx_lbl 484020542 `"Teotitlán del Valle"', add
label define geo2_mx_lbl 484020543 `"Teotongo"', add
label define geo2_mx_lbl 484020544 `"Tepelmeme Villa de Morelos"', add
label define geo2_mx_lbl 484020545 `"Villa Tezoatlán de Segura y Luna, Cuna de la Independencia de Oaxaca, Heroica"', add
label define geo2_mx_lbl 484020546 `"San Jerónimo Tlacochahuaya"', add
label define geo2_mx_lbl 484020547 `"Tlacolula de Matamoros"', add
label define geo2_mx_lbl 484020548 `"Tlacotepec Plumas"', add
label define geo2_mx_lbl 484020549 `"Tlalixtac de Cabrera"', add
label define geo2_mx_lbl 484020550 `"Totontepec Villa de Morelos"', add
label define geo2_mx_lbl 484020551 `"Trinidad Zaachila"', add
label define geo2_mx_lbl 484020552 `"La Trinidad Vista Hermosa"', add
label define geo2_mx_lbl 484020553 `"Unión Hidalgo"', add
label define geo2_mx_lbl 484020554 `"Valerio Trujano"', add
label define geo2_mx_lbl 484020555 `"San Juan Bautista Valle Nacional"', add
label define geo2_mx_lbl 484020556 `"Villa Díaz Ordaz"', add
label define geo2_mx_lbl 484020557 `"Yaxe"', add
label define geo2_mx_lbl 484020558 `"Magdalena Yodocono de Porfirio Díaz"', add
label define geo2_mx_lbl 484020559 `"Yogana"', add
label define geo2_mx_lbl 484020560 `"Yutanduchi de Guerrero"', add
label define geo2_mx_lbl 484020561 `"Villa de Zaachila"', add
label define geo2_mx_lbl 484020562 `"San Mateo Yucutindoo"', add
label define geo2_mx_lbl 484020563 `"Zapotitlán Lagunas"', add
label define geo2_mx_lbl 484020564 `"Zapotitlán Palmas"', add
label define geo2_mx_lbl 484020565 `"Santa Inés de Zaragoza"', add
label define geo2_mx_lbl 484020566 `"Zimatlán de Álvarez"', add
label define geo2_mx_lbl 484020999 `"Oaxaca, municipality unknown"', add
label define geo2_mx_lbl 484021001 `"Acajete"', add
label define geo2_mx_lbl 484021002 `"Acateno"', add
label define geo2_mx_lbl 484021003 `"Acatlán"', add
label define geo2_mx_lbl 484021004 `"Acatzingo"', add
label define geo2_mx_lbl 484021005 `"Acteopan"', add
label define geo2_mx_lbl 484021006 `"Ahuacatlán"', add
label define geo2_mx_lbl 484021007 `"Ahuatlán"', add
label define geo2_mx_lbl 484021008 `"Ahuazotepec"', add
label define geo2_mx_lbl 484021009 `"Ahuehuetitla"', add
label define geo2_mx_lbl 484021010 `"Ajalpan"', add
label define geo2_mx_lbl 484021011 `"Albino Zertuche"', add
label define geo2_mx_lbl 484021012 `"Aljojuca"', add
label define geo2_mx_lbl 484021013 `"Altepexi"', add
label define geo2_mx_lbl 484021014 `"Amixtlán"', add
label define geo2_mx_lbl 484021015 `"Amozoc"', add
label define geo2_mx_lbl 484021016 `"Aquixtla"', add
label define geo2_mx_lbl 484021017 `"Atempan"', add
label define geo2_mx_lbl 484021018 `"Atexcal"', add
label define geo2_mx_lbl 484021019 `"Atlixco"', add
label define geo2_mx_lbl 484021020 `"Atoyatempan"', add
label define geo2_mx_lbl 484021021 `"Atzala"', add
label define geo2_mx_lbl 484021022 `"Atzitzihuacán"', add
label define geo2_mx_lbl 484021023 `"Atzitzintla"', add
label define geo2_mx_lbl 484021024 `"Axutla"', add
label define geo2_mx_lbl 484021025 `"Ayotoxco de Guerrero"', add
label define geo2_mx_lbl 484021026 `"Calpan"', add
label define geo2_mx_lbl 484021027 `"Caltepec"', add
label define geo2_mx_lbl 484021028 `"Camocuautla"', add
label define geo2_mx_lbl 484021029 `"Caxhuacan"', add
label define geo2_mx_lbl 484021030 `"Coatepec"', add
label define geo2_mx_lbl 484021031 `"Coatzingo"', add
label define geo2_mx_lbl 484021032 `"Cohetzala"', add
label define geo2_mx_lbl 484021033 `"Cohuecan"', add
label define geo2_mx_lbl 484021034 `"Coronango"', add
label define geo2_mx_lbl 484021035 `"Coxcatlán"', add
label define geo2_mx_lbl 484021036 `"Coyomeapan"', add
label define geo2_mx_lbl 484021037 `"Coyotepec"', add
label define geo2_mx_lbl 484021038 `"Cuapiaxtla de Madero"', add
label define geo2_mx_lbl 484021039 `"Cuautempan"', add
label define geo2_mx_lbl 484021040 `"Cuautinchán"', add
label define geo2_mx_lbl 484021041 `"Cuautlancingo"', add
label define geo2_mx_lbl 484021042 `"Cuayuca de Andrade"', add
label define geo2_mx_lbl 484021043 `"Cuetzalan del Progreso"', add
label define geo2_mx_lbl 484021044 `"Cuyoaco"', add
label define geo2_mx_lbl 484021045 `"Chalchicomula de Sesma"', add
label define geo2_mx_lbl 484021046 `"Chapulco"', add
label define geo2_mx_lbl 484021047 `"Chiautla"', add
label define geo2_mx_lbl 484021048 `"Chiautzingo"', add
label define geo2_mx_lbl 484021049 `"Chiconcuautla"', add
label define geo2_mx_lbl 484021050 `"Chichiquila"', add
label define geo2_mx_lbl 484021051 `"Chietla"', add
label define geo2_mx_lbl 484021052 `"Chigmecatitlán"', add
label define geo2_mx_lbl 484021053 `"Chignahuapan"', add
label define geo2_mx_lbl 484021054 `"Chignautla"', add
label define geo2_mx_lbl 484021055 `"Chila"', add
label define geo2_mx_lbl 484021056 `"Chila de la Sal"', add
label define geo2_mx_lbl 484021057 `"Honey"', add
label define geo2_mx_lbl 484021058 `"Chilchotla"', add
label define geo2_mx_lbl 484021059 `"Chinantla"', add
label define geo2_mx_lbl 484021060 `"Domingo Arenas"', add
label define geo2_mx_lbl 484021061 `"Eloxochitlán"', add
label define geo2_mx_lbl 484021062 `"Epatlán"', add
label define geo2_mx_lbl 484021063 `"Esperanza"', add
label define geo2_mx_lbl 484021064 `"Francisco Z. Mena"', add
label define geo2_mx_lbl 484021065 `"General Felipe Ángeles"', add
label define geo2_mx_lbl 484021066 `"Guadalupe"', add
label define geo2_mx_lbl 484021067 `"Guadalupe Victoria"', add
label define geo2_mx_lbl 484021068 `"Hermenegildo Galeana"', add
label define geo2_mx_lbl 484021069 `"Huaquechula"', add
label define geo2_mx_lbl 484021070 `"Huatlatlauca"', add
label define geo2_mx_lbl 484021071 `"Huauchinango"', add
label define geo2_mx_lbl 484021072 `"Huehuetla"', add
label define geo2_mx_lbl 484021073 `"Huehuetlán el Chico"', add
label define geo2_mx_lbl 484021074 `"Huejotzingo"', add
label define geo2_mx_lbl 484021075 `"Hueyapan"', add
label define geo2_mx_lbl 484021076 `"Hueytamalco"', add
label define geo2_mx_lbl 484021077 `"Hueytlalpan"', add
label define geo2_mx_lbl 484021078 `"Huitzilan de Serdan"', add
label define geo2_mx_lbl 484021079 `"Huitziltepec"', add
label define geo2_mx_lbl 484021080 `"Atlequizayan"', add
label define geo2_mx_lbl 484021081 `"Ixcamilpa de Guerrero"', add
label define geo2_mx_lbl 484021082 `"Ixcaquixtla"', add
label define geo2_mx_lbl 484021083 `"Ixtacamaxtitlán"', add
label define geo2_mx_lbl 484021084 `"Ixtepec"', add
label define geo2_mx_lbl 484021085 `"Izúcar de Matamoros"', add
label define geo2_mx_lbl 484021086 `"Jalpan"', add
label define geo2_mx_lbl 484021087 `"Jolalpan"', add
label define geo2_mx_lbl 484021088 `"Jonotla"', add
label define geo2_mx_lbl 484021089 `"Jopala"', add
label define geo2_mx_lbl 484021090 `"Juan C. Bonilla"', add
label define geo2_mx_lbl 484021091 `"Juan Galindo"', add
label define geo2_mx_lbl 484021092 `"Juan N. Mendez"', add
label define geo2_mx_lbl 484021093 `"Lafragua"', add
label define geo2_mx_lbl 484021094 `"Libres"', add
label define geo2_mx_lbl 484021095 `"La Magdalena Tlatlauquitepec"', add
label define geo2_mx_lbl 484021096 `"Mazapiltepec de Juárez"', add
label define geo2_mx_lbl 484021097 `"Mixtla"', add
label define geo2_mx_lbl 484021098 `"Molcaxac"', add
label define geo2_mx_lbl 484021099 `"Cañada Morelos"', add
label define geo2_mx_lbl 484021100 `"Naupan"', add
label define geo2_mx_lbl 484021101 `"Nauzontla"', add
label define geo2_mx_lbl 484021102 `"Nealtican"', add
label define geo2_mx_lbl 484021103 `"Nicolás Bravo"', add
label define geo2_mx_lbl 484021104 `"Nopalucan"', add
label define geo2_mx_lbl 484021105 `"Ocotepec"', add
label define geo2_mx_lbl 484021106 `"Ocoyucan"', add
label define geo2_mx_lbl 484021107 `"Olintla"', add
label define geo2_mx_lbl 484021108 `"Oriental"', add
label define geo2_mx_lbl 484021109 `"Pahuatlán"', add
label define geo2_mx_lbl 484021110 `"Palmar de Bravo"', add
label define geo2_mx_lbl 484021111 `"Pantepec"', add
label define geo2_mx_lbl 484021112 `"Petlalcingo"', add
label define geo2_mx_lbl 484021113 `"Piaxtla"', add
label define geo2_mx_lbl 484021114 `"Puebla"', add
label define geo2_mx_lbl 484021115 `"Quecholac"', add
label define geo2_mx_lbl 484021116 `"Quimixtlán"', add
label define geo2_mx_lbl 484021117 `"Rafael Lara Grajales"', add
label define geo2_mx_lbl 484021118 `"Los Reyes de Juárez"', add
label define geo2_mx_lbl 484021119 `"San Andrés Cholula"', add
label define geo2_mx_lbl 484021120 `"San Antonio Cañada"', add
label define geo2_mx_lbl 484021121 `"San Diego la Mesa Tochimiltzingo"', add
label define geo2_mx_lbl 484021122 `"San Felipe Teotlalcingo"', add
label define geo2_mx_lbl 484021123 `"San Felipe Tepatlán"', add
label define geo2_mx_lbl 484021124 `"San Gabriel Chilac"', add
label define geo2_mx_lbl 484021125 `"San Gregorio Atzompa"', add
label define geo2_mx_lbl 484021126 `"San Jerónimo Tecuanipan"', add
label define geo2_mx_lbl 484021127 `"San Jerónimo Xayacatlán"', add
label define geo2_mx_lbl 484021128 `"San José Chiapa"', add
label define geo2_mx_lbl 484021129 `"San José Miahuatlán"', add
label define geo2_mx_lbl 484021130 `"San Juan Atenco"', add
label define geo2_mx_lbl 484021131 `"San Juan Atzompa"', add
label define geo2_mx_lbl 484021132 `"San Martin Texmelucan"', add
label define geo2_mx_lbl 484021133 `"San Martin Totoltepec"', add
label define geo2_mx_lbl 484021134 `"San Matias Tlalancaleca"', add
label define geo2_mx_lbl 484021135 `"San Miguel Ixitlán"', add
label define geo2_mx_lbl 484021136 `"San Miguel Xoxtla"', add
label define geo2_mx_lbl 484021137 `"San Nicolás Buenos Aires"', add
label define geo2_mx_lbl 484021138 `"San Nicolás de los Ranchos"', add
label define geo2_mx_lbl 484021139 `"San Pablo Anicano"', add
label define geo2_mx_lbl 484021140 `"San Pedro Cholula"', add
label define geo2_mx_lbl 484021141 `"San Pedro Yeloixtlahuaca"', add
label define geo2_mx_lbl 484021142 `"San Salvador el Seco"', add
label define geo2_mx_lbl 484021143 `"San Salvador el Verde"', add
label define geo2_mx_lbl 484021144 `"San Salvador Huixcolotla"', add
label define geo2_mx_lbl 484021145 `"San Sebastián Tlacotepec"', add
label define geo2_mx_lbl 484021146 `"Santa Catarina Tlaltempan"', add
label define geo2_mx_lbl 484021147 `"Santa Inés Ahuatempan"', add
label define geo2_mx_lbl 484021148 `"Santa Isabel Cholula"', add
label define geo2_mx_lbl 484021149 `"Santiago Miahuatlán"', add
label define geo2_mx_lbl 484021150 `"Huehuetlán el Grande"', add
label define geo2_mx_lbl 484021151 `"Santo Tomás Hueyotlipan"', add
label define geo2_mx_lbl 484021152 `"Soltepec"', add
label define geo2_mx_lbl 484021153 `"Tecali de Herrera"', add
label define geo2_mx_lbl 484021154 `"Tecamachalco"', add
label define geo2_mx_lbl 484021155 `"Tecomatlán"', add
label define geo2_mx_lbl 484021156 `"Tehuacán"', add
label define geo2_mx_lbl 484021157 `"Tehuitzingo"', add
label define geo2_mx_lbl 484021158 `"Tenampulco"', add
label define geo2_mx_lbl 484021159 `"Teopantlán"', add
label define geo2_mx_lbl 484021160 `"Teotlalco"', add
label define geo2_mx_lbl 484021161 `"Tepanco de López"', add
label define geo2_mx_lbl 484021162 `"Tepango de Rodríguez"', add
label define geo2_mx_lbl 484021163 `"Tepatlaxco de Hidalgo"', add
label define geo2_mx_lbl 484021164 `"Tepeaca"', add
label define geo2_mx_lbl 484021165 `"Tepemaxalco"', add
label define geo2_mx_lbl 484021166 `"Tepeojuma"', add
label define geo2_mx_lbl 484021167 `"Tepetzintla"', add
label define geo2_mx_lbl 484021168 `"Tepexco"', add
label define geo2_mx_lbl 484021169 `"Tepexi de Rodríguez"', add
label define geo2_mx_lbl 484021170 `"Tepeyahualco"', add
label define geo2_mx_lbl 484021171 `"Tepeyahualco de Cuauhtémoc"', add
label define geo2_mx_lbl 484021172 `"Tetela de Ocampo"', add
label define geo2_mx_lbl 484021173 `"Teteles de Ávila Castillo"', add
label define geo2_mx_lbl 484021174 `"Teziutlán"', add
label define geo2_mx_lbl 484021175 `"Tianguismanalco"', add
label define geo2_mx_lbl 484021176 `"Tilapa"', add
label define geo2_mx_lbl 484021177 `"Tlacotepec de Benito Juárez"', add
label define geo2_mx_lbl 484021178 `"Tlacuilotepec"', add
label define geo2_mx_lbl 484021179 `"Tlachichuca"', add
label define geo2_mx_lbl 484021180 `"Tlahuapan"', add
label define geo2_mx_lbl 484021181 `"Tlaltenango"', add
label define geo2_mx_lbl 484021182 `"Tlanepantla"', add
label define geo2_mx_lbl 484021183 `"Tlaola"', add
label define geo2_mx_lbl 484021184 `"Tlapacoya"', add
label define geo2_mx_lbl 484021185 `"Tlapanalá"', add
label define geo2_mx_lbl 484021186 `"Tlatlauquitepec"', add
label define geo2_mx_lbl 484021187 `"Tlaxco"', add
label define geo2_mx_lbl 484021188 `"Tochimilco"', add
label define geo2_mx_lbl 484021189 `"Tochtepec"', add
label define geo2_mx_lbl 484021190 `"Totoltepec de Guerrero"', add
label define geo2_mx_lbl 484021191 `"Tulcingo"', add
label define geo2_mx_lbl 484021192 `"Tuzamapan de Galeana"', add
label define geo2_mx_lbl 484021193 `"Tzicatlacoyan"', add
label define geo2_mx_lbl 484021194 `"Venustiano Carranza"', add
label define geo2_mx_lbl 484021195 `"Vicente Guerrero"', add
label define geo2_mx_lbl 484021196 `"Xayacatlán de Bravo"', add
label define geo2_mx_lbl 484021197 `"Xicotepec"', add
label define geo2_mx_lbl 484021198 `"Xicotlán"', add
label define geo2_mx_lbl 484021199 `"Xiutetelco"', add
label define geo2_mx_lbl 484021200 `"Xochiapulco"', add
label define geo2_mx_lbl 484021201 `"Xochiltepec"', add
label define geo2_mx_lbl 484021202 `"Xochitlán de Vicente Suárez"', add
label define geo2_mx_lbl 484021203 `"Xochitlán Todos Santos"', add
label define geo2_mx_lbl 484021204 `"Yaonáhuac"', add
label define geo2_mx_lbl 484021205 `"Yehualtepec"', add
label define geo2_mx_lbl 484021206 `"Zacapala"', add
label define geo2_mx_lbl 484021207 `"Zacapoaxtla"', add
label define geo2_mx_lbl 484021208 `"Zacatlán"', add
label define geo2_mx_lbl 484021209 `"Zapotitlán"', add
label define geo2_mx_lbl 484021210 `"Zapotitlán de Méndez"', add
label define geo2_mx_lbl 484021211 `"Zaragoza"', add
label define geo2_mx_lbl 484021212 `"Zautla"', add
label define geo2_mx_lbl 484021213 `"Zihuateutla"', add
label define geo2_mx_lbl 484021214 `"Zinacatepec"', add
label define geo2_mx_lbl 484021215 `"Zongozotla"', add
label define geo2_mx_lbl 484021216 `"Zoquiapan"', add
label define geo2_mx_lbl 484021217 `"Zoquitlán"', add
label define geo2_mx_lbl 484021999 `"Puebla, municipality unknown"', add
label define geo2_mx_lbl 484022001 `"Amealco de Bonfil"', add
label define geo2_mx_lbl 484022002 `"Pinal de Amoles"', add
label define geo2_mx_lbl 484022003 `"Arroyo Seco"', add
label define geo2_mx_lbl 484022004 `"Cadereyta de Montes"', add
label define geo2_mx_lbl 484022005 `"Colón"', add
label define geo2_mx_lbl 484022006 `"Corregidora"', add
label define geo2_mx_lbl 484022007 `"Ezequiel Montes"', add
label define geo2_mx_lbl 484022008 `"Huimilpan"', add
label define geo2_mx_lbl 484022009 `"Jalpan de Serra"', add
label define geo2_mx_lbl 484022010 `"Landa de Matamoros"', add
label define geo2_mx_lbl 484022011 `"El Marqués"', add
label define geo2_mx_lbl 484022012 `"Pedro Escobedo"', add
label define geo2_mx_lbl 484022013 `"Peñamiller"', add
label define geo2_mx_lbl 484022014 `"Querétaro"', add
label define geo2_mx_lbl 484022015 `"San Joaquín"', add
label define geo2_mx_lbl 484022016 `"San Juan del Río"', add
label define geo2_mx_lbl 484022017 `"Tequisquiapan"', add
label define geo2_mx_lbl 484022018 `"Tolimán"', add
label define geo2_mx_lbl 484022999 `"Queretaro, municipality unknown"', add
label define geo2_mx_lbl 484023001 `"Cozumel, Felipe Carrillo Puerto, Isla Mujeres, Othón p. Blanco, Benito Juárez, José Maria Morelos, Lázaro Cardenas, Solidaridad, Tulum, Bacalar, Puerto Morelos"', add
label define geo2_mx_lbl 484023999 `"Quintana Roo, municipality unknown"', add
label define geo2_mx_lbl 484024001 `"Ahualulco"', add
label define geo2_mx_lbl 484024002 `"Alaquines"', add
label define geo2_mx_lbl 484024003 `"Aquismón"', add
label define geo2_mx_lbl 484024004 `"Armadillo de los Infante"', add
label define geo2_mx_lbl 484024005 `"Cárdenas"', add
label define geo2_mx_lbl 484024006 `"Catorce"', add
label define geo2_mx_lbl 484024007 `"Cedral"', add
label define geo2_mx_lbl 484024008 `"Cerritos"', add
label define geo2_mx_lbl 484024009 `"Cerro de San Pedro"', add
label define geo2_mx_lbl 484024010 `"Ciudad del Maíz, El Naranjo"', add
label define geo2_mx_lbl 484024011 `"Ciudad Fernández"', add
label define geo2_mx_lbl 484024012 `"Tancanhuitz de Santos"', add
label define geo2_mx_lbl 484024013 `"Ciudad Valles"', add
label define geo2_mx_lbl 484024014 `"Coxcatlán"', add
label define geo2_mx_lbl 484024015 `"Charcas"', add
label define geo2_mx_lbl 484024016 `"Ebano, Tamuín"', add
label define geo2_mx_lbl 484024017 `"Guadalcázar"', add
label define geo2_mx_lbl 484024018 `"Huehuetlán"', add
label define geo2_mx_lbl 484024019 `"Lagunillas"', add
label define geo2_mx_lbl 484024020 `"Matehuala"', add
label define geo2_mx_lbl 484024021 `"Mexquitic de Carmona"', add
label define geo2_mx_lbl 484024022 `"Moctezuma"', add
label define geo2_mx_lbl 484024023 `"Rayón"', add
label define geo2_mx_lbl 484024024 `"Rioverde"', add
label define geo2_mx_lbl 484024025 `"Salinas"', add
label define geo2_mx_lbl 484024026 `"San Antonio"', add
label define geo2_mx_lbl 484024027 `"San Ciro de Acosta"', add
label define geo2_mx_lbl 484024028 `"San Luis Potosí"', add
label define geo2_mx_lbl 484024029 `"San Martín Chalchicuautla"', add
label define geo2_mx_lbl 484024030 `"San Nicolás Tolentino"', add
label define geo2_mx_lbl 484024031 `"Santa Catarina"', add
label define geo2_mx_lbl 484024032 `"Santa María del Río"', add
label define geo2_mx_lbl 484024033 `"Santo Domingo"', add
label define geo2_mx_lbl 484024034 `"San Vicente Tancuayalab"', add
label define geo2_mx_lbl 484024035 `"Soledad de Graciano Sánchez"', add
label define geo2_mx_lbl 484024036 `"Tamasopo"', add
label define geo2_mx_lbl 484024037 `"Tamazunchale, Matlapa"', add
label define geo2_mx_lbl 484024038 `"Tampacán"', add
label define geo2_mx_lbl 484024039 `"Tampamolón Corona"', add
label define geo2_mx_lbl 484024040 `"Tanlajás"', add
label define geo2_mx_lbl 484024041 `"Tanquián de Escobedo"', add
label define geo2_mx_lbl 484024042 `"Tierra Nueva"', add
label define geo2_mx_lbl 484024043 `"Vanegas"', add
label define geo2_mx_lbl 484024044 `"Venado"', add
label define geo2_mx_lbl 484024045 `"Villa de Arriaga"', add
label define geo2_mx_lbl 484024046 `"Villa de Guadalupe"', add
label define geo2_mx_lbl 484024047 `"Villa de la Paz"', add
label define geo2_mx_lbl 484024048 `"Villa de Ramos"', add
label define geo2_mx_lbl 484024049 `"Villa de Reyes"', add
label define geo2_mx_lbl 484024050 `"Villa Hidalgo, Villa de Arista"', add
label define geo2_mx_lbl 484024051 `"Villa Juárez"', add
label define geo2_mx_lbl 484024052 `"Axtla de Terrazas"', add
label define geo2_mx_lbl 484024053 `"Xilitla"', add
label define geo2_mx_lbl 484024054 `"Zaragoza"', add
label define geo2_mx_lbl 484024999 `"San Luis Potosi, municipality unknown"', add
label define geo2_mx_lbl 484025001 `"Ahome"', add
label define geo2_mx_lbl 484025002 `"Angostura"', add
label define geo2_mx_lbl 484025003 `"Badiraguato"', add
label define geo2_mx_lbl 484025004 `"Concordia"', add
label define geo2_mx_lbl 484025005 `"Cosalá"', add
label define geo2_mx_lbl 484025006 `"Culiacán, Navolato"', add
label define geo2_mx_lbl 484025007 `"Choix"', add
label define geo2_mx_lbl 484025008 `"Elota"', add
label define geo2_mx_lbl 484025009 `"Escuinapa"', add
label define geo2_mx_lbl 484025010 `"El Fuerte"', add
label define geo2_mx_lbl 484025011 `"Guasave"', add
label define geo2_mx_lbl 484025012 `"Mazatlán"', add
label define geo2_mx_lbl 484025013 `"Mocorito, Salvador Alvarado"', add
label define geo2_mx_lbl 484025014 `"Rosario"', add
label define geo2_mx_lbl 484025015 `"San Ignacio"', add
label define geo2_mx_lbl 484025016 `"Sinaloa"', add
label define geo2_mx_lbl 484025999 `"Sinaloa, municipality unknown"', add
label define geo2_mx_lbl 484026001 `"Aconchi"', add
label define geo2_mx_lbl 484026002 `"Agua prieta"', add
label define geo2_mx_lbl 484026003 `"Alamos"', add
label define geo2_mx_lbl 484026004 `"Altar"', add
label define geo2_mx_lbl 484026005 `"Arivechi"', add
label define geo2_mx_lbl 484026006 `"Arizpe"', add
label define geo2_mx_lbl 484026007 `"Atil"', add
label define geo2_mx_lbl 484026008 `"Bacadéhuachi"', add
label define geo2_mx_lbl 484026009 `"Bacanora"', add
label define geo2_mx_lbl 484026010 `"Bacerac"', add
label define geo2_mx_lbl 484026011 `"Bacoachi"', add
label define geo2_mx_lbl 484026012 `"Bácum"', add
label define geo2_mx_lbl 484026013 `"Banámichi"', add
label define geo2_mx_lbl 484026014 `"Baviácora"', add
label define geo2_mx_lbl 484026015 `"Bavispe"', add
label define geo2_mx_lbl 484026016 `"Benjamin Hill"', add
label define geo2_mx_lbl 484026017 `"Caborca"', add
label define geo2_mx_lbl 484026018 `"Cajeme"', add
label define geo2_mx_lbl 484026019 `"Cananea"', add
label define geo2_mx_lbl 484026020 `"Carbó"', add
label define geo2_mx_lbl 484026021 `"La Colorada"', add
label define geo2_mx_lbl 484026022 `"Cucurpe"', add
label define geo2_mx_lbl 484026023 `"Cumpas"', add
label define geo2_mx_lbl 484026024 `"Divisaderos"', add
label define geo2_mx_lbl 484026025 `"Empalme"', add
label define geo2_mx_lbl 484026026 `"Etchojoa, Benito Juárez"', add
label define geo2_mx_lbl 484026027 `"Fronteras"', add
label define geo2_mx_lbl 484026028 `"Granados"', add
label define geo2_mx_lbl 484026029 `"Guaymas, San Ignacio Río Muerto"', add
label define geo2_mx_lbl 484026030 `"Hermosillo"', add
label define geo2_mx_lbl 484026031 `"Huachinera"', add
label define geo2_mx_lbl 484026032 `"Huásabas"', add
label define geo2_mx_lbl 484026033 `"Huatabampo"', add
label define geo2_mx_lbl 484026034 `"Huépac"', add
label define geo2_mx_lbl 484026035 `"Imuris"', add
label define geo2_mx_lbl 484026036 `"Magdalena"', add
label define geo2_mx_lbl 484026037 `"Mazatán"', add
label define geo2_mx_lbl 484026038 `"Moctezuma"', add
label define geo2_mx_lbl 484026039 `"Naco"', add
label define geo2_mx_lbl 484026040 `"Nácori Chico"', add
label define geo2_mx_lbl 484026041 `"Nacozari de García"', add
label define geo2_mx_lbl 484026042 `"Navojoa"', add
label define geo2_mx_lbl 484026043 `"Nogales"', add
label define geo2_mx_lbl 484026044 `"Onavas"', add
label define geo2_mx_lbl 484026045 `"Opodepe"', add
label define geo2_mx_lbl 484026046 `"Oquitoa"', add
label define geo2_mx_lbl 484026047 `"Pitiquito"', add
label define geo2_mx_lbl 484026048 `"Puerto Peñasco, General Plutarco Elías Calles"', add
label define geo2_mx_lbl 484026049 `"Quiriego"', add
label define geo2_mx_lbl 484026050 `"Rayón"', add
label define geo2_mx_lbl 484026051 `"Rosario"', add
label define geo2_mx_lbl 484026052 `"Sahuaripa"', add
label define geo2_mx_lbl 484026053 `"San Felipe de Jesús"', add
label define geo2_mx_lbl 484026054 `"San Javier"', add
label define geo2_mx_lbl 484026055 `"San Luis Río Colorado"', add
label define geo2_mx_lbl 484026056 `"San Miguel de Horcasitas"', add
label define geo2_mx_lbl 484026057 `"San Pedro de la Cueva"', add
label define geo2_mx_lbl 484026058 `"Santa Ana"', add
label define geo2_mx_lbl 484026059 `"Santa Cruz"', add
label define geo2_mx_lbl 484026060 `"Sáric"', add
label define geo2_mx_lbl 484026061 `"Soyopa"', add
label define geo2_mx_lbl 484026062 `"Suaqui Grande"', add
label define geo2_mx_lbl 484026063 `"Tepache"', add
label define geo2_mx_lbl 484026064 `"Trincheras"', add
label define geo2_mx_lbl 484026065 `"Tubutama"', add
label define geo2_mx_lbl 484026066 `"Ures"', add
label define geo2_mx_lbl 484026067 `"Villa Hidalgo"', add
label define geo2_mx_lbl 484026068 `"Villa Pesqueira"', add
label define geo2_mx_lbl 484026069 `"Yécora"', add
label define geo2_mx_lbl 484026999 `"Sonora, municipality unknown"', add
label define geo2_mx_lbl 484027001 `"Balancán"', add
label define geo2_mx_lbl 484027002 `"Cárdenas"', add
label define geo2_mx_lbl 484027003 `"Centla"', add
label define geo2_mx_lbl 484027004 `"Centro"', add
label define geo2_mx_lbl 484027005 `"Comalcalco"', add
label define geo2_mx_lbl 484027006 `"Cunduacán"', add
label define geo2_mx_lbl 484027007 `"Emiliano Zapata"', add
label define geo2_mx_lbl 484027008 `"Huimanguillo"', add
label define geo2_mx_lbl 484027009 `"Jalapa"', add
label define geo2_mx_lbl 484027010 `"Jalpa de Méndez"', add
label define geo2_mx_lbl 484027011 `"Jonuta"', add
label define geo2_mx_lbl 484027012 `"Macuspana"', add
label define geo2_mx_lbl 484027013 `"Nacajuca"', add
label define geo2_mx_lbl 484027014 `"Paraíso"', add
label define geo2_mx_lbl 484027015 `"Tacotalpa"', add
label define geo2_mx_lbl 484027016 `"Teapa"', add
label define geo2_mx_lbl 484027017 `"Tenosique"', add
label define geo2_mx_lbl 484027999 `"Tabasco, municipality unknown"', add
label define geo2_mx_lbl 484028001 `"Abasolo"', add
label define geo2_mx_lbl 484028002 `"Aldama"', add
label define geo2_mx_lbl 484028003 `"Altamira"', add
label define geo2_mx_lbl 484028004 `"Antiguo Morelos"', add
label define geo2_mx_lbl 484028005 `"Burgos"', add
label define geo2_mx_lbl 484028006 `"Bustamante"', add
label define geo2_mx_lbl 484028007 `"Camargo"', add
label define geo2_mx_lbl 484028008 `"Casas"', add
label define geo2_mx_lbl 484028009 `"Ciudad Madero"', add
label define geo2_mx_lbl 484028010 `"Cruillas"', add
label define geo2_mx_lbl 484028011 `"Gómez Farías"', add
label define geo2_mx_lbl 484028012 `"González"', add
label define geo2_mx_lbl 484028013 `"Güémez"', add
label define geo2_mx_lbl 484028014 `"Guerrero"', add
label define geo2_mx_lbl 484028015 `"Gustavo Díaz Ordaz, Reynosa, Río Bravo"', add
label define geo2_mx_lbl 484028016 `"Hidalgo"', add
label define geo2_mx_lbl 484028017 `"Jaumave"', add
label define geo2_mx_lbl 484028018 `"Jiménez"', add
label define geo2_mx_lbl 484028019 `"Llera"', add
label define geo2_mx_lbl 484028020 `"Mainero"', add
label define geo2_mx_lbl 484028021 `"El Mante"', add
label define geo2_mx_lbl 484028022 `"Matamoros"', add
label define geo2_mx_lbl 484028023 `"Méndez"', add
label define geo2_mx_lbl 484028024 `"Mier"', add
label define geo2_mx_lbl 484028025 `"Miguel Alemán"', add
label define geo2_mx_lbl 484028026 `"Miquihuana"', add
label define geo2_mx_lbl 484028027 `"Nuevo Laredo"', add
label define geo2_mx_lbl 484028028 `"Nuevo Morelos"', add
label define geo2_mx_lbl 484028029 `"Ocampo"', add
label define geo2_mx_lbl 484028030 `"Padilla"', add
label define geo2_mx_lbl 484028031 `"Palmillas"', add
label define geo2_mx_lbl 484028032 `"San Carlos"', add
label define geo2_mx_lbl 484028033 `"San Fernando"', add
label define geo2_mx_lbl 484028034 `"San Nicolás"', add
label define geo2_mx_lbl 484028035 `"Soto la Marina"', add
label define geo2_mx_lbl 484028036 `"Tampico"', add
label define geo2_mx_lbl 484028037 `"Tula"', add
label define geo2_mx_lbl 484028038 `"Valle Hermoso"', add
label define geo2_mx_lbl 484028039 `"Victoria"', add
label define geo2_mx_lbl 484028040 `"Villagrán"', add
label define geo2_mx_lbl 484028041 `"Xicoténcatl"', add
label define geo2_mx_lbl 484028999 `"Tamoulipas, municipality unknown"', add
label define geo2_mx_lbl 484029001 `"Amaxac de Guerrero"', add
label define geo2_mx_lbl 484029002 `"Apetatitlán de Antonio Carvajal"', add
label define geo2_mx_lbl 484029003 `"Atlangatepec"', add
label define geo2_mx_lbl 484029004 `"Altzayanca"', add
label define geo2_mx_lbl 484029005 `"Apizaco"', add
label define geo2_mx_lbl 484029006 `"Calpulalpan"', add
label define geo2_mx_lbl 484029007 `"El Carmen Tequexquitla"', add
label define geo2_mx_lbl 484029008 `"Cuapiaxtla"', add
label define geo2_mx_lbl 484029009 `"Cuaxomulco"', add
label define geo2_mx_lbl 484029010 `"Chiautempan, Tepeyanco, La Magdalena Tlaltelulco, San Francisco Tetlanohcan, San Juan Huactzinco, Santa Isabel Xiloxoxtla"', add
label define geo2_mx_lbl 484029011 `"Muñoz de Domingo Arenas"', add
label define geo2_mx_lbl 484029012 `"Españita"', add
label define geo2_mx_lbl 484029013 `"Huamantla"', add
label define geo2_mx_lbl 484029014 `"Hueyotlipan"', add
label define geo2_mx_lbl 484029015 `"Ixtacuixtla de Mariano Matamoros, Santa Ana Nopalucan"', add
label define geo2_mx_lbl 484029016 `"Ixtenco"', add
label define geo2_mx_lbl 484029017 `"Mazatecochco de José María Morelos"', add
label define geo2_mx_lbl 484029018 `"Contla de Juan Cuamatzi"', add
label define geo2_mx_lbl 484029019 `"Tepetitla de Lardizábal"', add
label define geo2_mx_lbl 484029020 `"Sanctórum de Lázaro Cárdenas, Benito Juárez"', add
label define geo2_mx_lbl 484029021 `"Nanacamilpa de Mariano Arista"', add
label define geo2_mx_lbl 484029022 `"Acuamanala de Miguel Hidalgo, Santa Cruz Quilehtla"', add
label define geo2_mx_lbl 484029023 `"Nativitas, Santa Apolonia Teacalco"', add
label define geo2_mx_lbl 484029024 `"Panotla"', add
label define geo2_mx_lbl 484029025 `"San Pablo del Monte"', add
label define geo2_mx_lbl 484029026 `"Santa Cruz Tlaxcala"', add
label define geo2_mx_lbl 484029027 `"Tenancingo"', add
label define geo2_mx_lbl 484029028 `"Teolocholco"', add
label define geo2_mx_lbl 484029029 `"Terrenate, Emiliano Zapata, Lázaro Cárdenas"', add
label define geo2_mx_lbl 484029030 `"Tetla de la Solidaridad"', add
label define geo2_mx_lbl 484029031 `"Tetlatlahuca, San Damián Texóloc, San Jerónimo Zacualpan"', add
label define geo2_mx_lbl 484029032 `"Tlaxcala"', add
label define geo2_mx_lbl 484029033 `"Tlaxco"', add
label define geo2_mx_lbl 484029034 `"Tocatlán"', add
label define geo2_mx_lbl 484029035 `"Totolac"', add
label define geo2_mx_lbl 484029036 `"Ziltlaltépec de Trinidad Sánchez Santos"', add
label define geo2_mx_lbl 484029037 `"Tzompantepec, San José Teacalco"', add
label define geo2_mx_lbl 484029038 `"Xaloztoc"', add
label define geo2_mx_lbl 484029039 `"Xaltocan, San Lucas Tecopilco"', add
label define geo2_mx_lbl 484029040 `"Papalotla de Xicohténcatl"', add
label define geo2_mx_lbl 484029041 `"Xicohtzinco"', add
label define geo2_mx_lbl 484029042 `"Yauhquemecan"', add
label define geo2_mx_lbl 484029043 `"Zacatelco, San Lorenzo Axocomanitla, Santa Catarina Ayometla"', add
label define geo2_mx_lbl 484030001 `"Acajete"', add
label define geo2_mx_lbl 484030002 `"Acatlán"', add
label define geo2_mx_lbl 484030003 `"Acayucan"', add
label define geo2_mx_lbl 484030004 `"Actopan"', add
label define geo2_mx_lbl 484030005 `"Acula"', add
label define geo2_mx_lbl 484030006 `"Acultzingo"', add
label define geo2_mx_lbl 484030007 `"Camarón de Tejeda"', add
label define geo2_mx_lbl 484030008 `"Alpatláhuac"', add
label define geo2_mx_lbl 484030009 `"Alto Lucero de Gutiérrez Barrios"', add
label define geo2_mx_lbl 484030010 `"Altotonga"', add
label define geo2_mx_lbl 484030011 `"Alvarado"', add
label define geo2_mx_lbl 484030012 `"Amatitlán"', add
label define geo2_mx_lbl 484030013 `"Naranjos Amatlán"', add
label define geo2_mx_lbl 484030014 `"Amatlán de los Reyes"', add
label define geo2_mx_lbl 484030015 `"Angel R. Cabada"', add
label define geo2_mx_lbl 484030016 `"La Antigua"', add
label define geo2_mx_lbl 484030017 `"Apazapan"', add
label define geo2_mx_lbl 484030018 `"Aquila"', add
label define geo2_mx_lbl 484030019 `"Astacinga"', add
label define geo2_mx_lbl 484030020 `"Atlahuilco"', add
label define geo2_mx_lbl 484030021 `"Atoyac"', add
label define geo2_mx_lbl 484030022 `"Atzacan"', add
label define geo2_mx_lbl 484030023 `"Atzalan"', add
label define geo2_mx_lbl 484030024 `"Tlaltetela"', add
label define geo2_mx_lbl 484030025 `"Ayahualulco"', add
label define geo2_mx_lbl 484030026 `"Banderilla"', add
label define geo2_mx_lbl 484030027 `"Benito Juárez"', add
label define geo2_mx_lbl 484030028 `"Boca del Río"', add
label define geo2_mx_lbl 484030029 `"Calcahualco"', add
label define geo2_mx_lbl 484030030 `"Camerino Z. Mendoza"', add
label define geo2_mx_lbl 484030031 `"Carrillo Puerto"', add
label define geo2_mx_lbl 484030032 `"Catemaco"', add
label define geo2_mx_lbl 484030033 `"Cazones"', add
label define geo2_mx_lbl 484030034 `"Cerro azul, Tepetzintla"', add
label define geo2_mx_lbl 484030035 `"Citlaltépetl"', add
label define geo2_mx_lbl 484030036 `"Coacoatzintla"', add
label define geo2_mx_lbl 484030037 `"Coahuitlán"', add
label define geo2_mx_lbl 484030038 `"Coatepec"', add
label define geo2_mx_lbl 484030039 `"Coatzacoalcos, Agua Dulce"', add
label define geo2_mx_lbl 484030040 `"Coatzintla"', add
label define geo2_mx_lbl 484030041 `"Coetzala"', add
label define geo2_mx_lbl 484030042 `"Colipa"', add
label define geo2_mx_lbl 484030043 `"Comapa"', add
label define geo2_mx_lbl 484030044 `"Córdoba"', add
label define geo2_mx_lbl 484030045 `"Cosamaloapan de Carpio, Tres Valles, Carlos A. Carrillo"', add
label define geo2_mx_lbl 484030046 `"Cosautlán de Carvajal"', add
label define geo2_mx_lbl 484030047 `"Coscomatepec"', add
label define geo2_mx_lbl 484030048 `"Cosoleacaque"', add
label define geo2_mx_lbl 484030049 `"Cotaxtla"', add
label define geo2_mx_lbl 484030050 `"Coxquihui"', add
label define geo2_mx_lbl 484030051 `"Coyutla"', add
label define geo2_mx_lbl 484030052 `"Cuichapa"', add
label define geo2_mx_lbl 484030053 `"Cuitláhuac"', add
label define geo2_mx_lbl 484030054 `"Chacaltianguis"', add
label define geo2_mx_lbl 484030055 `"Chalma"', add
label define geo2_mx_lbl 484030056 `"Chiconamel"', add
label define geo2_mx_lbl 484030057 `"Chiconquiaco"', add
label define geo2_mx_lbl 484030058 `"Chicontepec"', add
label define geo2_mx_lbl 484030059 `"Chinameca"', add
label define geo2_mx_lbl 484030060 `"Chinampa de Gorostiza"', add
label define geo2_mx_lbl 484030061 `"Las Choapas, Hidalgotitlán, Jesus Carranza, Minatitlan, Uxpanapa"', add
label define geo2_mx_lbl 484030062 `"Chocamán"', add
label define geo2_mx_lbl 484030063 `"Chontla"', add
label define geo2_mx_lbl 484030064 `"Chumatlán"', add
label define geo2_mx_lbl 484030065 `"Emiliano Zapata"', add
label define geo2_mx_lbl 484030066 `"Espinal"', add
label define geo2_mx_lbl 484030067 `"Filomeno Mata"', add
label define geo2_mx_lbl 484030068 `"Fortin"', add
label define geo2_mx_lbl 484030069 `"Gutiérrez Zamora"', add
label define geo2_mx_lbl 484030070 `"Huatusco"', add
label define geo2_mx_lbl 484030071 `"Huayacocotla"', add
label define geo2_mx_lbl 484030072 `"Hueyapan de Ocampo"', add
label define geo2_mx_lbl 484030073 `"Huiloapan de Cuauhtémoc"', add
label define geo2_mx_lbl 484030074 `"Ignacio de la Llave"', add
label define geo2_mx_lbl 484030075 `"Ilamatlán"', add
label define geo2_mx_lbl 484030076 `"Isla, Jose Azueta"', add
label define geo2_mx_lbl 484030077 `"Ixcatepec"', add
label define geo2_mx_lbl 484030078 `"Ixhuacán de los Reyes"', add
label define geo2_mx_lbl 484030079 `"Ixhuatlán del Café"', add
label define geo2_mx_lbl 484030080 `"Ixhuatlancillo"', add
label define geo2_mx_lbl 484030081 `"Ixhuatlán del Sureste, Nanchital de Lázaro Cárdenas del Rio"', add
label define geo2_mx_lbl 484030082 `"Ixhuatlán de Madero"', add
label define geo2_mx_lbl 484030083 `"Ixmatlahuacan"', add
label define geo2_mx_lbl 484030084 `"Ixtaczoquitlán"', add
label define geo2_mx_lbl 484030085 `"Jalacingo"', add
label define geo2_mx_lbl 484030086 `"Xalapa"', add
label define geo2_mx_lbl 484030087 `"Jalcomulco"', add
label define geo2_mx_lbl 484030088 `"Jáltipan"', add
label define geo2_mx_lbl 484030089 `"Jamapa"', add
label define geo2_mx_lbl 484030090 `"Xico"', add
label define geo2_mx_lbl 484030091 `"Jilotepec"', add
label define geo2_mx_lbl 484030092 `"Juan Rodríguez Clara, San Juan Evangelista"', add
label define geo2_mx_lbl 484030093 `"Juchique de Ferrer"', add
label define geo2_mx_lbl 484030094 `"Landero y Coss"', add
label define geo2_mx_lbl 484030095 `"Lerdo de Tejada"', add
label define geo2_mx_lbl 484030096 `"Magdalena"', add
label define geo2_mx_lbl 484030097 `"Maltrata"', add
label define geo2_mx_lbl 484030098 `"Manlio Fabio Altamirano"', add
label define geo2_mx_lbl 484030099 `"Mariano Escobedo"', add
label define geo2_mx_lbl 484030100 `"Martínez de la Torre, San Rafael"', add
label define geo2_mx_lbl 484030101 `"Mecatlán"', add
label define geo2_mx_lbl 484030102 `"Mecayapan, Soteapan, Tatahuicapan de Juárez"', add
label define geo2_mx_lbl 484030103 `"Medellín"', add
label define geo2_mx_lbl 484030104 `"Miahuatlán"', add
label define geo2_mx_lbl 484030105 `"Las Minas"', add
label define geo2_mx_lbl 484030106 `"Misantla"', add
label define geo2_mx_lbl 484030107 `"Mixtla de Altamirano"', add
label define geo2_mx_lbl 484030108 `"Moloacán"', add
label define geo2_mx_lbl 484030109 `"Naolinco"', add
label define geo2_mx_lbl 484030110 `"Naranjal"', add
label define geo2_mx_lbl 484030111 `"Nautla"', add
label define geo2_mx_lbl 484030112 `"Nogales"', add
label define geo2_mx_lbl 484030113 `"Oluta"', add
label define geo2_mx_lbl 484030114 `"Omealca"', add
label define geo2_mx_lbl 484030115 `"Orizaba"', add
label define geo2_mx_lbl 484030116 `"Otatitlán"', add
label define geo2_mx_lbl 484030117 `"Oteapan"', add
label define geo2_mx_lbl 484030118 `"Ozuluama de Mascareñas"', add
label define geo2_mx_lbl 484030119 `"Pajapan"', add
label define geo2_mx_lbl 484030120 `"Pánuco"', add
label define geo2_mx_lbl 484030121 `"Papantla"', add
label define geo2_mx_lbl 484030122 `"Paso del Macho"', add
label define geo2_mx_lbl 484030123 `"Paso de Ovejas"', add
label define geo2_mx_lbl 484030124 `"La Perla"', add
label define geo2_mx_lbl 484030125 `"Perote"', add
label define geo2_mx_lbl 484030126 `"Platón Sánchez"', add
label define geo2_mx_lbl 484030127 `"Playa Vicente, Santiago Sochiapan"', add
label define geo2_mx_lbl 484030128 `"Poza Rica de Hidalgo"', add
label define geo2_mx_lbl 484030129 `"Las Vigas de Ramírez"', add
label define geo2_mx_lbl 484030130 `"Pueblo Viejo"', add
label define geo2_mx_lbl 484030131 `"Puente Nacional"', add
label define geo2_mx_lbl 484030132 `"Rafael Delgado"', add
label define geo2_mx_lbl 484030133 `"Rafael lucio"', add
label define geo2_mx_lbl 484030134 `"Los Reyes"', add
label define geo2_mx_lbl 484030135 `"Río Blanco"', add
label define geo2_mx_lbl 484030136 `"Saltabarranca"', add
label define geo2_mx_lbl 484030137 `"San Andrés Tenejapan"', add
label define geo2_mx_lbl 484030138 `"San Andrés Tuxtla"', add
label define geo2_mx_lbl 484030139 `"Santiago Tuxtla"', add
label define geo2_mx_lbl 484030140 `"Sayula de Alemán"', add
label define geo2_mx_lbl 484030141 `"Soconusco"', add
label define geo2_mx_lbl 484030142 `"Sochiapa"', add
label define geo2_mx_lbl 484030143 `"Soledad Atzompa"', add
label define geo2_mx_lbl 484030144 `"Soledad de Doblado"', add
label define geo2_mx_lbl 484030145 `"Tamalín"', add
label define geo2_mx_lbl 484030146 `"Tamiahua"', add
label define geo2_mx_lbl 484030147 `"Tampico Alto"', add
label define geo2_mx_lbl 484030148 `"Tancoco"', add
label define geo2_mx_lbl 484030149 `"Tantima"', add
label define geo2_mx_lbl 484030150 `"Tantoyuca"', add
label define geo2_mx_lbl 484030151 `"Tatatila"', add
label define geo2_mx_lbl 484030152 `"Castillo de Teayo"', add
label define geo2_mx_lbl 484030153 `"Tecolutla"', add
label define geo2_mx_lbl 484030154 `"Tehuipango"', add
label define geo2_mx_lbl 484030155 `"Álamo Temapache"', add
label define geo2_mx_lbl 484030156 `"Tempoal, El Higo"', add
label define geo2_mx_lbl 484030157 `"Tenampa"', add
label define geo2_mx_lbl 484030158 `"Tenochtitlán"', add
label define geo2_mx_lbl 484030159 `"Teocelo"', add
label define geo2_mx_lbl 484030160 `"Tepatlaxco"', add
label define geo2_mx_lbl 484030161 `"Tepetlán"', add
label define geo2_mx_lbl 484030162 `"Tequila"', add
label define geo2_mx_lbl 484030163 `"Texcatepec"', add
label define geo2_mx_lbl 484030164 `"Texhuacán"', add
label define geo2_mx_lbl 484030165 `"Texistepec"', add
label define geo2_mx_lbl 484030166 `"Tezonapa, Zongolica"', add
label define geo2_mx_lbl 484030167 `"Tierra Blanca"', add
label define geo2_mx_lbl 484030168 `"Tihuatlán"', add
label define geo2_mx_lbl 484030169 `"Tlacojalpan"', add
label define geo2_mx_lbl 484030170 `"Tlacolulan"', add
label define geo2_mx_lbl 484030171 `"Tlacotalpan"', add
label define geo2_mx_lbl 484030172 `"Tlacotepec de Mejía"', add
label define geo2_mx_lbl 484030173 `"Tlachichilco"', add
label define geo2_mx_lbl 484030174 `"Tlalixcoyan"', add
label define geo2_mx_lbl 484030175 `"Tlalnelhuayocan"', add
label define geo2_mx_lbl 484030176 `"Tlapacoyan"', add
label define geo2_mx_lbl 484030177 `"Tlaquilpa"', add
label define geo2_mx_lbl 484030178 `"Tlilapan"', add
label define geo2_mx_lbl 484030179 `"Tomatlán"', add
label define geo2_mx_lbl 484030180 `"Tonayán"', add
label define geo2_mx_lbl 484030181 `"Totutla"', add
label define geo2_mx_lbl 484030182 `"Tuxpam"', add
label define geo2_mx_lbl 484030183 `"Tuxtilla"', add
label define geo2_mx_lbl 484030184 `"Ursulo Galván"', add
label define geo2_mx_lbl 484030185 `"Vega de Alatorre"', add
label define geo2_mx_lbl 484030186 `"Veracruz"', add
label define geo2_mx_lbl 484030187 `"Villa Aldama"', add
label define geo2_mx_lbl 484030188 `"Xoxocotla"', add
label define geo2_mx_lbl 484030189 `"Yanga"', add
label define geo2_mx_lbl 484030190 `"Yecuatla"', add
label define geo2_mx_lbl 484030191 `"Zacualpan"', add
label define geo2_mx_lbl 484030192 `"Zaragoza"', add
label define geo2_mx_lbl 484030193 `"Zentla"', add
label define geo2_mx_lbl 484030194 `"Zontecomatlan de Lopez y Fuentes"', add
label define geo2_mx_lbl 484030195 `"Zozocolco de Hidalgo"', add
label define geo2_mx_lbl 484030999 `"Veracruz, municipality unknown"', add
label define geo2_mx_lbl 484031001 `"Abalá"', add
label define geo2_mx_lbl 484031002 `"Acanceh"', add
label define geo2_mx_lbl 484031003 `"Akil"', add
label define geo2_mx_lbl 484031004 `"Baca"', add
label define geo2_mx_lbl 484031005 `"Bokobá"', add
label define geo2_mx_lbl 484031006 `"Buctzotz"', add
label define geo2_mx_lbl 484031007 `"Cacalchén"', add
label define geo2_mx_lbl 484031008 `"Calotmul"', add
label define geo2_mx_lbl 484031009 `"Cansahcab"', add
label define geo2_mx_lbl 484031010 `"Cantamayec"', add
label define geo2_mx_lbl 484031011 `"Celestún"', add
label define geo2_mx_lbl 484031012 `"Cenotillo"', add
label define geo2_mx_lbl 484031013 `"Conkal"', add
label define geo2_mx_lbl 484031014 `"Cuncunul"', add
label define geo2_mx_lbl 484031015 `"Cuzamá"', add
label define geo2_mx_lbl 484031016 `"Chacsinkin"', add
label define geo2_mx_lbl 484031017 `"Chankom"', add
label define geo2_mx_lbl 484031018 `"Chapab"', add
label define geo2_mx_lbl 484031019 `"Chemax"', add
label define geo2_mx_lbl 484031020 `"Chicxulub Pueblo"', add
label define geo2_mx_lbl 484031021 `"Chichimilá"', add
label define geo2_mx_lbl 484031022 `"Chikindzonot"', add
label define geo2_mx_lbl 484031023 `"Chocholá"', add
label define geo2_mx_lbl 484031024 `"Chumayel"', add
label define geo2_mx_lbl 484031025 `"Dzán"', add
label define geo2_mx_lbl 484031026 `"Dzemul"', add
label define geo2_mx_lbl 484031027 `"Dzidzantún"', add
label define geo2_mx_lbl 484031028 `"Dzilam de Bravo"', add
label define geo2_mx_lbl 484031029 `"Dzilam González"', add
label define geo2_mx_lbl 484031030 `"Dzitás"', add
label define geo2_mx_lbl 484031031 `"Dzoncauich"', add
label define geo2_mx_lbl 484031032 `"Espita"', add
label define geo2_mx_lbl 484031033 `"Halachó"', add
label define geo2_mx_lbl 484031034 `"Hocabá"', add
label define geo2_mx_lbl 484031035 `"Hoctún"', add
label define geo2_mx_lbl 484031036 `"Homún"', add
label define geo2_mx_lbl 484031037 `"Huhí"', add
label define geo2_mx_lbl 484031038 `"Hunucmá"', add
label define geo2_mx_lbl 484031039 `"Ixil"', add
label define geo2_mx_lbl 484031040 `"Izamal"', add
label define geo2_mx_lbl 484031041 `"Kanasín"', add
label define geo2_mx_lbl 484031042 `"Kantunil"', add
label define geo2_mx_lbl 484031043 `"Kaua"', add
label define geo2_mx_lbl 484031044 `"Kinchil"', add
label define geo2_mx_lbl 484031045 `"Kopomá"', add
label define geo2_mx_lbl 484031046 `"Mama"', add
label define geo2_mx_lbl 484031047 `"Maní"', add
label define geo2_mx_lbl 484031048 `"Maxcanú"', add
label define geo2_mx_lbl 484031049 `"Mayapán"', add
label define geo2_mx_lbl 484031050 `"Mérida"', add
label define geo2_mx_lbl 484031051 `"Mocochá"', add
label define geo2_mx_lbl 484031052 `"Motul"', add
label define geo2_mx_lbl 484031053 `"Muna"', add
label define geo2_mx_lbl 484031054 `"Muxupip"', add
label define geo2_mx_lbl 484031055 `"Opichén"', add
label define geo2_mx_lbl 484031056 `"Oxkutzcab"', add
label define geo2_mx_lbl 484031057 `"Panabá"', add
label define geo2_mx_lbl 484031058 `"Peto"', add
label define geo2_mx_lbl 484031059 `"Progreso"', add
label define geo2_mx_lbl 484031060 `"Quintana Roo"', add
label define geo2_mx_lbl 484031061 `"Río Lagartos"', add
label define geo2_mx_lbl 484031062 `"Sacalum"', add
label define geo2_mx_lbl 484031063 `"Samahil"', add
label define geo2_mx_lbl 484031064 `"Sanahcat"', add
label define geo2_mx_lbl 484031065 `"San Felipe"', add
label define geo2_mx_lbl 484031066 `"Santa Elena"', add
label define geo2_mx_lbl 484031067 `"Seyé"', add
label define geo2_mx_lbl 484031068 `"Sinanché"', add
label define geo2_mx_lbl 484031069 `"Sotuta"', add
label define geo2_mx_lbl 484031070 `"Sucilá"', add
label define geo2_mx_lbl 484031071 `"Sudzal"', add
label define geo2_mx_lbl 484031072 `"Suma"', add
label define geo2_mx_lbl 484031073 `"Tahdziú"', add
label define geo2_mx_lbl 484031074 `"Tahmek"', add
label define geo2_mx_lbl 484031075 `"Teabo"', add
label define geo2_mx_lbl 484031076 `"Tecoh"', add
label define geo2_mx_lbl 484031077 `"Tekal de Venegas"', add
label define geo2_mx_lbl 484031078 `"Tekantó"', add
label define geo2_mx_lbl 484031079 `"Tekax"', add
label define geo2_mx_lbl 484031080 `"Tekit"', add
label define geo2_mx_lbl 484031081 `"Tekom"', add
label define geo2_mx_lbl 484031082 `"Telchac Pueblo"', add
label define geo2_mx_lbl 484031083 `"Telchac Puerto"', add
label define geo2_mx_lbl 484031084 `"Temax"', add
label define geo2_mx_lbl 484031085 `"Temozón"', add
label define geo2_mx_lbl 484031086 `"Tepakán"', add
label define geo2_mx_lbl 484031087 `"Tetiz"', add
label define geo2_mx_lbl 484031088 `"Teya"', add
label define geo2_mx_lbl 484031089 `"Ticul"', add
label define geo2_mx_lbl 484031090 `"Timucuy"', add
label define geo2_mx_lbl 484031091 `"Tinum"', add
label define geo2_mx_lbl 484031092 `"Tixcacalcupul"', add
label define geo2_mx_lbl 484031093 `"Tixkokob"', add
label define geo2_mx_lbl 484031094 `"Tixmehuac"', add
label define geo2_mx_lbl 484031095 `"Tixpéhual"', add
label define geo2_mx_lbl 484031096 `"Tizimin"', add
label define geo2_mx_lbl 484031097 `"Tunkás"', add
label define geo2_mx_lbl 484031098 `"Tzucacab"', add
label define geo2_mx_lbl 484031099 `"Uayma"', add
label define geo2_mx_lbl 484031100 `"Ucú"', add
label define geo2_mx_lbl 484031101 `"Umán"', add
label define geo2_mx_lbl 484031102 `"Valladolid"', add
label define geo2_mx_lbl 484031103 `"Xocchel"', add
label define geo2_mx_lbl 484031104 `"Yaxcabá"', add
label define geo2_mx_lbl 484031105 `"Yaxkukul"', add
label define geo2_mx_lbl 484031106 `"Yobain"', add
label define geo2_mx_lbl 484032001 `"Apozol"', add
label define geo2_mx_lbl 484032002 `"Apulco"', add
label define geo2_mx_lbl 484032003 `"Atolinga"', add
label define geo2_mx_lbl 484032004 `"Benito Juárez, Teúl de González Ortega, Santa María de la Paz"', add
label define geo2_mx_lbl 484032005 `"Calera, General Enrique Estrada"', add
label define geo2_mx_lbl 484032006 `"Cañitas de Felipe Pescador"', add
label define geo2_mx_lbl 484032007 `"Concepción del Oro, El Salvador"', add
label define geo2_mx_lbl 484032008 `"Cuauhtémoc"', add
label define geo2_mx_lbl 484032009 `"Chalchihuites"', add
label define geo2_mx_lbl 484032010 `"Fresnillo"', add
label define geo2_mx_lbl 484032011 `"Trinidad García de la Cadena"', add
label define geo2_mx_lbl 484032012 `"Genaro codina"', add
label define geo2_mx_lbl 484032013 `"General Francisco R. Murguía"', add
label define geo2_mx_lbl 484032014 `"El Plateado de Joaquín Amaro"', add
label define geo2_mx_lbl 484032015 `"General Pánfilo Natera"', add
label define geo2_mx_lbl 484032016 `"Guadalupe, Trancoso"', add
label define geo2_mx_lbl 484032017 `"Huanusco"', add
label define geo2_mx_lbl 484032018 `"Jalpa"', add
label define geo2_mx_lbl 484032019 `"Jerez"', add
label define geo2_mx_lbl 484032020 `"Jiménez del Teul"', add
label define geo2_mx_lbl 484032021 `"Juan aldama"', add
label define geo2_mx_lbl 484032022 `"Juchipila"', add
label define geo2_mx_lbl 484032023 `"Loreto"', add
label define geo2_mx_lbl 484032024 `"Luis Moya"', add
label define geo2_mx_lbl 484032025 `"Mazapil"', add
label define geo2_mx_lbl 484032026 `"Melchor Ocampo"', add
label define geo2_mx_lbl 484032027 `"Mezquital del Oro"', add
label define geo2_mx_lbl 484032028 `"Miguel Auza"', add
label define geo2_mx_lbl 484032029 `"Momax"', add
label define geo2_mx_lbl 484032030 `"Monte Escobedo"', add
label define geo2_mx_lbl 484032031 `"Morelos"', add
label define geo2_mx_lbl 484032032 `"Moyahua de Estrada"', add
label define geo2_mx_lbl 484032033 `"Nochistlán de Mejía"', add
label define geo2_mx_lbl 484032034 `"Noria de Ángeles"', add
label define geo2_mx_lbl 484032035 `"Ojocaliente"', add
label define geo2_mx_lbl 484032036 `"Pánuco"', add
label define geo2_mx_lbl 484032037 `"Pinos"', add
label define geo2_mx_lbl 484032038 `"Río Grande"', add
label define geo2_mx_lbl 484032039 `"Sain Alto"', add
label define geo2_mx_lbl 484032040 `"Sombrerete"', add
label define geo2_mx_lbl 484032041 `"Susticacán"', add
label define geo2_mx_lbl 484032042 `"Tabasco"', add
label define geo2_mx_lbl 484032043 `"Tepechitlán"', add
label define geo2_mx_lbl 484032044 `"Tepetongo"', add
label define geo2_mx_lbl 484032045 `"Tlaltenango de Sánchez Román"', add
label define geo2_mx_lbl 484032046 `"Valparaiso"', add
label define geo2_mx_lbl 484032047 `"Vetagrande"', add
label define geo2_mx_lbl 484032048 `"Villa de Cos"', add
label define geo2_mx_lbl 484032049 `"Villa Garcia"', add
label define geo2_mx_lbl 484032050 `"Villa González Ortega"', add
label define geo2_mx_lbl 484032051 `"Villa Hidalgo"', add
label define geo2_mx_lbl 484032052 `"Villanueva"', add
label define geo2_mx_lbl 484032053 `"Zacatecas"', add
label define geo2_mx_lbl 484032999 `"Zacatecas, municipality unknown"', add
label values geo2_mx geo2_mx_lbl

label define citymx_lbl 01 `"México"'
label define citymx_lbl 02 `"Guadalajara"', add
label define citymx_lbl 03 `"Monterrey"', add
label define citymx_lbl 04 `"Puebla"', add
label define citymx_lbl 05 `"Léon"', add
label define citymx_lbl 06 `"Torreón"', add
label define citymx_lbl 07 `"San Luis Potosí"', add
label define citymx_lbl 08 `"Mérida"', add
label define citymx_lbl 09 `"Chihuahua"', add
label define citymx_lbl 10 `"Tampico"', add
label define citymx_lbl 12 `"Veracruz"', add
label define citymx_lbl 13 `"Acapulco"', add
label define citymx_lbl 14 `"Aguascalientes"', add
label define citymx_lbl 15 `"Morelia"', add
label define citymx_lbl 16 `"Toluca"', add
label define citymx_lbl 17 `"Saltillo"', add
label define citymx_lbl 18 `"Villahermosa"', add
label define citymx_lbl 19 `"Tuxtla Gutiérrez"', add
label define citymx_lbl 20 `"Ciudad Juárez"', add
label define citymx_lbl 21 `"Tijuana"', add
label define citymx_lbl 24 `"Culiacán"', add
label define citymx_lbl 25 `"Hermosillo"', add
label define citymx_lbl 26 `"Durango"', add
label define citymx_lbl 27 `"Tepic"', add
label define citymx_lbl 28 `"Campeche"', add
label define citymx_lbl 29 `"Cuernavaca"', add
label define citymx_lbl 30 `"Coatzacoalcos"', add
label define citymx_lbl 31 `"Oaxaca"', add
label define citymx_lbl 32 `"Zacatecas"', add
label define citymx_lbl 33 `"Colima"', add
label define citymx_lbl 36 `"Querétaro"', add
label define citymx_lbl 39 `"Tlaxcala"', add
label define citymx_lbl 40 `"La Paz"', add
label define citymx_lbl 41 `"Cancún"', add
label define citymx_lbl 42 `"Ciudad del Carmen"', add
label define citymx_lbl 43 `"Pachuca"', add
label define citymx_lbl 44 `"Mexicali"', add
label define citymx_lbl 46 `"Reynosa"', add
label define citymx_lbl 52 `"Tapachula"', add
label define citymx_lbl 98 `"Not in Self-Represented City"', add
label values citymx citymx_lbl

label define hhtype_lbl 00 `"Vacant household"'
label define hhtype_lbl 01 `"One-person household"', add
label define hhtype_lbl 02 `"Married/cohab couple, no children"', add
label define hhtype_lbl 03 `"Married/cohab couple with children"', add
label define hhtype_lbl 04 `"Single-parent family"', add
label define hhtype_lbl 05 `"Polygamous family"', add
label define hhtype_lbl 06 `"Extended family, relatives only"', add
label define hhtype_lbl 07 `"Composite household, family and non-relatives"', add
label define hhtype_lbl 08 `"Non-family household"', add
label define hhtype_lbl 09 `"Unclassified subfamily"', add
label define hhtype_lbl 10 `"Other relative or non-relative household"', add
label define hhtype_lbl 11 `"Group quarters"', add
label define hhtype_lbl 99 `"Unclassifiable"', add
label values hhtype hhtype_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define nchild_lbl 00 `"0"'
label define nchild_lbl 01 `"1"', add
label define nchild_lbl 02 `"2"', add
label define nchild_lbl 03 `"3"', add
label define nchild_lbl 04 `"4"', add
label define nchild_lbl 05 `"5"', add
label define nchild_lbl 06 `"6"', add
label define nchild_lbl 07 `"7"', add
label define nchild_lbl 08 `"8"', add
label define nchild_lbl 09 `"9 or more children in household"', add
label values nchild nchild_lbl

label define nchlt5_lbl 00 `"0"'
label define nchlt5_lbl 01 `"1"', add
label define nchlt5_lbl 02 `"2"', add
label define nchlt5_lbl 03 `"3"', add
label define nchlt5_lbl 04 `"4"', add
label define nchlt5_lbl 05 `"5"', add
label define nchlt5_lbl 06 `"6"', add
label define nchlt5_lbl 07 `"7"', add
label define nchlt5_lbl 08 `"8"', add
label define nchlt5_lbl 09 `"9 or more own children under age 5 in household"', add
label define nchlt5_lbl 98 `"One or more children have unknown age"', add
label values nchlt5 nchlt5_lbl

label define eldch_lbl 00 `"0"'
label define eldch_lbl 01 `"1"', add
label define eldch_lbl 02 `"2"', add
label define eldch_lbl 03 `"3"', add
label define eldch_lbl 04 `"4"', add
label define eldch_lbl 05 `"5"', add
label define eldch_lbl 06 `"6"', add
label define eldch_lbl 07 `"7"', add
label define eldch_lbl 08 `"8"', add
label define eldch_lbl 09 `"9"', add
label define eldch_lbl 10 `"10"', add
label define eldch_lbl 11 `"11"', add
label define eldch_lbl 12 `"12"', add
label define eldch_lbl 13 `"13"', add
label define eldch_lbl 14 `"14"', add
label define eldch_lbl 15 `"15"', add
label define eldch_lbl 16 `"16"', add
label define eldch_lbl 17 `"17"', add
label define eldch_lbl 18 `"18"', add
label define eldch_lbl 19 `"19"', add
label define eldch_lbl 20 `"20"', add
label define eldch_lbl 21 `"21"', add
label define eldch_lbl 22 `"22"', add
label define eldch_lbl 23 `"23"', add
label define eldch_lbl 24 `"24"', add
label define eldch_lbl 25 `"25"', add
label define eldch_lbl 26 `"26"', add
label define eldch_lbl 27 `"27"', add
label define eldch_lbl 28 `"28"', add
label define eldch_lbl 29 `"29"', add
label define eldch_lbl 30 `"30"', add
label define eldch_lbl 31 `"31"', add
label define eldch_lbl 32 `"32"', add
label define eldch_lbl 33 `"33"', add
label define eldch_lbl 34 `"34"', add
label define eldch_lbl 35 `"35"', add
label define eldch_lbl 36 `"36"', add
label define eldch_lbl 37 `"37"', add
label define eldch_lbl 38 `"38"', add
label define eldch_lbl 39 `"39"', add
label define eldch_lbl 40 `"40"', add
label define eldch_lbl 41 `"41"', add
label define eldch_lbl 42 `"42"', add
label define eldch_lbl 43 `"43"', add
label define eldch_lbl 44 `"44"', add
label define eldch_lbl 45 `"45"', add
label define eldch_lbl 46 `"46"', add
label define eldch_lbl 47 `"47"', add
label define eldch_lbl 48 `"48"', add
label define eldch_lbl 49 `"49"', add
label define eldch_lbl 50 `"50 or older"', add
label define eldch_lbl 98 `"One or more children have unknown age"', add
label define eldch_lbl 99 `"No own child in household"', add
label values eldch eldch_lbl

label define yngch_lbl 00 `"0"'
label define yngch_lbl 01 `"1"', add
label define yngch_lbl 02 `"2"', add
label define yngch_lbl 03 `"3"', add
label define yngch_lbl 04 `"4"', add
label define yngch_lbl 05 `"5"', add
label define yngch_lbl 06 `"6"', add
label define yngch_lbl 07 `"7"', add
label define yngch_lbl 08 `"8"', add
label define yngch_lbl 09 `"9"', add
label define yngch_lbl 10 `"10"', add
label define yngch_lbl 11 `"11"', add
label define yngch_lbl 12 `"12"', add
label define yngch_lbl 13 `"13"', add
label define yngch_lbl 14 `"14"', add
label define yngch_lbl 15 `"15"', add
label define yngch_lbl 16 `"16"', add
label define yngch_lbl 17 `"17"', add
label define yngch_lbl 18 `"18"', add
label define yngch_lbl 19 `"19"', add
label define yngch_lbl 20 `"20"', add
label define yngch_lbl 21 `"21"', add
label define yngch_lbl 22 `"22"', add
label define yngch_lbl 23 `"23"', add
label define yngch_lbl 24 `"24"', add
label define yngch_lbl 25 `"25"', add
label define yngch_lbl 26 `"26"', add
label define yngch_lbl 27 `"27"', add
label define yngch_lbl 28 `"28"', add
label define yngch_lbl 29 `"29"', add
label define yngch_lbl 30 `"30"', add
label define yngch_lbl 31 `"31"', add
label define yngch_lbl 32 `"32"', add
label define yngch_lbl 33 `"33"', add
label define yngch_lbl 34 `"34"', add
label define yngch_lbl 35 `"35"', add
label define yngch_lbl 36 `"36"', add
label define yngch_lbl 37 `"37"', add
label define yngch_lbl 38 `"38"', add
label define yngch_lbl 39 `"39"', add
label define yngch_lbl 40 `"40"', add
label define yngch_lbl 41 `"41"', add
label define yngch_lbl 42 `"42"', add
label define yngch_lbl 43 `"43"', add
label define yngch_lbl 44 `"44"', add
label define yngch_lbl 45 `"45"', add
label define yngch_lbl 46 `"46"', add
label define yngch_lbl 47 `"47"', add
label define yngch_lbl 48 `"48"', add
label define yngch_lbl 49 `"49"', add
label define yngch_lbl 50 `"50 or older"', add
label define yngch_lbl 98 `"One or more children have unknown age"', add
label define yngch_lbl 99 `"No own child in household"', add
label values yngch yngch_lbl

label define age_lbl 000 `"Less than 1 year"'
label define age_lbl 001 `"1 year"', add
label define age_lbl 002 `"2 years"', add
label define age_lbl 003 `"3"', add
label define age_lbl 004 `"4"', add
label define age_lbl 005 `"5"', add
label define age_lbl 006 `"6"', add
label define age_lbl 007 `"7"', add
label define age_lbl 008 `"8"', add
label define age_lbl 009 `"9"', add
label define age_lbl 010 `"10"', add
label define age_lbl 011 `"11"', add
label define age_lbl 012 `"12"', add
label define age_lbl 013 `"13"', add
label define age_lbl 014 `"14"', add
label define age_lbl 015 `"15"', add
label define age_lbl 016 `"16"', add
label define age_lbl 017 `"17"', add
label define age_lbl 018 `"18"', add
label define age_lbl 019 `"19"', add
label define age_lbl 020 `"20"', add
label define age_lbl 021 `"21"', add
label define age_lbl 022 `"22"', add
label define age_lbl 023 `"23"', add
label define age_lbl 024 `"24"', add
label define age_lbl 025 `"25"', add
label define age_lbl 026 `"26"', add
label define age_lbl 027 `"27"', add
label define age_lbl 028 `"28"', add
label define age_lbl 029 `"29"', add
label define age_lbl 030 `"30"', add
label define age_lbl 031 `"31"', add
label define age_lbl 032 `"32"', add
label define age_lbl 033 `"33"', add
label define age_lbl 034 `"34"', add
label define age_lbl 035 `"35"', add
label define age_lbl 036 `"36"', add
label define age_lbl 037 `"37"', add
label define age_lbl 038 `"38"', add
label define age_lbl 039 `"39"', add
label define age_lbl 040 `"40"', add
label define age_lbl 041 `"41"', add
label define age_lbl 042 `"42"', add
label define age_lbl 043 `"43"', add
label define age_lbl 044 `"44"', add
label define age_lbl 045 `"45"', add
label define age_lbl 046 `"46"', add
label define age_lbl 047 `"47"', add
label define age_lbl 048 `"48"', add
label define age_lbl 049 `"49"', add
label define age_lbl 050 `"50"', add
label define age_lbl 051 `"51"', add
label define age_lbl 052 `"52"', add
label define age_lbl 053 `"53"', add
label define age_lbl 054 `"54"', add
label define age_lbl 055 `"55"', add
label define age_lbl 056 `"56"', add
label define age_lbl 057 `"57"', add
label define age_lbl 058 `"58"', add
label define age_lbl 059 `"59"', add
label define age_lbl 060 `"60"', add
label define age_lbl 061 `"61"', add
label define age_lbl 062 `"62"', add
label define age_lbl 063 `"63"', add
label define age_lbl 064 `"64"', add
label define age_lbl 065 `"65"', add
label define age_lbl 066 `"66"', add
label define age_lbl 067 `"67"', add
label define age_lbl 068 `"68"', add
label define age_lbl 069 `"69"', add
label define age_lbl 070 `"70"', add
label define age_lbl 071 `"71"', add
label define age_lbl 072 `"72"', add
label define age_lbl 073 `"73"', add
label define age_lbl 074 `"74"', add
label define age_lbl 075 `"75"', add
label define age_lbl 076 `"76"', add
label define age_lbl 077 `"77"', add
label define age_lbl 078 `"78"', add
label define age_lbl 079 `"79"', add
label define age_lbl 080 `"80"', add
label define age_lbl 081 `"81"', add
label define age_lbl 082 `"82"', add
label define age_lbl 083 `"83"', add
label define age_lbl 084 `"84"', add
label define age_lbl 085 `"85"', add
label define age_lbl 086 `"86"', add
label define age_lbl 087 `"87"', add
label define age_lbl 088 `"88"', add
label define age_lbl 089 `"89"', add
label define age_lbl 090 `"90"', add
label define age_lbl 091 `"91"', add
label define age_lbl 092 `"92"', add
label define age_lbl 093 `"93"', add
label define age_lbl 094 `"94"', add
label define age_lbl 095 `"95"', add
label define age_lbl 096 `"96"', add
label define age_lbl 097 `"97"', add
label define age_lbl 098 `"98"', add
label define age_lbl 099 `"99"', add
label define age_lbl 100 `"100+"', add
label define age_lbl 999 `"Not reported/missing"', add
label values age age_lbl

label define age2_lbl 01 `"0 to 4"'
label define age2_lbl 02 `"5 to 9"', add
label define age2_lbl 03 `"10 to 14"', add
label define age2_lbl 04 `"15 to 19"', add
label define age2_lbl 05 `"0 to 5"', add
label define age2_lbl 06 `"6 to 10"', add
label define age2_lbl 07 `"10 to 15"', add
label define age2_lbl 08 `"11 to 14"', add
label define age2_lbl 09 `"15 to 17"', add
label define age2_lbl 10 `"16 to 19"', add
label define age2_lbl 11 `"18 to 24"', add
label define age2_lbl 12 `"20 to 24"', add
label define age2_lbl 13 `"25 to 29"', add
label define age2_lbl 14 `"30 to 34"', add
label define age2_lbl 15 `"35 to 39"', add
label define age2_lbl 16 `"40 to 44"', add
label define age2_lbl 17 `"45 to 49"', add
label define age2_lbl 18 `"50 to 54"', add
label define age2_lbl 19 `"55 to 59"', add
label define age2_lbl 20 `"60 to 64"', add
label define age2_lbl 21 `"65 to 69"', add
label define age2_lbl 22 `"70 to 74"', add
label define age2_lbl 23 `"75 to 79"', add
label define age2_lbl 24 `"80 to 84"', add
label define age2_lbl 25 `"85+"', add
label define age2_lbl 98 `"Unknown"', add
label values age2 age2_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label define sex_lbl 9 `"Unknown"', add
label values sex sex_lbl

label define school_lbl 0 `"NIU (not in universe)"'
label define school_lbl 1 `"Yes"', add
label define school_lbl 2 `"No, not specified"', add
label define school_lbl 3 `"No, attended in the past"', add
label define school_lbl 4 `"No, never attended"', add
label define school_lbl 9 `"Unknown/missing"', add
label values school school_lbl

label define lit_lbl 0 `"NIU (not in universe)"'
label define lit_lbl 1 `"No, illiterate"', add
label define lit_lbl 2 `"Yes, literate"', add
label define lit_lbl 9 `"Unknown/missing"', add
label values lit lit_lbl

label define edattain_lbl 0 `"NIU (not in universe)"'
label define edattain_lbl 1 `"Less than primary completed"', add
label define edattain_lbl 2 `"Primary completed"', add
label define edattain_lbl 3 `"Secondary completed"', add
label define edattain_lbl 4 `"University completed"', add
label define edattain_lbl 9 `"Unknown"', add
label values edattain edattain_lbl

label define edattaind_lbl 000 `"NIU (not in universe)"'
label define edattaind_lbl 100 `"Less than primary completed (n.s.)"', add
label define edattaind_lbl 110 `"No schooling"', add
label define edattaind_lbl 120 `"Some primary completed"', add
label define edattaind_lbl 130 `"Primary (4 yrs) completed"', add
label define edattaind_lbl 211 `"Primary (5 yrs) completed"', add
label define edattaind_lbl 212 `"Primary (6 yrs) completed"', add
label define edattaind_lbl 221 `"Lower secondary general completed"', add
label define edattaind_lbl 222 `"Lower secondary technical completed"', add
label define edattaind_lbl 311 `"Secondary, general track completed"', add
label define edattaind_lbl 312 `"Some college completed"', add
label define edattaind_lbl 320 `"Secondary or post-secondary technical completed"', add
label define edattaind_lbl 321 `"Secondary, technical track completed"', add
label define edattaind_lbl 322 `"Post-secondary technical education"', add
label define edattaind_lbl 400 `"University completed"', add
label define edattaind_lbl 999 `"Unknown/missing"', add
label values edattaind edattaind_lbl

label define yrschool_lbl 00 `"None or pre-school"'
label define yrschool_lbl 01 `"1 year"', add
label define yrschool_lbl 02 `"2 years"', add
label define yrschool_lbl 03 `"3 years"', add
label define yrschool_lbl 04 `"4 years"', add
label define yrschool_lbl 05 `"5 years"', add
label define yrschool_lbl 06 `"6 years"', add
label define yrschool_lbl 07 `"7 years"', add
label define yrschool_lbl 08 `"8 years"', add
label define yrschool_lbl 09 `"9 years"', add
label define yrschool_lbl 10 `"10 years"', add
label define yrschool_lbl 11 `"11 years"', add
label define yrschool_lbl 12 `"12 years"', add
label define yrschool_lbl 13 `"13 years"', add
label define yrschool_lbl 14 `"14 years"', add
label define yrschool_lbl 15 `"15 years"', add
label define yrschool_lbl 16 `"16 years"', add
label define yrschool_lbl 17 `"17 years"', add
label define yrschool_lbl 18 `"18 years or more"', add
label define yrschool_lbl 90 `"Not specified"', add
label define yrschool_lbl 91 `"Some primary"', add
label define yrschool_lbl 92 `"Some technical after primary"', add
label define yrschool_lbl 93 `"Some secondary"', add
label define yrschool_lbl 94 `"Some tertiary"', add
label define yrschool_lbl 95 `"Adult literacy"', add
label define yrschool_lbl 96 `"Special education"', add
label define yrschool_lbl 98 `"Unknown/missing"', add
label define yrschool_lbl 99 `"NIU (not in universe)"', add
label values yrschool yrschool_lbl

label define educmx_lbl 000 `"Less than primary"'
label define educmx_lbl 010 `"None, or never attended school"', add
label define educmx_lbl 020 `"Preschool or kindergarten"', add
label define educmx_lbl 021 `"Preschool, 1 year"', add
label define educmx_lbl 022 `"Preschool, 2 years"', add
label define educmx_lbl 023 `"Preschool, 3 years"', add
label define educmx_lbl 029 `"Preschool, years unspecified"', add
label define educmx_lbl 100 `"Primary"', add
label define educmx_lbl 101 `"Primary, 1 year"', add
label define educmx_lbl 102 `"Primary, 2 years"', add
label define educmx_lbl 103 `"Primary, 3 years"', add
label define educmx_lbl 104 `"Primary, 4 years"', add
label define educmx_lbl 105 `"Primary, 5 years"', add
label define educmx_lbl 106 `"Primary, 6 years"', add
label define educmx_lbl 109 `"Primary, years unspecified"', add
label define educmx_lbl 200 `"Lower secondary (middle or junior high school)"', add
label define educmx_lbl 210 `"Lower secondary, tech/commercial"', add
label define educmx_lbl 211 `"Lower secondary, tech/commercial, 1 year"', add
label define educmx_lbl 212 `"Lower secondary, tech/commercial, 2 years"', add
label define educmx_lbl 213 `"Lower secondary, tech/commercial, 3 years"', add
label define educmx_lbl 214 `"Lower secondary, tech/commercial, 4 years"', add
label define educmx_lbl 219 `"Lower secondary, tech/commercial, years unspecified"', add
label define educmx_lbl 220 `"Lower secondary, general track"', add
label define educmx_lbl 221 `"Lower secondary, general track, 1 year"', add
label define educmx_lbl 222 `"Lower secondary, general track, 2 years"', add
label define educmx_lbl 223 `"Lower secondary, general track, 3 years"', add
label define educmx_lbl 229 `"Lower secondary, general track, years unspecified"', add
label define educmx_lbl 300 `"Secondary (high school)"', add
label define educmx_lbl 310 `"Secondary tech/commercial"', add
label define educmx_lbl 311 `"Secondary tech/commercial, 1 year"', add
label define educmx_lbl 312 `"Secondary tech/commercial, 2 years"', add
label define educmx_lbl 313 `"Secondary tech/commercial, 3 years"', add
label define educmx_lbl 314 `"Secondary tech/commercial, 4 years"', add
label define educmx_lbl 315 `"Secondary tech/commercial, 5 years"', add
label define educmx_lbl 319 `"Secondary tech/commercial, years unspecified"', add
label define educmx_lbl 320 `"Secondary, general track"', add
label define educmx_lbl 321 `"Secondary, general track, 1 year"', add
label define educmx_lbl 322 `"Secondary, general track, 2 years"', add
label define educmx_lbl 323 `"Secondary, general track, 3 years"', add
label define educmx_lbl 329 `"Secondary, general track, years unspecified"', add
label define educmx_lbl 330 `"Technological track"', add
label define educmx_lbl 331 `"Secondary, technological track, year 1"', add
label define educmx_lbl 332 `"Secondary, technological track, years 2"', add
label define educmx_lbl 333 `"Secondary, technological track, years 3"', add
label define educmx_lbl 339 `"Secondary, technological track, year unspecified"', add
label define educmx_lbl 400 `"Normal school (teacher-training)"', add
label define educmx_lbl 401 `"Normal, 1 year"', add
label define educmx_lbl 402 `"Normal, 2 years"', add
label define educmx_lbl 403 `"Normal, 3 years"', add
label define educmx_lbl 404 `"Normal, 4 years"', add
label define educmx_lbl 409 `"Normal, years unspecified"', add
label define educmx_lbl 500 `"Post-secondary technical"', add
label define educmx_lbl 501 `"Post-secondary technical, 1 year"', add
label define educmx_lbl 502 `"Post-secondary technical, 2 years"', add
label define educmx_lbl 503 `"Post-secondary technical, 3 years"', add
label define educmx_lbl 504 `"Post-secondary technical, 4 years"', add
label define educmx_lbl 505 `"Post-secondary technical, 5 years"', add
label define educmx_lbl 509 `"Post-secondary technical, years unspecified"', add
label define educmx_lbl 600 `"University"', add
label define educmx_lbl 610 `"University undergraduate"', add
label define educmx_lbl 611 `"University undergraduate, 1 year"', add
label define educmx_lbl 612 `"University undergraduate, 2 years"', add
label define educmx_lbl 613 `"University undergraduate, 3 years"', add
label define educmx_lbl 614 `"University undergraduate, 4 years"', add
label define educmx_lbl 615 `"University undergraduate, 5 years"', add
label define educmx_lbl 616 `"University undergraduate, 6 years"', add
label define educmx_lbl 617 `"University undergraduate, 7 years"', add
label define educmx_lbl 618 `"University undergraduate, 8+ years"', add
label define educmx_lbl 619 `"University undergraduate, years unspecified"', add
label define educmx_lbl 620 `"University graduate"', add
label define educmx_lbl 621 `"University graduate, 1 year"', add
label define educmx_lbl 622 `"University graduate, 2 years"', add
label define educmx_lbl 623 `"University graduate, 3 years"', add
label define educmx_lbl 624 `"University graduate, 4 years"', add
label define educmx_lbl 625 `"University graduate, 5 years"', add
label define educmx_lbl 626 `"University graduate, 6 years"', add
label define educmx_lbl 627 `"University graduate, 7 years"', add
label define educmx_lbl 628 `"University graduate, 8+ years"', add
label define educmx_lbl 629 `"University graduate, years unspecified"', add
label define educmx_lbl 630 `"Masters degree (2005-2015)"', add
label define educmx_lbl 631 `"Masters, 1 year"', add
label define educmx_lbl 632 `"Masters, 2 years"', add
label define educmx_lbl 633 `"Masters, 3+ years"', add
label define educmx_lbl 639 `"Masters, year unspecified"', add
label define educmx_lbl 640 `"Doctoral degree (2005-2015)"', add
label define educmx_lbl 641 `"Doctoral, 1 year"', add
label define educmx_lbl 642 `"Doctoral, 2 years"', add
label define educmx_lbl 643 `"Doctoral, 3 years"', add
label define educmx_lbl 644 `"Doctoral, 4 years"', add
label define educmx_lbl 645 `"Doctoral, 5 years"', add
label define educmx_lbl 646 `"Doctoral, 6 years"', add
label define educmx_lbl 649 `"Doctoral, years unspecified"', add
label define educmx_lbl 650 `"Specialty degree (2015)"', add
label define educmx_lbl 651 `"Specialty, 1 year"', add
label define educmx_lbl 652 `"Specialty, 2 years"', add
label define educmx_lbl 659 `"Specialty, years unspecified"', add
label define educmx_lbl 700 `"Unspecified post-secondary"', add
label define educmx_lbl 701 `"Unspecified post-secondary, 1 year"', add
label define educmx_lbl 702 `"Unspecified post-secondary, 2 years"', add
label define educmx_lbl 703 `"Unspecified post-secondary, 3 years"', add
label define educmx_lbl 704 `"Unspecified post-secondary, 4 years"', add
label define educmx_lbl 705 `"Unspecified post-secondary, 5 years"', add
label define educmx_lbl 706 `"Unspecified post-secondary, 6 years"', add
label define educmx_lbl 707 `"Unspecified post-secondary, 7 years"', add
label define educmx_lbl 708 `"Unspecified post-secondary, 8+ years"', add
label define educmx_lbl 800 `"Unknown/missing"', add
label define educmx_lbl 999 `"NIU (not in universe)"', add
label values educmx educmx_lbl

label define empstat_lbl 0 `"NIU (not in universe)"'
label define empstat_lbl 1 `"Employed"', add
label define empstat_lbl 2 `"Unemployed"', add
label define empstat_lbl 3 `"Inactive"', add
label define empstat_lbl 9 `"Unknown/missing"', add
label values empstat empstat_lbl

label define empstatd_lbl 000 `"NIU (not in universe)"'
label define empstatd_lbl 100 `"Employed, not specified"', add
label define empstatd_lbl 110 `"At work"', add
label define empstatd_lbl 111 `"At work, and 'student'"', add
label define empstatd_lbl 112 `"At work, and 'housework'"', add
label define empstatd_lbl 113 `"At work, and 'seeking work'"', add
label define empstatd_lbl 114 `"At work, and 'retired'"', add
label define empstatd_lbl 115 `"At work, and 'no work'"', add
label define empstatd_lbl 116 `"At work, and other situation"', add
label define empstatd_lbl 117 `"At work, family holding, not specified"', add
label define empstatd_lbl 118 `"At work, family holding, not agricultural"', add
label define empstatd_lbl 119 `"At work, family holding, agricultural"', add
label define empstatd_lbl 120 `"Have job, not at work in reference period"', add
label define empstatd_lbl 130 `"Armed forces"', add
label define empstatd_lbl 131 `"Armed forces, at work"', add
label define empstatd_lbl 132 `"Armed forces, not at work in reference period"', add
label define empstatd_lbl 133 `"Military trainee"', add
label define empstatd_lbl 140 `"Marginally employed"', add
label define empstatd_lbl 200 `"Unemployed, not specified"', add
label define empstatd_lbl 201 `"Unemployed 6 or more months"', add
label define empstatd_lbl 202 `"Worked fewer than 6 months, permanent job"', add
label define empstatd_lbl 203 `"Worked fewer than 6 months, temporary job"', add
label define empstatd_lbl 210 `"Unemployed, experienced worker"', add
label define empstatd_lbl 220 `"Unemployed, new worker"', add
label define empstatd_lbl 230 `"No work available"', add
label define empstatd_lbl 240 `"Inactive unemployed"', add
label define empstatd_lbl 300 `"Inactive (not in labor force)"', add
label define empstatd_lbl 301 `"Unavailable jobseekers"', add
label define empstatd_lbl 302 `"Available potential jobseekers"', add
label define empstatd_lbl 310 `"Housework"', add
label define empstatd_lbl 320 `"Health reasons, unable to work, or disabled"', add
label define empstatd_lbl 321 `"Permanent disability"', add
label define empstatd_lbl 322 `"Temporary illness"', add
label define empstatd_lbl 323 `"Disabled or imprisoned"', add
label define empstatd_lbl 330 `"In school"', add
label define empstatd_lbl 340 `"Retirees and living on rent"', add
label define empstatd_lbl 341 `"Living on rents"', add
label define empstatd_lbl 342 `"Living on rents or pension"', add
label define empstatd_lbl 343 `"Retirees/pensioners"', add
label define empstatd_lbl 344 `"Retired"', add
label define empstatd_lbl 345 `"Pensioner"', add
label define empstatd_lbl 346 `"Non-retirement pension"', add
label define empstatd_lbl 347 `"Disability pension"', add
label define empstatd_lbl 348 `"Retired without benefits"', add
label define empstatd_lbl 350 `"Elderly"', add
label define empstatd_lbl 351 `"Elderly or disabled"', add
label define empstatd_lbl 360 `"Institutionalized"', add
label define empstatd_lbl 361 `"Prisoner"', add
label define empstatd_lbl 370 `"Intermittent worker"', add
label define empstatd_lbl 371 `"Not working, seasonal worker"', add
label define empstatd_lbl 372 `"Not working, occasional worker"', add
label define empstatd_lbl 380 `"Other income recipient"', add
label define empstatd_lbl 390 `"Inactive, other reasons"', add
label define empstatd_lbl 391 `"Too young to work"', add
label define empstatd_lbl 392 `"Dependent"', add
label define empstatd_lbl 999 `"Unknown/missing"', add
label values empstatd empstatd_lbl

label define labforce_lbl 1 `"No, not in the labor force"'
label define labforce_lbl 2 `"Yes, in the labor force"', add
label define labforce_lbl 8 `"Unknown"', add
label define labforce_lbl 9 `"NIU (not in universe)"', add
label values labforce labforce_lbl

label define classwk_lbl 0 `"NIU (not in universe)"'
label define classwk_lbl 1 `"Self-employed"', add
label define classwk_lbl 2 `"Wage/salary worker"', add
label define classwk_lbl 3 `"Unpaid worker"', add
label define classwk_lbl 4 `"Other"', add
label define classwk_lbl 9 `"Unknown/missing"', add
label values classwk classwk_lbl

label define classwkd_lbl 000 `"NIU (not in universe)"'
label define classwkd_lbl 100 `"Self-employed"', add
label define classwkd_lbl 101 `"Self-employed, unincorporated"', add
label define classwkd_lbl 102 `"Self-employed, incorporated"', add
label define classwkd_lbl 110 `"Employer"', add
label define classwkd_lbl 111 `"Sharecropper, employer"', add
label define classwkd_lbl 120 `"Working on own account"', add
label define classwkd_lbl 121 `"Own account, agriculture"', add
label define classwkd_lbl 122 `"Domestic worker, self-employed"', add
label define classwkd_lbl 123 `"Subsistence worker, own consumption"', add
label define classwkd_lbl 124 `"Own account, other"', add
label define classwkd_lbl 125 `"Own account, without temporary/unpaid help"', add
label define classwkd_lbl 126 `"Own account, with temporary/unpaid help"', add
label define classwkd_lbl 130 `"Member of cooperative"', add
label define classwkd_lbl 140 `"Sharecropper"', add
label define classwkd_lbl 141 `"Sharecropper, self-employed"', add
label define classwkd_lbl 142 `"Sharecropper, employee"', add
label define classwkd_lbl 150 `"Kibbutz member"', add
label define classwkd_lbl 199 `"Self-employed, not specified"', add
label define classwkd_lbl 200 `"Wage/salary worker"', add
label define classwkd_lbl 201 `"Management"', add
label define classwkd_lbl 202 `"Non-management"', add
label define classwkd_lbl 203 `"White collar (non-manual)"', add
label define classwkd_lbl 204 `"Blue collar (manual)"', add
label define classwkd_lbl 205 `"White or blue collar"', add
label define classwkd_lbl 206 `"Day laborer"', add
label define classwkd_lbl 207 `"Employee, with a permanent job"', add
label define classwkd_lbl 208 `"Employee, occasional, temporary, contract"', add
label define classwkd_lbl 209 `"Employee without legal contract"', add
label define classwkd_lbl 210 `"Wage/salary worker, private employer"', add
label define classwkd_lbl 211 `"Apprentice"', add
label define classwkd_lbl 212 `"Religious worker"', add
label define classwkd_lbl 213 `"Wage/salary worker, non-profit, NGO"', add
label define classwkd_lbl 214 `"White collar, private"', add
label define classwkd_lbl 215 `"Blue collar, private"', add
label define classwkd_lbl 216 `"Paid family worker"', add
label define classwkd_lbl 217 `"Cooperative employee"', add
label define classwkd_lbl 220 `"Wage/salary worker, government or public sector"', add
label define classwkd_lbl 221 `"Federal, government employee"', add
label define classwkd_lbl 222 `"State government employee"', add
label define classwkd_lbl 223 `"Local government employee"', add
label define classwkd_lbl 224 `"White collar, public"', add
label define classwkd_lbl 225 `"Blue collar, public"', add
label define classwkd_lbl 226 `"Public companies"', add
label define classwkd_lbl 227 `"Civil servants, local collectives"', add
label define classwkd_lbl 230 `"Domestic worker (work for private household)"', add
label define classwkd_lbl 240 `"Seasonal migrant"', add
label define classwkd_lbl 241 `"Seasonal migrant, no broker"', add
label define classwkd_lbl 242 `"Seasonal migrant, uses broker"', add
label define classwkd_lbl 250 `"Other wage and salary"', add
label define classwkd_lbl 251 `"Canal zone/commission employee"', add
label define classwkd_lbl 252 `"Government employment/training program"', add
label define classwkd_lbl 253 `"Mixed state/private enterprise/parastatal"', add
label define classwkd_lbl 254 `"Government public work program"', add
label define classwkd_lbl 255 `"State enterprise employee"', add
label define classwkd_lbl 256 `"Coordinated and continuous collaboration job"', add
label define classwkd_lbl 300 `"Unpaid worker"', add
label define classwkd_lbl 310 `"Unpaid family worker"', add
label define classwkd_lbl 320 `"Apprentice, unpaid or unspecified"', add
label define classwkd_lbl 330 `"Trainee"', add
label define classwkd_lbl 340 `"Apprentice or trainee"', add
label define classwkd_lbl 350 `"Works for others without wage"', add
label define classwkd_lbl 400 `"Other"', add
label define classwkd_lbl 999 `"Unknown/missing"', add
label values classwkd classwkd_lbl

label define wrkadd_lbl 1 `"No, only 1 job"'
label define wrkadd_lbl 2 `"Yes, has 2+ jobs"', add
label define wrkadd_lbl 8 `"Unknown"', add
label define wrkadd_lbl 9 `"NIU (not in universe)"', add
label values wrkadd wrkadd_lbl

label define empsect_lbl 00 `"NIU (not in universe)"'
label define empsect_lbl 10 `"Public"', add
label define empsect_lbl 20 `"Private"', add
label define empsect_lbl 21 `"Private, not elsewhere classified"', add
label define empsect_lbl 22 `"Individual/family enterprise, and self-employed"', add
label define empsect_lbl 23 `"Foreign"', add
label define empsect_lbl 30 `"Mixed: public-private or parastatal"', add
label define empsect_lbl 40 `"Collective or cooperative"', add
label define empsect_lbl 50 `"Foreign government or non-governmental organization"', add
label define empsect_lbl 60 `"Other, unspecified"', add
label define empsect_lbl 61 `"Canal zone"', add
label define empsect_lbl 62 `"Faith-based organization"', add
label define empsect_lbl 63 `"Informal sector"', add
label define empsect_lbl 99 `"Unknown"', add
label values empsect empsect_lbl

label define emplno_lbl 00 `"None"'
label define emplno_lbl 01 `"1 or 2 employees"', add
label define emplno_lbl 02 `"3 to 5"', add
label define emplno_lbl 03 `"3 to 9"', add
label define emplno_lbl 04 `"6 to 9"', add
label define emplno_lbl 05 `"6 or more"', add
label define emplno_lbl 06 `"10 or more"', add
label define emplno_lbl 08 `"Unknown"', add
label define emplno_lbl 09 `"NIU (not in universe)"', add
label values emplno emplno_lbl

label define estabsz_lbl 00 `"None"'
label define estabsz_lbl 01 `"1 employee"', add
label define estabsz_lbl 02 `"1 to 5"', add
label define estabsz_lbl 03 `"1 to 9"', add
label define estabsz_lbl 04 `"2 to 4"', add
label define estabsz_lbl 05 `"2 to 5"', add
label define estabsz_lbl 06 `"2 to 9"', add
label define estabsz_lbl 07 `"5"', add
label define estabsz_lbl 08 `"5 to 9"', add
label define estabsz_lbl 09 `"6 to 9"', add
label define estabsz_lbl 10 `"6 to 10"', add
label define estabsz_lbl 11 `"6 to 39"', add
label define estabsz_lbl 12 `"10 to 19"', add
label define estabsz_lbl 13 `"10 to 24"', add
label define estabsz_lbl 14 `"10 to 49"', add
label define estabsz_lbl 15 `"10 to 99"', add
label define estabsz_lbl 16 `"11 to 15"', add
label define estabsz_lbl 17 `"11 to 20"', add
label define estabsz_lbl 18 `"11 to 50"', add
label define estabsz_lbl 19 `"16 to 19"', add
label define estabsz_lbl 20 `"16 to 50"', add
label define estabsz_lbl 21 `"20 to 49"', add
label define estabsz_lbl 22 `"21 to 100"', add
label define estabsz_lbl 23 `"25 to 499"', add
label define estabsz_lbl 24 `"50 to 249"', add
label define estabsz_lbl 25 `"100 to 449"', add
label define estabsz_lbl 30 `"6 or more"', add
label define estabsz_lbl 31 `"10 or more"', add
label define estabsz_lbl 32 `"20 or more"', add
label define estabsz_lbl 33 `"40 or more"', add
label define estabsz_lbl 34 `"50 or more"', add
label define estabsz_lbl 35 `"51 or more"', add
label define estabsz_lbl 36 `"100 or more"', add
label define estabsz_lbl 37 `"250 or more"', add
label define estabsz_lbl 38 `"500 or more"', add
label define estabsz_lbl 98 `"Unknown"', add
label define estabsz_lbl 99 `"NIU (not in universe)"', add
label values estabsz estabsz_lbl

label define occisco_lbl 01 `"Legislators, senior officials and managers"'
label define occisco_lbl 02 `"Professionals"', add
label define occisco_lbl 03 `"Technicians and associate professionals"', add
label define occisco_lbl 04 `"Clerks"', add
label define occisco_lbl 05 `"Service workers and shop and market sales"', add
label define occisco_lbl 06 `"Skilled agricultural and fishery workers"', add
label define occisco_lbl 07 `"Crafts and related trades workers"', add
label define occisco_lbl 08 `"Plant and machine operators and assemblers"', add
label define occisco_lbl 09 `"Elementary occupations"', add
label define occisco_lbl 10 `"Armed forces"', add
label define occisco_lbl 11 `"Other occupations, unspecified or n.e.c."', add
label define occisco_lbl 97 `"Response suppressed"', add
label define occisco_lbl 98 `"Unknown"', add
label define occisco_lbl 99 `"NIU (not in universe)"', add
label values occisco occisco_lbl

label define indgen_lbl 000 `"NIU (not in universe)"'
label define indgen_lbl 010 `"Agriculture, fishing, and forestry"', add
label define indgen_lbl 020 `"Mining and extraction"', add
label define indgen_lbl 030 `"Manufacturing"', add
label define indgen_lbl 040 `"Electricity, gas, water and waste management"', add
label define indgen_lbl 050 `"Construction"', add
label define indgen_lbl 060 `"Wholesale and retail trade"', add
label define indgen_lbl 070 `"Hotels and restaurants"', add
label define indgen_lbl 080 `"Transportation, storage, and communications"', add
label define indgen_lbl 090 `"Financial services and insurance"', add
label define indgen_lbl 100 `"Public administration and defense"', add
label define indgen_lbl 110 `"Services, not specified"', add
label define indgen_lbl 111 `"Business services and real estate"', add
label define indgen_lbl 112 `"Education"', add
label define indgen_lbl 113 `"Health and social work"', add
label define indgen_lbl 114 `"Other services"', add
label define indgen_lbl 120 `"Private household services"', add
label define indgen_lbl 130 `"Other industry, n.e.c."', add
label define indgen_lbl 998 `"Response suppressed"', add
label define indgen_lbl 999 `"Unknown"', add
label values indgen indgen_lbl

label define incearn_lbl 00000000 `"0"'
label define incearn_lbl 00000001 `"1"', add
label define incearn_lbl 00000125 `"125"', add
label define incearn_lbl 00000375 `"375"', add
label define incearn_lbl 00000550 `"550"', add
label define incearn_lbl 00000625 `"625"', add
label define incearn_lbl 00000875 `"875"', add
label define incearn_lbl 00001050 `"1050"', add
label define incearn_lbl 00001250 `"1250"', add
label define incearn_lbl 00001750 `"1750"', add
label define incearn_lbl 00002000 `"2000"', add
label define incearn_lbl 00003500 `"3500"', add
label define incearn_lbl 00005000 `"5000"', add
label define incearn_lbl 00006500 `"6500"', add
label define incearn_lbl 00007700 `"7700"', add
label define incearn_lbl 00009200 `"9200"', add
label define incearn_lbl 00011000 `"11000"', add
label define incearn_lbl 00014000 `"14000"', add
label define incearn_lbl 00016000 `"16000"', add
label define incearn_lbl 01000000 `"1000000"', add
label define incearn_lbl 99999998 `"Missing/unknown"', add
label define incearn_lbl 99999999 `"NIU (not in universe)"', add
label values incearn incearn_lbl

label define incwage_lbl 0000000 `"0"'
label define incwage_lbl 0000125 `"125"', add
label define incwage_lbl 0000150 `"150"', add
label define incwage_lbl 0000400 `"400"', add
label define incwage_lbl 0000650 `"650"', add
label define incwage_lbl 0001000 `"1000"', add
label define incwage_lbl 0001050 `"1050"', add
label define incwage_lbl 0001087 `"1087"', add
label define incwage_lbl 0001500 `"1500"', add
label define incwage_lbl 0002150 `"2150"', add
label define incwage_lbl 0002250 `"2250"', add
label define incwage_lbl 0002500 `"2500"', add
label define incwage_lbl 0002650 `"2650"', add
label define incwage_lbl 0002750 `"2750"', add
label define incwage_lbl 0003000 `"3000"', add
label define incwage_lbl 0003500 `"3500"', add
label define incwage_lbl 0003817 `"3817"', add
label define incwage_lbl 0004500 `"4500"', add
label define incwage_lbl 0005500 `"5500"', add
label define incwage_lbl 0006500 `"6500"', add
label define incwage_lbl 0006588 `"6588"', add
label define incwage_lbl 0007500 `"7500"', add
label define incwage_lbl 0007705 `"7705"', add
label define incwage_lbl 0008500 `"8500"', add
label define incwage_lbl 0009154 `"9154"', add
label define incwage_lbl 0009500 `"9500"', add
label define incwage_lbl 0010500 `"10500"', add
label define incwage_lbl 0011286 `"11286"', add
label define incwage_lbl 0011500 `"11500"', add
label define incwage_lbl 0012500 `"12500"', add
label define incwage_lbl 0012577 `"12577"', add
label define incwage_lbl 0013065 `"13065"', add
label define incwage_lbl 0013500 `"13500"', add
label define incwage_lbl 0014500 `"14500"', add
label define incwage_lbl 0014795 `"14795"', add
label define incwage_lbl 0015000 `"15000"', add
label define incwage_lbl 0015500 `"15500"', add
label define incwage_lbl 0016500 `"16500"', add
label define incwage_lbl 0016517 `"16517"', add
label define incwage_lbl 0017500 `"17500"', add
label define incwage_lbl 0018179 `"18179"', add
label define incwage_lbl 0018265 `"18265"', add
label define incwage_lbl 0018500 `"18500"', add
label define incwage_lbl 0019500 `"19500"', add
label define incwage_lbl 0019891 `"19891"', add
label define incwage_lbl 0020000 `"20000"', add
label define incwage_lbl 0021000 `"21000"', add
label define incwage_lbl 0021494 `"21494"', add
label define incwage_lbl 0023373 `"23373"', add
label define incwage_lbl 0024587 `"24587"', add
label define incwage_lbl 0025988 `"25988"', add
label define incwage_lbl 0026000 `"26000"', add
label define incwage_lbl 0028908 `"28908"', add
label define incwage_lbl 0030000 `"30000"', add
label define incwage_lbl 0031387 `"31387"', add
label define incwage_lbl 0031513 `"31513"', add
label define incwage_lbl 0034837 `"34837"', add
label define incwage_lbl 0038463 `"38463"', add
label define incwage_lbl 0039061 `"39061"', add
label define incwage_lbl 0044650 `"44650"', add
label define incwage_lbl 0045331 `"45331"', add
label define incwage_lbl 0050000 `"50000"', add
label define incwage_lbl 0052045 `"52045"', add
label define incwage_lbl 0052200 `"52200"', add
label define incwage_lbl 0057000 `"57000"', add
label define incwage_lbl 0059141 `"59141"', add
label define incwage_lbl 0060000 `"60000"', add
label define incwage_lbl 0065000 `"65000"', add
label define incwage_lbl 0065665 `"65665"', add
label define incwage_lbl 0067020 `"67020"', add
label define incwage_lbl 0074716 `"74716"', add
label define incwage_lbl 0076043 `"76043"', add
label define incwage_lbl 0080000 `"80000"', add
label define incwage_lbl 0086787 `"86787"', add
label define incwage_lbl 0099243 `"99243"', add
label define incwage_lbl 0100000 `"100000"', add
label define incwage_lbl 0115885 `"115885"', add
label define incwage_lbl 0140325 `"140325"', add
label define incwage_lbl 0176153 `"176153"', add
label define incwage_lbl 0186000 `"186000"', add
label define incwage_lbl 0190000 `"190000"', add
label define incwage_lbl 0195000 `"195000"', add
label define incwage_lbl 0236635 `"236635"', add
label define incwage_lbl 0275653 `"275653"', add
label define incwage_lbl 0390000 `"390000"', add
label define incwage_lbl 0400000 `"400000"', add
label define incwage_lbl 0416000 `"416000"', add
label define incwage_lbl 0720000 `"720000"', add
label define incwage_lbl 0750000 `"750000"', add
label define incwage_lbl 0780000 `"780000"', add
label define incwage_lbl 1250000 `"1250000"', add
label define incwage_lbl 1260000 `"1260000"', add
label define incwage_lbl 1300000 `"1300000"', add
label define incwage_lbl 2250000 `"2250000"', add
label define incwage_lbl 2280000 `"2280000"', add
label define incwage_lbl 2340000 `"2340000"', add
label define incwage_lbl 3000000 `"3000000"', add
label define incwage_lbl 9999998 `"Unknown"', add
label define incwage_lbl 9999999 `"NIU (not in universe)"', add
label values incwage incwage_lbl

label define incself_lbl 000000 `"No income"'
label define incself_lbl 001050 `"1050"', add
label define incself_lbl 001619 `"1619"', add
label define incself_lbl 002250 `"2250"', add
label define incself_lbl 002750 `"2750"', add
label define incself_lbl 003500 `"3500"', add
label define incself_lbl 004500 `"4500"', add
label define incself_lbl 005230 `"5230"', add
label define incself_lbl 005500 `"5500"', add
label define incself_lbl 006500 `"6500"', add
label define incself_lbl 007500 `"7500"', add
label define incself_lbl 008500 `"8500"', add
label define incself_lbl 009414 `"9414"', add
label define incself_lbl 009500 `"9500"', add
label define incself_lbl 010500 `"10500"', add
label define incself_lbl 011500 `"11500"', add
label define incself_lbl 012500 `"12500"', add
label define incself_lbl 013903 `"13903"', add
label define incself_lbl 014000 `"14000"', add
label define incself_lbl 016000 `"16000"', add
label define incself_lbl 018500 `"18500"', add
label define incself_lbl 018591 `"18591"', add
label define incself_lbl 023471 `"23471"', add
label define incself_lbl 023500 `"23500"', add
label define incself_lbl 028599 `"28599"', add
label define incself_lbl 033500 `"33500"', add
label define incself_lbl 034082 `"34082"', add
label define incself_lbl 039662 `"39662"', add
label define incself_lbl 004000 `"4000"', add
label define incself_lbl 045227 `"45227"', add
label define incself_lbl 051208 `"51208"', add
label define incself_lbl 058295 `"58295"', add
label define incself_lbl 067189 `"67189"', add
label define incself_lbl 078075 `"78075"', add
label define incself_lbl 091493 `"91493"', add
label define incself_lbl 108947 `"108947"', add
label define incself_lbl 132615 `"132615"', add
label define incself_lbl 168359 `"168359"', add
label define incself_lbl 235173 `"235173"', add
label define incself_lbl 279950 `"279950"', add
label define incself_lbl 999998 `"Unknown"', add
label define incself_lbl 999999 `"NIU (not in universe)"', add
label values incself incself_lbl

label define geomig1_p_lbl 051901 `"Yerevan [Province: Armenia]"'
label define geomig1_p_lbl 051902 `"Aragatsotn [Province: Armenia]"', add
label define geomig1_p_lbl 051903 `"Ararat [Province: Armenia]"', add
label define geomig1_p_lbl 051904 `"Armavir [Province: Armenia]"', add
label define geomig1_p_lbl 051905 `"Gegharkunik [Province: Armenia]"', add
label define geomig1_p_lbl 051906 `"Lori [Province: Armenia]"', add
label define geomig1_p_lbl 051907 `"Kotayk [Province: Armenia]"', add
label define geomig1_p_lbl 051908 `"Shirak [Province: Armenia]"', add
label define geomig1_p_lbl 051909 `"Syunik [Province: Armenia]"', add
label define geomig1_p_lbl 051910 `"Vayots Dzor [Province: Armenia]"', add
label define geomig1_p_lbl 051911 `"Tavush [Province: Armenia]"', add
label define geomig1_p_lbl 051912 `"Nagorno-Karabagh [Province: Armenia]"', add
label define geomig1_p_lbl 051997 `"Foreign country [Province: Armenia]"', add
label define geomig1_p_lbl 051998 `"Unknown [Province: Armenia]"', add
label define geomig1_p_lbl 051999 `"NIU (not in universe) [Province: Armenia]"', add
label define geomig1_p_lbl 112001 `"Brest [Region: Belarus]"', add
label define geomig1_p_lbl 112002 `"Vitebsk [Region: Belarus]"', add
label define geomig1_p_lbl 112003 `"Gomel [Region: Belarus]"', add
label define geomig1_p_lbl 112004 `"Grodno [Region: Belarus]"', add
label define geomig1_p_lbl 112006 `"Minsk, Minsk City [Region: Belarus]"', add
label define geomig1_p_lbl 112007 `"Mogilev [Region: Belarus]"', add
label define geomig1_p_lbl 112097 `"Foreign country [Region: Belarus]"', add
label define geomig1_p_lbl 112098 `"Unknown [Region: Belarus]"', add
label define geomig1_p_lbl 112099 `"NIU (not in universe) [Region: Belarus]"', add
label define geomig1_p_lbl 204001 `"Alibori [Department: Benin]"', add
label define geomig1_p_lbl 204002 `"Atacora [Department: Benin]"', add
label define geomig1_p_lbl 204003 `"Atlantique [Department: Benin]"', add
label define geomig1_p_lbl 204004 `"Borgou [Department: Benin]"', add
label define geomig1_p_lbl 204005 `"Collines [Department: Benin]"', add
label define geomig1_p_lbl 204006 `"Couffo [Department: Benin]"', add
label define geomig1_p_lbl 204007 `"Donga [Department: Benin]"', add
label define geomig1_p_lbl 204008 `"Littoral [Department: Benin]"', add
label define geomig1_p_lbl 204009 `"Mono [Department: Benin]"', add
label define geomig1_p_lbl 204010 `"Oueme [Department: Benin]"', add
label define geomig1_p_lbl 204011 `"Plateau [Department: Benin]"', add
label define geomig1_p_lbl 204012 `"Zou [Department: Benin]"', add
label define geomig1_p_lbl 204097 `"Abroad [Department: Benin]"', add
label define geomig1_p_lbl 204098 `"Unknown [Department: Benin]"', add
label define geomig1_p_lbl 204099 `"NIU (not in universe) [Department: Benin]"', add
label define geomig1_p_lbl 076011 `"Rondônia [State: Brazil]"', add
label define geomig1_p_lbl 076012 `"Acre [State: Brazil]"', add
label define geomig1_p_lbl 076013 `"Amazonas [State: Brazil]"', add
label define geomig1_p_lbl 076014 `"Roraima [State: Brazil]"', add
label define geomig1_p_lbl 076015 `"Pará [State: Brazil]"', add
label define geomig1_p_lbl 076016 `"Amapá [State: Brazil]"', add
label define geomig1_p_lbl 076021 `"Maranhão [State: Brazil]"', add
label define geomig1_p_lbl 076022 `"Piauí [State: Brazil]"', add
label define geomig1_p_lbl 076023 `"Ceará [State: Brazil]"', add
label define geomig1_p_lbl 076024 `"Rio Grande do Norte [State: Brazil]"', add
label define geomig1_p_lbl 076025 `"Paraíba [State: Brazil]"', add
label define geomig1_p_lbl 076026 `"Pernambuco, Arquipelago de Fernando de Noronha [State: Brazil]"', add
label define geomig1_p_lbl 076027 `"Alagoas [State: Brazil]"', add
label define geomig1_p_lbl 076028 `"Sergipe [State: Brazil]"', add
label define geomig1_p_lbl 076029 `"Bahia [State: Brazil]"', add
label define geomig1_p_lbl 076031 `"Minas Gerais [State: Brazil]"', add
label define geomig1_p_lbl 076032 `"Espírito Santo [State: Brazil]"', add
label define geomig1_p_lbl 076033 `"Rio de Janeiro, Guanabara [State: Brazil]"', add
label define geomig1_p_lbl 076035 `"São Paulo [State: Brazil]"', add
label define geomig1_p_lbl 076036 `"Serra dos Aimorés [State: Brazil]"', add
label define geomig1_p_lbl 076041 `"Paraná [State: Brazil]"', add
label define geomig1_p_lbl 076042 `"Santa Catarina [State: Brazil]"', add
label define geomig1_p_lbl 076043 `"Rio Grande do Sul [State: Brazil]"', add
label define geomig1_p_lbl 076051 `"Mato Grosso do Sul, Mato Grosso [State: Brazil]"', add
label define geomig1_p_lbl 076052 `"Goiás, Tocantins [State: Brazil]"', add
label define geomig1_p_lbl 076053 `"Distrito Federal [State: Brazil]"', add
label define geomig1_p_lbl 076054 `"Brazil, unspecified [State: Brazil]"', add
label define geomig1_p_lbl 076097 `"Abroad [State: Brazil]"', add
label define geomig1_p_lbl 076098 `"Unknown [State: Brazil]"', add
label define geomig1_p_lbl 076099 `"NIU (not in universe) [State: Brazil]"', add
label define geomig1_p_lbl 116001 `"Banteay Meanchey [Province: Cambodia]"', add
label define geomig1_p_lbl 116002 `"Battambang [Province: Cambodia]"', add
label define geomig1_p_lbl 116003 `"Kampong Cham, Tbong Khmum [Province: Cambodia]"', add
label define geomig1_p_lbl 116004 `"Kampong Chhnang [Province: Cambodia]"', add
label define geomig1_p_lbl 116005 `"Kampong Speu [Province: Cambodia]"', add
label define geomig1_p_lbl 116006 `"Kampong Thom [Province: Cambodia]"', add
label define geomig1_p_lbl 116007 `"Kampot [Province: Cambodia]"', add
label define geomig1_p_lbl 116008 `"Phnom Penh, Kandal [Province: Cambodia]"', add
label define geomig1_p_lbl 116009 `"Koh Kong, Preah Sihanouk [Province: Cambodia]"', add
label define geomig1_p_lbl 116010 `"Kratie [Province: Cambodia]"', add
label define geomig1_p_lbl 116011 `"Mondul Kiri [Province: Cambodia]"', add
label define geomig1_p_lbl 116013 `"Preah Vihear [Province: Cambodia]"', add
label define geomig1_p_lbl 116014 `"Prey Veng [Province: Cambodia]"', add
label define geomig1_p_lbl 116015 `"Pursat [Province: Cambodia]"', add
label define geomig1_p_lbl 116016 `"Ratanak Kiri [Province: Cambodia]"', add
label define geomig1_p_lbl 116017 `"Siem Reap, Otdar Meanchey [Province: Cambodia]"', add
label define geomig1_p_lbl 116019 `"Stung Treng [Province: Cambodia]"', add
label define geomig1_p_lbl 116020 `"Svay Rieng [Province: Cambodia]"', add
label define geomig1_p_lbl 116021 `"Takeo [Province: Cambodia]"', add
label define geomig1_p_lbl 116023 `"Kep [Province: Cambodia]"', add
label define geomig1_p_lbl 116024 `"Pailin [Province: Cambodia]"', add
label define geomig1_p_lbl 116097 `"Foreign country [Province: Cambodia]"', add
label define geomig1_p_lbl 116098 `"Unknown [Province: Cambodia]"', add
label define geomig1_p_lbl 116099 `"NIU (not in universe) [Province: Cambodia]"', add
label define geomig1_p_lbl 120002 `"Centre, Sud [Province: Cameroon]"', add
label define geomig1_p_lbl 120003 `"Est [Province: Cameroon]"', add
label define geomig1_p_lbl 120004 `"Nord, Adamoua, Extrème Nord [Province: Cameroon]"', add
label define geomig1_p_lbl 120005 `"Littoral [Province: Cameroon]"', add
label define geomig1_p_lbl 120007 `"Nord Ouest [Province: Cameroon]"', add
label define geomig1_p_lbl 120008 `"Ouest [Province: Cameroon]"', add
label define geomig1_p_lbl 120010 `"Sud Ouest [Province: Cameroon]"', add
label define geomig1_p_lbl 120096 `"Cameroon - unknown arrondissement [Province: Cameroon]"', add
label define geomig1_p_lbl 120097 `"Foreign country [Province: Cameroon]"', add
label define geomig1_p_lbl 120098 `"Unknown [Province: Cameroon]"', add
label define geomig1_p_lbl 120099 `"NIU (not in universe) [Province: Cameroon]"', add
label define geomig1_p_lbl 152001 `"Tarapaca [Province: Chile]"', add
label define geomig1_p_lbl 152002 `"Antofagasta [Province: Chile]"', add
label define geomig1_p_lbl 152003 `"Atacama [Province: Chile]"', add
label define geomig1_p_lbl 152004 `"Coquimbo [Province: Chile]"', add
label define geomig1_p_lbl 152005 `"Aconcagua [Province: Chile]"', add
label define geomig1_p_lbl 152006 `"Valparaíso [Province: Chile]"', add
label define geomig1_p_lbl 152007 `"Santiago [Province: Chile]"', add
label define geomig1_p_lbl 152008 `"O'Higgins [Province: Chile]"', add
label define geomig1_p_lbl 152009 `"Colchagua [Province: Chile]"', add
label define geomig1_p_lbl 152010 `"Curicó [Province: Chile]"', add
label define geomig1_p_lbl 152011 `"Talca [Province: Chile]"', add
label define geomig1_p_lbl 152012 `"Maule [Province: Chile]"', add
label define geomig1_p_lbl 152013 `"Linares [Province: Chile]"', add
label define geomig1_p_lbl 152014 `"Ñuble [Province: Chile]"', add
label define geomig1_p_lbl 152015 `"Concepción [Province: Chile]"', add
label define geomig1_p_lbl 152016 `"Arauco [Province: Chile]"', add
label define geomig1_p_lbl 152017 `"Bío Bío [Province: Chile]"', add
label define geomig1_p_lbl 152018 `"Malleco [Province: Chile]"', add
label define geomig1_p_lbl 152019 `"Cautín [Province: Chile]"', add
label define geomig1_p_lbl 152020 `"Valdivia [Province: Chile]"', add
label define geomig1_p_lbl 152021 `"Osorno [Province: Chile]"', add
label define geomig1_p_lbl 152022 `"Llanquihue [Province: Chile]"', add
label define geomig1_p_lbl 152023 `"Chiloé [Province: Chile]"', add
label define geomig1_p_lbl 152024 `"Aysén [Province: Chile]"', add
label define geomig1_p_lbl 152025 `"Magallanes [Province: Chile]"', add
label define geomig1_p_lbl 152097 `"Foreign country [Province: Chile]"', add
label define geomig1_p_lbl 152098 `"Unknown [Province: Chile]"', add
label define geomig1_p_lbl 152099 `"NIU (not in universe) [Province: Chile]"', add
label define geomig1_p_lbl 170005 `"Antioquia [Department: Colombia]"', add
label define geomig1_p_lbl 170008 `"Atlántico [Department: Colombia]"', add
label define geomig1_p_lbl 170011 `"Bogotá D.C., Cundinamarca [Department: Colombia]"', add
label define geomig1_p_lbl 170013 `"Bolívar, Sucre [Department: Colombia]"', add
label define geomig1_p_lbl 170015 `"Boyacá, Casanare [Department: Colombia]"', add
label define geomig1_p_lbl 170018 `"Caquetá [Department: Colombia]"', add
label define geomig1_p_lbl 170019 `"Cauca [Department: Colombia]"', add
label define geomig1_p_lbl 170023 `"Córdoba [Department: Colombia]"', add
label define geomig1_p_lbl 170027 `"Chocó [Department: Colombia]"', add
label define geomig1_p_lbl 170041 `"Huila [Department: Colombia]"', add
label define geomig1_p_lbl 170044 `"La Guajira [Department: Colombia]"', add
label define geomig1_p_lbl 170050 `"Meta [Department: Colombia]"', add
label define geomig1_p_lbl 170052 `"Nariño [Department: Colombia]"', add
label define geomig1_p_lbl 170054 `"Cesar, Norte De Santander, Magdalena [Department: Colombia]"', add
label define geomig1_p_lbl 170066 `"Caldas, Quindío, Risaralda [Department: Colombia]"', add
label define geomig1_p_lbl 170068 `"Santander [Department: Colombia]"', add
label define geomig1_p_lbl 170073 `"Tolima [Department: Colombia]"', add
label define geomig1_p_lbl 170076 `"Valle Del Cauca [Department: Colombia]"', add
label define geomig1_p_lbl 170081 `"Arauca [Department: Colombia]"', add
label define geomig1_p_lbl 170086 `"Putumayo [Department: Colombia]"', add
label define geomig1_p_lbl 170088 `"Archipiélago De San Andrés Y Providencia [Department: Colombia]"', add
label define geomig1_p_lbl 170095 `"Amazonas, Guaviare, Vaupés, Vichada, Guainía [Department: Colombia]"', add
label define geomig1_p_lbl 170097 `"Abroad [Department: Colombia]"', add
label define geomig1_p_lbl 170098 `"Unknown [Department: Colombia]"', add
label define geomig1_p_lbl 188001 `"San José [Province: Costa Rica]"', add
label define geomig1_p_lbl 188002 `"Alajuela [Province: Costa Rica]"', add
label define geomig1_p_lbl 188003 `"Cartago [Province: Costa Rica]"', add
label define geomig1_p_lbl 188004 `"Heredia [Province: Costa Rica]"', add
label define geomig1_p_lbl 188005 `"Guanacaste [Province: Costa Rica]"', add
label define geomig1_p_lbl 188006 `"Puntarenas [Province: Costa Rica]"', add
label define geomig1_p_lbl 188007 `"Limón [Province: Costa Rica]"', add
label define geomig1_p_lbl 188097 `"Foreign country [Province: Costa Rica]"', add
label define geomig1_p_lbl 188098 `"Unknown [Province: Costa Rica]"', add
label define geomig1_p_lbl 192021 `"Pinar del Río, Artemisa, Mayabeque [Province: Cuba]"', add
label define geomig1_p_lbl 192023 `"La Habana [Province: Cuba]"', add
label define geomig1_p_lbl 192025 `"Matanzas [Province: Cuba]"', add
label define geomig1_p_lbl 192026 `"Villa Clara [Province: Cuba]"', add
label define geomig1_p_lbl 192027 `"Cienfuegos [Province: Cuba]"', add
label define geomig1_p_lbl 192028 `"Sancti Spíritus [Province: Cuba]"', add
label define geomig1_p_lbl 192029 `"Ciego de Ávila [Province: Cuba]"', add
label define geomig1_p_lbl 192030 `"Camagüey [Province: Cuba]"', add
label define geomig1_p_lbl 192031 `"Las Tunas [Province: Cuba]"', add
label define geomig1_p_lbl 192032 `"Holguín [Province: Cuba]"', add
label define geomig1_p_lbl 192033 `"Granma [Province: Cuba]"', add
label define geomig1_p_lbl 192034 `"Santiago de Cuba [Province: Cuba]"', add
label define geomig1_p_lbl 192035 `"Guantánamo [Province: Cuba]"', add
label define geomig1_p_lbl 192040 `"Isla de la Juventud [Province: Cuba]"', add
label define geomig1_p_lbl 192997 `"Abroad [Province: Cuba]"', add
label define geomig1_p_lbl 192998 `"Unknown [Province: Cuba]"', add
label define geomig1_p_lbl 192999 `"NIU (not in universe) [Province: Cuba]"', add
label define geomig1_p_lbl 218001 `"Azuay [Province: Ecuador]"', add
label define geomig1_p_lbl 218002 `"Bolívar [Province: Ecuador]"', add
label define geomig1_p_lbl 218004 `"Carchi [Province: Ecuador]"', add
label define geomig1_p_lbl 218005 `"Cotopaxi [Province: Ecuador]"', add
label define geomig1_p_lbl 218006 `"Chimborazo [Province: Ecuador]"', add
label define geomig1_p_lbl 218007 `"El Oro [Province: Ecuador]"', add
label define geomig1_p_lbl 218009 `"Cañar, Esmeraldas, Guayas, Manabí, Manga del Cura [Disputed canton], Pichincha, El Piedrero [Disputed canton], Los Ríos, Santa Elena, Santo Domingo de las Tsáchilas, Galápagos [Province: Ecuador]"', add
label define geomig1_p_lbl 218010 `"Imbabura, Las Golondrinas [Disputed canton] [Province: Ecuador]"', add
label define geomig1_p_lbl 218011 `"Loja [Province: Ecuador]"', add
label define geomig1_p_lbl 218014 `"Morona Santiago [Province: Ecuador]"', add
label define geomig1_p_lbl 218016 `"Pastaza [Province: Ecuador]"', add
label define geomig1_p_lbl 218018 `"Tungurahua [Province: Ecuador]"', add
label define geomig1_p_lbl 218019 `"Zamora Chinchipe [Province: Ecuador]"', add
label define geomig1_p_lbl 218021 `"Napo, Orellana, Sucumbíos [Province: Ecuador]"', add
label define geomig1_p_lbl 218097 `"Foreign country [Province: Ecuador]"', add
label define geomig1_p_lbl 218098 `"Unknown and Disputed Zones [Province: Ecuador]"', add
label define geomig1_p_lbl 218999 `"NIU (not in universe) [Province: Ecuador]"', add
label define geomig1_p_lbl 818000 `"Reported same governorate as household location [Governorate: Egypt]"', add
label define geomig1_p_lbl 818001 `"Giza, 6th October City, Cairo, Helwan [Governorate: Egypt]"', add
label define geomig1_p_lbl 818002 `"Alexandria [Governorate: Egypt]"', add
label define geomig1_p_lbl 818003 `"Port Said [Governorate: Egypt]"', add
label define geomig1_p_lbl 818004 `"Suez [Governorate: Egypt]"', add
label define geomig1_p_lbl 818011 `"Demietta [Governorate: Egypt]"', add
label define geomig1_p_lbl 818012 `"Dakahlia [Governorate: Egypt]"', add
label define geomig1_p_lbl 818013 `"Sharkia [Governorate: Egypt]"', add
label define geomig1_p_lbl 818014 `"Kaliobia [Governorate: Egypt]"', add
label define geomig1_p_lbl 818015 `"Kafr Sheikh [Governorate: Egypt]"', add
label define geomig1_p_lbl 818016 `"Gharbia [Governorate: Egypt]"', add
label define geomig1_p_lbl 818018 `"Menoufia, Behera [Governorate: Egypt]"', add
label define geomig1_p_lbl 818019 `"Ismailia [Governorate: Egypt]"', add
label define geomig1_p_lbl 818022 `"Bani Swif [Governorate: Egypt]"', add
label define geomig1_p_lbl 818023 `"Fayoum [Governorate: Egypt]"', add
label define geomig1_p_lbl 818024 `"Menia [Governorate: Egypt]"', add
label define geomig1_p_lbl 818025 `"Asiut [Governorate: Egypt]"', add
label define geomig1_p_lbl 818026 `"Sohag [Governorate: Egypt]"', add
label define geomig1_p_lbl 818027 `"Qena, Luxor [Governorate: Egypt]"', add
label define geomig1_p_lbl 818028 `"Aswan [Governorate: Egypt]"', add
label define geomig1_p_lbl 818031 `"Red Sea [Governorate: Egypt]"', add
label define geomig1_p_lbl 818032 `"New Valley [Governorate: Egypt]"', add
label define geomig1_p_lbl 818033 `"Marsa Matroh [Governorate: Egypt]"', add
label define geomig1_p_lbl 818034 `"North Sinai [Governorate: Egypt]"', add
label define geomig1_p_lbl 818035 `"South Sinai [Governorate: Egypt]"', add
label define geomig1_p_lbl 818097 `"Abroad [Governorate: Egypt]"', add
label define geomig1_p_lbl 818098 `"Unknown [Governorate: Egypt]"', add
label define geomig1_p_lbl 818099 `"NIU (not in universe) [Governorate: Egypt]"', add
label define geomig1_p_lbl 222001 `"Ahuachapán [Department: El Salvador]"', add
label define geomig1_p_lbl 222002 `"Santa Ana [Department: El Salvador]"', add
label define geomig1_p_lbl 222003 `"Sonsonate [Department: El Salvador]"', add
label define geomig1_p_lbl 222004 `"Chalatenango [Department: El Salvador]"', add
label define geomig1_p_lbl 222005 `"La Libertad [Department: El Salvador]"', add
label define geomig1_p_lbl 222006 `"San Salvador [Department: El Salvador]"', add
label define geomig1_p_lbl 222007 `"Cuscatlán [Department: El Salvador]"', add
label define geomig1_p_lbl 222008 `"La Paz [Department: El Salvador]"', add
label define geomig1_p_lbl 222009 `"Cabañas [Department: El Salvador]"', add
label define geomig1_p_lbl 222010 `"San Vicente [Department: El Salvador]"', add
label define geomig1_p_lbl 222011 `"Usulután [Department: El Salvador]"', add
label define geomig1_p_lbl 222012 `"San Miguel [Department: El Salvador]"', add
label define geomig1_p_lbl 222013 `"Morazán [Department: El Salvador]"', add
label define geomig1_p_lbl 222014 `"La Unión [Department: El Salvador]"', add
label define geomig1_p_lbl 222097 `"Abroad [Department: El Salvador]"', add
label define geomig1_p_lbl 222098 `"Unknown [Department: El Salvador]"', add
label define geomig1_p_lbl 222099 `"NIU (not in universe) [Department: El Salvador]"', add
label define geomig1_p_lbl 231001 `"Tigray [Region: Ethiopia]"', add
label define geomig1_p_lbl 231002 `"Affar [Region: Ethiopia]"', add
label define geomig1_p_lbl 231003 `"Amhara [Region: Ethiopia]"', add
label define geomig1_p_lbl 231004 `"Oromia, Somali [Region: Ethiopia]"', add
label define geomig1_p_lbl 231006 `"Benishangul-Gumuz [Region: Ethiopia]"', add
label define geomig1_p_lbl 231007 `"Southern Nations, Nationalities, and Peoples (SNNP) [Region: Ethiopia]"', add
label define geomig1_p_lbl 231012 `"Gambela [Region: Ethiopia]"', add
label define geomig1_p_lbl 231013 `"Harari [Region: Ethiopia]"', add
label define geomig1_p_lbl 231014 `"Addis Ababa [Region: Ethiopia]"', add
label define geomig1_p_lbl 231015 `"Dire Dawa [Region: Ethiopia]"', add
label define geomig1_p_lbl 231097 `"Abroad [Region: Ethiopia]"', add
label define geomig1_p_lbl 231099 `"NIU [Region: Ethiopia]"', add
label define geomig1_p_lbl 250001 `"Guadeloupe [Region: France]"', add
label define geomig1_p_lbl 250002 `"Martinique [Region: France]"', add
label define geomig1_p_lbl 250003 `"French Guyana [Region: France]"', add
label define geomig1_p_lbl 250004 `"Réunion Island [Region: France]"', add
label define geomig1_p_lbl 250011 `"Île-de-France [Region: France]"', add
label define geomig1_p_lbl 250021 `"Champagne-Ardenne [Region: France]"', add
label define geomig1_p_lbl 250022 `"Picardy [Region: France]"', add
label define geomig1_p_lbl 250023 `"Upper Normandy [Region: France]"', add
label define geomig1_p_lbl 250024 `"Centre [Region: France]"', add
label define geomig1_p_lbl 250025 `"Lower Normandy [Region: France]"', add
label define geomig1_p_lbl 250026 `"Burgundy [Region: France]"', add
label define geomig1_p_lbl 250031 `"North Pas-de-Calais [Region: France]"', add
label define geomig1_p_lbl 250041 `"Lorraine [Region: France]"', add
label define geomig1_p_lbl 250042 `"Alsace [Region: France]"', add
label define geomig1_p_lbl 250043 `"Franche-Comté [Region: France]"', add
label define geomig1_p_lbl 250052 `"Loire Valley [Region: France]"', add
label define geomig1_p_lbl 250053 `"Brittany [Region: France]"', add
label define geomig1_p_lbl 250054 `"Poitou-Charentes [Region: France]"', add
label define geomig1_p_lbl 250072 `"Aquitaine [Region: France]"', add
label define geomig1_p_lbl 250073 `"Midi-Pyrénées [Region: France]"', add
label define geomig1_p_lbl 250074 `"Limousin [Region: France]"', add
label define geomig1_p_lbl 250082 `"Rhône-Alpes [Region: France]"', add
label define geomig1_p_lbl 250083 `"Auvergne [Region: France]"', add
label define geomig1_p_lbl 250091 `"Languedoc-Roussillon [Region: France]"', add
label define geomig1_p_lbl 250093 `"Provence-Alpes-Riviera [Region: France]"', add
label define geomig1_p_lbl 250094 `"Corsica [Region: France]"', add
label define geomig1_p_lbl 250097 `"Abroad [Region: France]"', add
label define geomig1_p_lbl 320001 `"Guatemala [Department: Guatemala]"', add
label define geomig1_p_lbl 320002 `"El Progreso [Department: Guatemala]"', add
label define geomig1_p_lbl 320003 `"Sacatepéquez [Department: Guatemala]"', add
label define geomig1_p_lbl 320004 `"Chimaltenango [Department: Guatemala]"', add
label define geomig1_p_lbl 320005 `"Escuintla [Department: Guatemala]"', add
label define geomig1_p_lbl 320006 `"Santa Rosa [Department: Guatemala]"', add
label define geomig1_p_lbl 320007 `"Sololá [Department: Guatemala]"', add
label define geomig1_p_lbl 320008 `"Totonicapán [Department: Guatemala]"', add
label define geomig1_p_lbl 320009 `"Quetzaltenango [Department: Guatemala]"', add
label define geomig1_p_lbl 320010 `"Suchitepéquez [Department: Guatemala]"', add
label define geomig1_p_lbl 320011 `"Retalhuleu [Department: Guatemala]"', add
label define geomig1_p_lbl 320012 `"San Marcos [Department: Guatemala]"', add
label define geomig1_p_lbl 320013 `"Huehuetenango [Department: Guatemala]"', add
label define geomig1_p_lbl 320014 `"Quiché [Department: Guatemala]"', add
label define geomig1_p_lbl 320015 `"Baja Verapaz [Department: Guatemala]"', add
label define geomig1_p_lbl 320016 `"Alta Verapaz [Department: Guatemala]"', add
label define geomig1_p_lbl 320017 `"Petén [Department: Guatemala]"', add
label define geomig1_p_lbl 320018 `"Izabal [Department: Guatemala]"', add
label define geomig1_p_lbl 320019 `"Zacapa [Department: Guatemala]"', add
label define geomig1_p_lbl 320020 `"Chiquimula [Department: Guatemala]"', add
label define geomig1_p_lbl 320021 `"Jalapa [Department: Guatemala]"', add
label define geomig1_p_lbl 320022 `"Jutiapa [Department: Guatemala]"', add
label define geomig1_p_lbl 320097 `"Foreign Country [Department: Guatemala]"', add
label define geomig1_p_lbl 320098 `"Unknown [Department: Guatemala]"', add
label define geomig1_p_lbl 320099 `"NIU [Department: Guatemala]"', add
label define geomig1_p_lbl 324011 `"Boffa [Region: Guinea]"', add
label define geomig1_p_lbl 324012 `"Boké [Region: Guinea]"', add
label define geomig1_p_lbl 324013 `"Fria [Region: Guinea]"', add
label define geomig1_p_lbl 324014 `"Gaoual [Region: Guinea]"', add
label define geomig1_p_lbl 324015 `"Koundara [Region: Guinea]"', add
label define geomig1_p_lbl 324021 `"Conakry [Region: Guinea]"', add
label define geomig1_p_lbl 324031 `"Dabola [Region: Guinea]"', add
label define geomig1_p_lbl 324032 `"Dinguiraye [Region: Guinea]"', add
label define geomig1_p_lbl 324033 `"Faranah [Region: Guinea]"', add
label define geomig1_p_lbl 324034 `"Kissidougou [Region: Guinea]"', add
label define geomig1_p_lbl 324041 `"Kankan [Region: Guinea]"', add
label define geomig1_p_lbl 324042 `"Kérouané [Region: Guinea]"', add
label define geomig1_p_lbl 324043 `"Kouroussa [Region: Guinea]"', add
label define geomig1_p_lbl 324044 `"Mandiana [Region: Guinea]"', add
label define geomig1_p_lbl 324045 `"Siguiri [Region: Guinea]"', add
label define geomig1_p_lbl 324051 `"Coyah, Dubréka [Region: Guinea]"', add
label define geomig1_p_lbl 324053 `"Forécariah [Region: Guinea]"', add
label define geomig1_p_lbl 324054 `"Kindia [Region: Guinea]"', add
label define geomig1_p_lbl 324055 `"Télimélé [Region: Guinea]"', add
label define geomig1_p_lbl 324061 `"Koubia [Region: Guinea]"', add
label define geomig1_p_lbl 324062 `"Labé [Region: Guinea]"', add
label define geomig1_p_lbl 324063 `"Lélouma [Region: Guinea]"', add
label define geomig1_p_lbl 324064 `"Mali [Region: Guinea]"', add
label define geomig1_p_lbl 324065 `"Tougué [Region: Guinea]"', add
label define geomig1_p_lbl 324071 `"Dalaba [Region: Guinea]"', add
label define geomig1_p_lbl 324072 `"Mamou [Region: Guinea]"', add
label define geomig1_p_lbl 324073 `"Pita [Region: Guinea]"', add
label define geomig1_p_lbl 324081 `"Beyla [Region: Guinea]"', add
label define geomig1_p_lbl 324082 `"Guéckédou [Region: Guinea]"', add
label define geomig1_p_lbl 324083 `"Lola [Region: Guinea]"', add
label define geomig1_p_lbl 324084 `"Macenta [Region: Guinea]"', add
label define geomig1_p_lbl 324085 `"Nzerekore [Region: Guinea]"', add
label define geomig1_p_lbl 324086 `"Yomou [Region: Guinea]"', add
label define geomig1_p_lbl 324096 `"Guinea, place unknown [Region: Guinea]"', add
label define geomig1_p_lbl 324097 `"Foreign country [Region: Guinea]"', add
label define geomig1_p_lbl 324098 `"Unknown [Region: Guinea]"', add
label define geomig1_p_lbl 324099 `"NIU (not in universe) [Region: Guinea]"', add
label define geomig1_p_lbl 332003 `"Nord (North) and Nord'est (North East) [Department: Haiti]"', add
label define geomig1_p_lbl 332006 `"Centre (Central), L'Artibonite, Ouest (West), Sud'Est (South East) [Department: Haiti]"', add
label define geomig1_p_lbl 332007 `"Grand'Anse, Nippes, Sud (South) [Department: Haiti]"', add
label define geomig1_p_lbl 332009 `"Nord'Ouest (North West) [Department: Haiti]"', add
label define geomig1_p_lbl 332097 `"Foreign Country [Department: Haiti]"', add
label define geomig1_p_lbl 332098 `"Unknown [Department: Haiti]"', add
label define geomig1_p_lbl 356001 `"Jammu and Kashmir [State: India]"', add
label define geomig1_p_lbl 356002 `"Himachal Pradesh [State: India]"', add
label define geomig1_p_lbl 356003 `"Punjab [State: India]"', add
label define geomig1_p_lbl 356004 `"Chandigarh [State: India]"', add
label define geomig1_p_lbl 356006 `"Haryana [State: India]"', add
label define geomig1_p_lbl 356007 `"Delhi [State: India]"', add
label define geomig1_p_lbl 356008 `"Rajasthan [State: India]"', add
label define geomig1_p_lbl 356009 `"Uttar Pradesh, Uttaranchal [State: India]"', add
label define geomig1_p_lbl 356010 `"Bihar, Jharkhand [State: India]"', add
label define geomig1_p_lbl 356011 `"Sikkim [State: India]"', add
label define geomig1_p_lbl 356012 `"Arunachal Pradesh [State: India]"', add
label define geomig1_p_lbl 356013 `"Nagaland [State: India]"', add
label define geomig1_p_lbl 356014 `"Manipur [State: India]"', add
label define geomig1_p_lbl 356015 `"Mizoram [State: India]"', add
label define geomig1_p_lbl 356016 `"Tripura [State: India]"', add
label define geomig1_p_lbl 356017 `"Meghalaya [State: India]"', add
label define geomig1_p_lbl 356018 `"Assam [State: India]"', add
label define geomig1_p_lbl 356019 `"West Bengal [State: India]"', add
label define geomig1_p_lbl 356021 `"Orissa [State: India]"', add
label define geomig1_p_lbl 356023 `"Madhya Pradesh, Chhattisgarh [State: India]"', add
label define geomig1_p_lbl 356024 `"Gujarat [State: India]"', add
label define geomig1_p_lbl 356026 `"Dadra and Nagar Haveli [State: India]"', add
label define geomig1_p_lbl 356027 `"Maharashtra [State: India]"', add
label define geomig1_p_lbl 356028 `"Andhra Pradesh [State: India]"', add
label define geomig1_p_lbl 356029 `"Karnataka [State: India]"', add
label define geomig1_p_lbl 356030 `"Goa, Daman and Diu [State: India]"', add
label define geomig1_p_lbl 356031 `"Lakshadweep [State: India]"', add
label define geomig1_p_lbl 356032 `"Kerala [State: India]"', add
label define geomig1_p_lbl 356033 `"Tamil Nadu [State: India]"', add
label define geomig1_p_lbl 356034 `"Pondicherry [State: India]"', add
label define geomig1_p_lbl 356035 `"Andaman and Nicobar Islands [State: India]"', add
label define geomig1_p_lbl 356097 `"Abroad [State: India]"', add
label define geomig1_p_lbl 356098 `"Unknown [State: India]"', add
label define geomig1_p_lbl 356099 `"NIU (not in universe) [State: India]"', add
label define geomig1_p_lbl 360011 `"Nanggroe Aceh Darussalam [Province: Indonesia]"', add
label define geomig1_p_lbl 360012 `"Sumatera Utara [Province: Indonesia]"', add
label define geomig1_p_lbl 360013 `"Sumatera Barat [Province: Indonesia]"', add
label define geomig1_p_lbl 360014 `"Kepulauan Riau, Riau [Province: Indonesia]"', add
label define geomig1_p_lbl 360015 `"Jambi [Province: Indonesia]"', add
label define geomig1_p_lbl 360016 `"Bangka Belitung, Sumatera Selatan [Province: Indonesia]"', add
label define geomig1_p_lbl 360017 `"Bengkulu [Province: Indonesia]"', add
label define geomig1_p_lbl 360018 `"Lampung [Province: Indonesia]"', add
label define geomig1_p_lbl 360031 `"DKI Jakarta [Province: Indonesia]"', add
label define geomig1_p_lbl 360032 `"Banten, Jawa Barat [Province: Indonesia]"', add
label define geomig1_p_lbl 360033 `"Jawa Tengah [Province: Indonesia]"', add
label define geomig1_p_lbl 360034 `"DKI Yogyakarta [Province: Indonesia]"', add
label define geomig1_p_lbl 360035 `"Jawa Timur [Province: Indonesia]"', add
label define geomig1_p_lbl 360051 `"Bali [Province: Indonesia]"', add
label define geomig1_p_lbl 360052 `"Nusa Tenggara Barat [Province: Indonesia]"', add
label define geomig1_p_lbl 360053 `"Nusa Tenggara Timur [Province: Indonesia]"', add
label define geomig1_p_lbl 360061 `"Kalimantan Barat [Province: Indonesia]"', add
label define geomig1_p_lbl 360062 `"Kalimantan Tengah [Province: Indonesia]"', add
label define geomig1_p_lbl 360063 `"Kalimantan Selatan [Province: Indonesia]"', add
label define geomig1_p_lbl 360064 `"Kalimantan Timur [Province: Indonesia]"', add
label define geomig1_p_lbl 360071 `"Gorontalo, Sulawesi Utara [Province: Indonesia]"', add
label define geomig1_p_lbl 360072 `"Sulawesi Tengah [Province: Indonesia]"', add
label define geomig1_p_lbl 360073 `"Sulawesi Barat, Sulawesi Selatan [Province: Indonesia]"', add
label define geomig1_p_lbl 360074 `"Sulawesi Tenggara [Province: Indonesia]"', add
label define geomig1_p_lbl 360081 `"Maluku, Maluku Utara [Province: Indonesia]"', add
label define geomig1_p_lbl 360094 `"Papua, Papua Barat [Province: Indonesia]"', add
label define geomig1_p_lbl 360097 `"Abroad [Province: Indonesia]"', add
label define geomig1_p_lbl 360098 `"Unknown [Province: Indonesia]"', add
label define geomig1_p_lbl 360099 `"NIU (not in universe) [Province: Indonesia]"', add
label define geomig1_p_lbl 360626 `"East Timor [Province: Indonesia]"', add
label define geomig1_p_lbl 364000 `"Markazi [Province: Iran]"', add
label define geomig1_p_lbl 364001 `"Gilan [Province: Iran]"', add
label define geomig1_p_lbl 364002 `"Mazandaran [Province: Iran]"', add
label define geomig1_p_lbl 364003 `"East Azarbayejan [Province: Iran]"', add
label define geomig1_p_lbl 364004 `"West Azarbayejan [Province: Iran]"', add
label define geomig1_p_lbl 364005 `"Kermanshah [Province: Iran]"', add
label define geomig1_p_lbl 364006 `"Khuzestan [Province: Iran]"', add
label define geomig1_p_lbl 364007 `"Fars [Province: Iran]"', add
label define geomig1_p_lbl 364008 `"Kerman [Province: Iran]"', add
label define geomig1_p_lbl 364009 `"Razavi Khorasan [Province: Iran]"', add
label define geomig1_p_lbl 364010 `"Esfahan [Province: Iran]"', add
label define geomig1_p_lbl 364011 `"Sistan and Baluchestan [Province: Iran]"', add
label define geomig1_p_lbl 364012 `"Kordestan [Province: Iran]"', add
label define geomig1_p_lbl 364013 `"Hamedan [Province: Iran]"', add
label define geomig1_p_lbl 364014 `"Chaharmahal and Bakhtiyari [Province: Iran]"', add
label define geomig1_p_lbl 364015 `"Lorestan [Province: Iran]"', add
label define geomig1_p_lbl 364016 `"Ilam [Province: Iran]"', add
label define geomig1_p_lbl 364017 `"Kohgiluyeh and Boyerahmad [Province: Iran]"', add
label define geomig1_p_lbl 364018 `"Bushehr [Province: Iran]"', add
label define geomig1_p_lbl 364019 `"Zanjan [Province: Iran]"', add
label define geomig1_p_lbl 364020 `"Semnan [Province: Iran]"', add
label define geomig1_p_lbl 364021 `"Yazd [Province: Iran]"', add
label define geomig1_p_lbl 364022 `"Hormozgan [Province: Iran]"', add
label define geomig1_p_lbl 364023 `"Tehran, Alborz [Province: Iran]"', add
label define geomig1_p_lbl 364024 `"Ardebil [Province: Iran]"', add
label define geomig1_p_lbl 364025 `"Qom [Province: Iran]"', add
label define geomig1_p_lbl 364026 `"Qazvin [Province: Iran]"', add
label define geomig1_p_lbl 364027 `"Golestan [Province: Iran]"', add
label define geomig1_p_lbl 364028 `"North Khorasan [Province: Iran]"', add
label define geomig1_p_lbl 364029 `"South Khorasan [Province: Iran]"', add
label define geomig1_p_lbl 364098 `"Unknown [Province: Iran]"', add
label define geomig1_p_lbl 364099 `"NIU (not in universe) [Province: Iran]"', add
label define geomig1_p_lbl 368000 `"Always lived in residential place of birth [Governorate: Iraq]"', add
label define geomig1_p_lbl 368001 `"In this governorate [Governorate: Iraq]"', add
label define geomig1_p_lbl 368011 `"Dahuk [Governorate: Iraq]"', add
label define geomig1_p_lbl 368012 `"Nineveh [Governorate: Iraq]"', add
label define geomig1_p_lbl 368013 `"Sulaymaniyah [Governorate: Iraq]"', add
label define geomig1_p_lbl 368014 `"Al-Tameem [Governorate: Iraq]"', add
label define geomig1_p_lbl 368015 `"Erbil [Governorate: Iraq]"', add
label define geomig1_p_lbl 368021 `"Diala [Governorate: Iraq]"', add
label define geomig1_p_lbl 368022 `"Al-Anbar [Governorate: Iraq]"', add
label define geomig1_p_lbl 368023 `"Baghdad [Governorate: Iraq]"', add
label define geomig1_p_lbl 368024 `"Babylon [Governorate: Iraq]"', add
label define geomig1_p_lbl 368025 `"Kerbela [Governorate: Iraq]"', add
label define geomig1_p_lbl 368026 `"Wasit [Governorate: Iraq]"', add
label define geomig1_p_lbl 368027 `"Salah Al-Deen [Governorate: Iraq]"', add
label define geomig1_p_lbl 368028 `"Al-Najaf [Governorate: Iraq]"', add
label define geomig1_p_lbl 368031 `"Al-Qadisiya [Governorate: Iraq]"', add
label define geomig1_p_lbl 368032 `"Al-Muthanna [Governorate: Iraq]"', add
label define geomig1_p_lbl 368033 `"Thi-Qar [Governorate: Iraq]"', add
label define geomig1_p_lbl 368034 `"Maysan [Governorate: Iraq]"', add
label define geomig1_p_lbl 368035 `"Al-Basrah [Governorate: Iraq]"', add
label define geomig1_p_lbl 368097 `"Other countries [Governorate: Iraq]"', add
label define geomig1_p_lbl 368098 `"Unknown [Governorate: Iraq]"', add
label define geomig1_p_lbl 388001 `"Kingston [Parish: Jamaica]"', add
label define geomig1_p_lbl 388002 `"Saint Andrew [Parish: Jamaica]"', add
label define geomig1_p_lbl 388003 `"Saint Thomas [Parish: Jamaica]"', add
label define geomig1_p_lbl 388004 `"Portland [Parish: Jamaica]"', add
label define geomig1_p_lbl 388005 `"Saint Mary [Parish: Jamaica]"', add
label define geomig1_p_lbl 388006 `"Saint Ann [Parish: Jamaica]"', add
label define geomig1_p_lbl 388007 `"Trelawny [Parish: Jamaica]"', add
label define geomig1_p_lbl 388008 `"Saint James [Parish: Jamaica]"', add
label define geomig1_p_lbl 388009 `"Hanover [Parish: Jamaica]"', add
label define geomig1_p_lbl 388010 `"Westmoreland [Parish: Jamaica]"', add
label define geomig1_p_lbl 388011 `"Saint Elizabeth [Parish: Jamaica]"', add
label define geomig1_p_lbl 388012 `"Manchester [Parish: Jamaica]"', add
label define geomig1_p_lbl 388013 `"Clarendon [Parish: Jamaica]"', add
label define geomig1_p_lbl 388014 `"Saint Catherine [Parish: Jamaica]"', add
label define geomig1_p_lbl 388098 `"Unknown [Parish: Jamaica]"', add
label define geomig1_p_lbl 388099 `"NIU (Not in universe) [Parish: Jamaica]"', add
label define geomig1_p_lbl 400011 `"Amman [Governorate: Jordan]"', add
label define geomig1_p_lbl 400012 `"Balqa [Governorate: Jordan]"', add
label define geomig1_p_lbl 400013 `"Zarqa [Governorate: Jordan]"', add
label define geomig1_p_lbl 400014 `"Madaba [Governorate: Jordan]"', add
label define geomig1_p_lbl 400021 `"Irbid [Governorate: Jordan]"', add
label define geomig1_p_lbl 400022 `"Mafraq [Governorate: Jordan]"', add
label define geomig1_p_lbl 400023 `"Jarash [Governorate: Jordan]"', add
label define geomig1_p_lbl 400024 `"Ajlun [Governorate: Jordan]"', add
label define geomig1_p_lbl 400031 `"Karak [Governorate: Jordan]"', add
label define geomig1_p_lbl 400032 `"Tafilah [Governorate: Jordan]"', add
label define geomig1_p_lbl 400033 `"Ma'an [Governorate: Jordan]"', add
label define geomig1_p_lbl 400034 `"Aqaba [Governorate: Jordan]"', add
label define geomig1_p_lbl 400997 `"Foreign Country [Governorate: Jordan]"', add
label define geomig1_p_lbl 400998 `"Unknown [Governorate: Jordan]"', add
label define geomig1_p_lbl 404001 `"Nairobi [Province: Kenya]"', add
label define geomig1_p_lbl 404002 `"Central [Province: Kenya]"', add
label define geomig1_p_lbl 404003 `"Coast [Province: Kenya]"', add
label define geomig1_p_lbl 404004 `"Eastern [Province: Kenya]"', add
label define geomig1_p_lbl 404005 `"Northeastern [Province: Kenya]"', add
label define geomig1_p_lbl 404006 `"Nyanza [Province: Kenya]"', add
label define geomig1_p_lbl 404007 `"Rift Valley [Province: Kenya]"', add
label define geomig1_p_lbl 404008 `"Western [Province: Kenya]"', add
label define geomig1_p_lbl 404097 `"Abroad [Province: Kenya]"', add
label define geomig1_p_lbl 404098 `"Unknown [Province: Kenya]"', add
label define geomig1_p_lbl 404099 `"NIU (not in universe) [Province: Kenya]"', add
label define geomig1_p_lbl 417001 `"Bishkek [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417002 `"Issyk-Kul region [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417003 `"Dzhalal-Abad region [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417004 `"Naryn region [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417005 `"Batken region [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417006 `"Oshskaya region, City of Osh [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417007 `"Talasskaya region [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417008 `"Chuya region [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417096 `"Other Kyrgyz Republic, not specified [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417097 `"Foreign country [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417098 `"Unknown [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 417099 `"NIU (not in universe) [Region: Kyrgyz Republic]"', add
label define geomig1_p_lbl 418001 `"Vientiane Capital [Province: Laos]"', add
label define geomig1_p_lbl 418002 `"Phongsaly [Province: Laos]"', add
label define geomig1_p_lbl 418003 `"Luangnamtha [Province: Laos]"', add
label define geomig1_p_lbl 418004 `"Oudomxay [Province: Laos]"', add
label define geomig1_p_lbl 418005 `"Bokeo [Province: Laos]"', add
label define geomig1_p_lbl 418006 `"Luangprabang [Province: Laos]"', add
label define geomig1_p_lbl 418007 `"Huaphanh [Province: Laos]"', add
label define geomig1_p_lbl 418008 `"Xayaboury [Province: Laos]"', add
label define geomig1_p_lbl 418009 `"Xienkhuang [Province: Laos]"', add
label define geomig1_p_lbl 418010 `"Vientiane Province [Province: Laos]"', add
label define geomig1_p_lbl 418011 `"Borikhamxay [Province: Laos]"', add
label define geomig1_p_lbl 418012 `"Khammuane [Province: Laos]"', add
label define geomig1_p_lbl 418013 `"Savanakhet [Province: Laos]"', add
label define geomig1_p_lbl 418014 `"Saravane [Province: Laos]"', add
label define geomig1_p_lbl 418015 `"Sekong [Province: Laos]"', add
label define geomig1_p_lbl 418016 `"Champasack [Province: Laos]"', add
label define geomig1_p_lbl 418017 `"Attapeu [Province: Laos]"', add
label define geomig1_p_lbl 418018 `"Xaysomboune [Province: Laos]"', add
label define geomig1_p_lbl 418097 `"Foreign Country [Province: Laos]"', add
label define geomig1_p_lbl 418098 `"Unknown [Province: Laos]"', add
label define geomig1_p_lbl 418099 `"NIU [Province: Laos]"', add
label define geomig1_p_lbl 662003 `"Castries city, Castries rural, Castries suburban [District: Saint Lucia]"', add
label define geomig1_p_lbl 662009 `"Choiseul, Laborie, Vieux-Fort [District: Saint Lucia]"', add
label define geomig1_p_lbl 662010 `"Anse-la-Raye, Canaries, Micoud, Soufriere [District: Saint Lucia]"', add
label define geomig1_p_lbl 662012 `"Dennery, Gros-Islet [District: Saint Lucia]"', add
label define geomig1_p_lbl 662098 `"Unknown [District: Saint Lucia]"', add
label define geomig1_p_lbl 662099 `"NIU [District: Saint Lucia]"', add
label define geomig1_p_lbl 454101 `"Chitipa [District: Malawi]"', add
label define geomig1_p_lbl 454102 `"Karonga [District: Malawi]"', add
label define geomig1_p_lbl 454103 `"Nkhata Bay, Likoma [District: Malawi]"', add
label define geomig1_p_lbl 454104 `"Rumphi [District: Malawi]"', add
label define geomig1_p_lbl 454105 `"Mzimba, Mzuzu City [District: Malawi]"', add
label define geomig1_p_lbl 454201 `"Kasungu [District: Malawi]"', add
label define geomig1_p_lbl 454202 `"Nkhotakota [District: Malawi]"', add
label define geomig1_p_lbl 454203 `"Ntchisi [District: Malawi]"', add
label define geomig1_p_lbl 454204 `"Dowa [District: Malawi]"', add
label define geomig1_p_lbl 454205 `"Salima [District: Malawi]"', add
label define geomig1_p_lbl 454206 `"Lilongwe, Lilongwe City [District: Malawi]"', add
label define geomig1_p_lbl 454207 `"Mchinji [District: Malawi]"', add
label define geomig1_p_lbl 454208 `"Dedza [District: Malawi]"', add
label define geomig1_p_lbl 454209 `"Ntcheu [District: Malawi]"', add
label define geomig1_p_lbl 454301 `"Mangochi [District: Malawi]"', add
label define geomig1_p_lbl 454302 `"Machinga [District: Malawi]"', add
label define geomig1_p_lbl 454303 `"Zomba, Zomba City [District: Malawi]"', add
label define geomig1_p_lbl 454304 `"Chiradzulu [District: Malawi]"', add
label define geomig1_p_lbl 454305 `"Blantyre, Blantyre City [District: Malawi]"', add
label define geomig1_p_lbl 454306 `"Mwanza, Neno [District: Malawi]"', add
label define geomig1_p_lbl 454307 `"Thyolo [District: Malawi]"', add
label define geomig1_p_lbl 454308 `"Mulanje [District: Malawi]"', add
label define geomig1_p_lbl 454309 `"Phalombe [District: Malawi]"', add
label define geomig1_p_lbl 454310 `"Chikwawa [District: Malawi]"', add
label define geomig1_p_lbl 454311 `"Nsanje [District: Malawi]"', add
label define geomig1_p_lbl 454312 `"Balaka [District: Malawi]"', add
label define geomig1_p_lbl 454997 `"Abroad [District: Malawi]"', add
label define geomig1_p_lbl 454999 `"NIU (not in universe) [District: Malawi]"', add
label define geomig1_p_lbl 466001 `"Kayes [Region: Mali]"', add
label define geomig1_p_lbl 466002 `"Koulikoro [Region: Mali]"', add
label define geomig1_p_lbl 466003 `"Sikasso [Region: Mali]"', add
label define geomig1_p_lbl 466004 `"Ségou [Region: Mali]"', add
label define geomig1_p_lbl 466005 `"Mopti [Region: Mali]"', add
label define geomig1_p_lbl 466006 `"Tombouctou [Region: Mali]"', add
label define geomig1_p_lbl 466007 `"Gao, Kidal [Region: Mali]"', add
label define geomig1_p_lbl 466009 `"Bamako [Region: Mali]"', add
label define geomig1_p_lbl 466096 `"Mali, province unspecified [Region: Mali]"', add
label define geomig1_p_lbl 466097 `"Foreign country [Region: Mali]"', add
label define geomig1_p_lbl 466098 `"Unknown [Region: Mali]"', add
label define geomig1_p_lbl 466999 `"NIU (not in universe) [Region: Mali]"', add
label define geomig1_p_lbl 484001 `"Aguascalientes [State: Mexico]"', add
label define geomig1_p_lbl 484002 `"Baja California [State: Mexico]"', add
label define geomig1_p_lbl 484003 `"Baja California Sur [State: Mexico]"', add
label define geomig1_p_lbl 484004 `"Campeche [State: Mexico]"', add
label define geomig1_p_lbl 484005 `"Coahuila de Zaragoza [State: Mexico]"', add
label define geomig1_p_lbl 484006 `"Colima [State: Mexico]"', add
label define geomig1_p_lbl 484007 `"Chiapas [State: Mexico]"', add
label define geomig1_p_lbl 484008 `"Chihuahua [State: Mexico]"', add
label define geomig1_p_lbl 484009 `"Distrito Federal [State: Mexico]"', add
label define geomig1_p_lbl 484010 `"Durango [State: Mexico]"', add
label define geomig1_p_lbl 484011 `"Guanajuato [State: Mexico]"', add
label define geomig1_p_lbl 484012 `"Guerrero [State: Mexico]"', add
label define geomig1_p_lbl 484013 `"Hidalgo [State: Mexico]"', add
label define geomig1_p_lbl 484014 `"Jalisco [State: Mexico]"', add
label define geomig1_p_lbl 484015 `"México [State: Mexico]"', add
label define geomig1_p_lbl 484016 `"Michoacán de Ocampo [State: Mexico]"', add
label define geomig1_p_lbl 484017 `"Morelos [State: Mexico]"', add
label define geomig1_p_lbl 484018 `"Nayarit [State: Mexico]"', add
label define geomig1_p_lbl 484019 `"Nuevo León [State: Mexico]"', add
label define geomig1_p_lbl 484020 `"Oaxaca [State: Mexico]"', add
label define geomig1_p_lbl 484021 `"Puebla [State: Mexico]"', add
label define geomig1_p_lbl 484022 `"Querétaro [State: Mexico]"', add
label define geomig1_p_lbl 484023 `"Quintana Roo [State: Mexico]"', add
label define geomig1_p_lbl 484024 `"San Luis Potosí [State: Mexico]"', add
label define geomig1_p_lbl 484025 `"Sinaloa [State: Mexico]"', add
label define geomig1_p_lbl 484026 `"Sonora [State: Mexico]"', add
label define geomig1_p_lbl 484027 `"Tabasco [State: Mexico]"', add
label define geomig1_p_lbl 484028 `"Tamaulipas [State: Mexico]"', add
label define geomig1_p_lbl 484029 `"Tlaxcala [State: Mexico]"', add
label define geomig1_p_lbl 484030 `"Veracruz de Ignacio de la Llave [State: Mexico]"', add
label define geomig1_p_lbl 484031 `"Yucatán [State: Mexico]"', add
label define geomig1_p_lbl 484032 `"Zacatecas [State: Mexico]"', add
label define geomig1_p_lbl 484097 `"Abroad [State: Mexico]"', add
label define geomig1_p_lbl 484098 `"Unknown [State: Mexico]"', add
label define geomig1_p_lbl 484099 `"NIU (not in universe) [State: Mexico]"', add
label define geomig1_p_lbl 496011 `"Ulaanbaatar [Province: Mongolia]"', add
label define geomig1_p_lbl 496021 `"Dornod [Province: Mongolia]"', add
label define geomig1_p_lbl 496022 `"Sukhbaatar [Province: Mongolia]"', add
label define geomig1_p_lbl 496023 `"Khentii [Province: Mongolia]"', add
label define geomig1_p_lbl 496041 `"Tuv [Province: Mongolia]"', add
label define geomig1_p_lbl 496043 `"Selenge [Province: Mongolia]"', add
label define geomig1_p_lbl 496044 `"Dornogobi [Province: Mongolia]"', add
label define geomig1_p_lbl 496045 `"Darkhan-Uul [Province: Mongolia]"', add
label define geomig1_p_lbl 496046 `"Umnugobi [Province: Mongolia]"', add
label define geomig1_p_lbl 496048 `"Dundgobi, Gobisumber [Province: Mongolia]"', add
label define geomig1_p_lbl 496061 `"Orkhon [Province: Mongolia]"', add
label define geomig1_p_lbl 496062 `"Uvurkhangai [Province: Mongolia]"', add
label define geomig1_p_lbl 496063 `"Bulgan [Province: Mongolia]"', add
label define geomig1_p_lbl 496064 `"Bayankhongor [Province: Mongolia]"', add
label define geomig1_p_lbl 496065 `"Arkhangai [Province: Mongolia]"', add
label define geomig1_p_lbl 496067 `"Khuvsgul [Province: Mongolia]"', add
label define geomig1_p_lbl 496081 `"Zavkhan [Province: Mongolia]"', add
label define geomig1_p_lbl 496082 `"Gobi-Altai [Province: Mongolia]"', add
label define geomig1_p_lbl 496083 `"Bayan-Ulgii [Province: Mongolia]"', add
label define geomig1_p_lbl 496084 `"Khovd [Province: Mongolia]"', add
label define geomig1_p_lbl 496085 `"Uvs [Province: Mongolia]"', add
label define geomig1_p_lbl 496097 `"Abroad [Province: Mongolia]"', add
label define geomig1_p_lbl 496099 `"NIU (not in universe) [Province: Mongolia]"', add
label define geomig1_p_lbl 104001 `"Kachin [State: Myanmar]"', add
label define geomig1_p_lbl 104002 `"Kayah [State: Myanmar]"', add
label define geomig1_p_lbl 104003 `"Kayin [State: Myanmar]"', add
label define geomig1_p_lbl 104004 `"Chin [State: Myanmar]"', add
label define geomig1_p_lbl 104005 `"Sagaing [State: Myanmar]"', add
label define geomig1_p_lbl 104006 `"Tanintharyi [State: Myanmar]"', add
label define geomig1_p_lbl 104007 `"Bago [State: Myanmar]"', add
label define geomig1_p_lbl 104008 `"Magway [State: Myanmar]"', add
label define geomig1_p_lbl 104009 `"Mandalay [State: Myanmar]"', add
label define geomig1_p_lbl 104010 `"Mon [State: Myanmar]"', add
label define geomig1_p_lbl 104011 `"Rakhine [State: Myanmar]"', add
label define geomig1_p_lbl 104012 `"Yangon [State: Myanmar]"', add
label define geomig1_p_lbl 104013 `"Shan [State: Myanmar]"', add
label define geomig1_p_lbl 104014 `"Ayeyawady [State: Myanmar]"', add
label define geomig1_p_lbl 104015 `"Nay Pyi Taw [State: Myanmar]"', add
label define geomig1_p_lbl 104097 `"Abroad [State: Myanmar]"', add
label define geomig1_p_lbl 104099 `"NIU [State: Myanmar]"', add
label define geomig1_p_lbl 591002 `"Coclé [Province: Panama]"', add
label define geomig1_p_lbl 591003 `"Colón, Comarca Kuna Yala (San Blas) [Province: Panama]"', add
label define geomig1_p_lbl 591004 `"Bocas de Toro, Chiriquí, Comarca Ngäbe Buglé, Veraguas [Province: Panama]"', add
label define geomig1_p_lbl 591005 `"Comarca Emberá, Darién [Province: Panama]"', add
label define geomig1_p_lbl 591006 `"Herrera [Province: Panama]"', add
label define geomig1_p_lbl 591007 `"Los Santos [Province: Panama]"', add
label define geomig1_p_lbl 591008 `"Panamá [Province: Panama]"', add
label define geomig1_p_lbl 591009 `"Unknown district in Panamá province [Province: Panama]"', add
label define geomig1_p_lbl 591097 `"Foreign country [Province: Panama]"', add
label define geomig1_p_lbl 591098 `"Unknown [Province: Panama]"', add
label define geomig1_p_lbl 591099 `"NIU (not in universe) [Province: Panama]"', add
label define geomig1_p_lbl 608001 `"Abra [Province: Philippines]"', add
label define geomig1_p_lbl 608002 `"Agusan del norte [Province: Philippines]"', add
label define geomig1_p_lbl 608003 `"Agusan del sur [Province: Philippines]"', add
label define geomig1_p_lbl 608004 `"Aklan [Province: Philippines]"', add
label define geomig1_p_lbl 608005 `"Albay [Province: Philippines]"', add
label define geomig1_p_lbl 608006 `"Antique [Province: Philippines]"', add
label define geomig1_p_lbl 608007 `"Basilan, City Of Isabela [Province: Philippines]"', add
label define geomig1_p_lbl 608008 `"Bataan [Province: Philippines]"', add
label define geomig1_p_lbl 608010 `"Batangas [Province: Philippines]"', add
label define geomig1_p_lbl 608011 `"Benguet [Province: Philippines]"', add
label define geomig1_p_lbl 608012 `"Bohol [Province: Philippines]"', add
label define geomig1_p_lbl 608013 `"Bukidnon [Province: Philippines]"', add
label define geomig1_p_lbl 608014 `"Bulacan [Province: Philippines]"', add
label define geomig1_p_lbl 608015 `"Cagayan, Batanes [Province: Philippines]"', add
label define geomig1_p_lbl 608016 `"Camarines norte [Province: Philippines]"', add
label define geomig1_p_lbl 608017 `"Camarines Sur [Province: Philippines]"', add
label define geomig1_p_lbl 608018 `"Camiguin [Province: Philippines]"', add
label define geomig1_p_lbl 608019 `"Capiz [Province: Philippines]"', add
label define geomig1_p_lbl 608020 `"Catanduanes [Province: Philippines]"', add
label define geomig1_p_lbl 608021 `"Cavite [Province: Philippines]"', add
label define geomig1_p_lbl 608022 `"Cebu [Province: Philippines]"', add
label define geomig1_p_lbl 608023 `"Davao (Davao del Norte) [Province: Philippines]"', add
label define geomig1_p_lbl 608024 `"Davao del Sur, Davao Occidental [Province: Philippines]"', add
label define geomig1_p_lbl 608025 `"Davao Oriental [Province: Philippines]"', add
label define geomig1_p_lbl 608026 `"Eastern Samar [Province: Philippines]"', add
label define geomig1_p_lbl 608027 `"Ifugao [Province: Philippines]"', add
label define geomig1_p_lbl 608028 `"Ilocos Norte [Province: Philippines]"', add
label define geomig1_p_lbl 608029 `"Ilocos Sur [Province: Philippines]"', add
label define geomig1_p_lbl 608030 `"Iloilo, Guimaras [Province: Philippines]"', add
label define geomig1_p_lbl 608031 `"Isabela [Province: Philippines]"', add
label define geomig1_p_lbl 608032 `"Kalinga-Apayao, Apayo, Kalinga [Province: Philippines]"', add
label define geomig1_p_lbl 608033 `"La Union [Province: Philippines]"', add
label define geomig1_p_lbl 608034 `"Laguna [Province: Philippines]"', add
label define geomig1_p_lbl 608035 `"Lanao del Norte [Province: Philippines]"', add
label define geomig1_p_lbl 608036 `"Lanao del Sur, Maguindanao, Marawi City and Cotabato city [Province: Philippines]"', add
label define geomig1_p_lbl 608037 `"Leyte, Biliran [Province: Philippines]"', add
label define geomig1_p_lbl 608039 `"Manila [Province: Philippines]"', add
label define geomig1_p_lbl 608040 `"Marinduque [Province: Philippines]"', add
label define geomig1_p_lbl 608041 `"Masbate [Province: Philippines]"', add
label define geomig1_p_lbl 608042 `"Misamis Occidental [Province: Philippines]"', add
label define geomig1_p_lbl 608043 `"Misamis Oriental [Province: Philippines]"', add
label define geomig1_p_lbl 608044 `"Mountain Province [Province: Philippines]"', add
label define geomig1_p_lbl 608045 `"Negros Occidental [Province: Philippines]"', add
label define geomig1_p_lbl 608046 `"Negros Oriental [Province: Philippines]"', add
label define geomig1_p_lbl 608047 `"Cotabato (North Cotabato) [Province: Philippines]"', add
label define geomig1_p_lbl 608048 `"Northern Samar [Province: Philippines]"', add
label define geomig1_p_lbl 608049 `"Nueva Ecija [Province: Philippines]"', add
label define geomig1_p_lbl 608050 `"Nueva Vizcaya [Province: Philippines]"', add
label define geomig1_p_lbl 608051 `"Occidental Mindoro [Province: Philippines]"', add
label define geomig1_p_lbl 608052 `"Oriental Mindoro [Province: Philippines]"', add
label define geomig1_p_lbl 608053 `"Palawan [Province: Philippines]"', add
label define geomig1_p_lbl 608054 `"Pampanga [Province: Philippines]"', add
label define geomig1_p_lbl 608055 `"Pangasinan [Province: Philippines]"', add
label define geomig1_p_lbl 608056 `"Quezon [Province: Philippines]"', add
label define geomig1_p_lbl 608057 `"Quirino [Province: Philippines]"', add
label define geomig1_p_lbl 608058 `"Rizal [Province: Philippines]"', add
label define geomig1_p_lbl 608059 `"Romblon [Province: Philippines]"', add
label define geomig1_p_lbl 608060 `"Samar (Western Samar) [Province: Philippines]"', add
label define geomig1_p_lbl 608061 `"Siquijor [Province: Philippines]"', add
label define geomig1_p_lbl 608062 `"Sorsogon [Province: Philippines]"', add
label define geomig1_p_lbl 608063 `"South Cotabato, Sarangani [Province: Philippines]"', add
label define geomig1_p_lbl 608064 `"Southern Leyte [Province: Philippines]"', add
label define geomig1_p_lbl 608065 `"Sultan Kudarat [Province: Philippines]"', add
label define geomig1_p_lbl 608066 `"Sulu [Province: Philippines]"', add
label define geomig1_p_lbl 608067 `"Surigao Del Norte, Dinagat islands [Province: Philippines]"', add
label define geomig1_p_lbl 608068 `"Surigao del Sur [Province: Philippines]"', add
label define geomig1_p_lbl 608069 `"Tarlac [Province: Philippines]"', add
label define geomig1_p_lbl 608070 `"Tawi-Tawi [Province: Philippines]"', add
label define geomig1_p_lbl 608071 `"Zambales [Province: Philippines]"', add
label define geomig1_p_lbl 608072 `"Zamboanga Norte [Province: Philippines]"', add
label define geomig1_p_lbl 608073 `"Zamboanga del Sur, Zamboanga Sibugay [Province: Philippines]"', add
label define geomig1_p_lbl 608074 `"Manila Metro, 2nd District [Province: Philippines]"', add
label define geomig1_p_lbl 608075 `"Manila Metro, 3rd District [Province: Philippines]"', add
label define geomig1_p_lbl 608076 `"Manila Metro, 4th District [Province: Philippines]"', add
label define geomig1_p_lbl 608077 `"Aurora [Province: Philippines]"', add
label define geomig1_p_lbl 608097 `"Foreign country [Province: Philippines]"', add
label define geomig1_p_lbl 608098 `"Unknown [Province: Philippines]"', add
label define geomig1_p_lbl 608099 `"NIU (not in universe) [Province: Philippines]"', add
label define geomig1_p_lbl 642001 `"Alba [County: Romania]"', add
label define geomig1_p_lbl 642002 `"Arad [County: Romania]"', add
label define geomig1_p_lbl 642003 `"Arges [County: Romania]"', add
label define geomig1_p_lbl 642004 `"Bacau [County: Romania]"', add
label define geomig1_p_lbl 642005 `"Bihor [County: Romania]"', add
label define geomig1_p_lbl 642006 `"Bistrita Nasaud [County: Romania]"', add
label define geomig1_p_lbl 642007 `"Botosani [County: Romania]"', add
label define geomig1_p_lbl 642008 `"Brasov [County: Romania]"', add
label define geomig1_p_lbl 642009 `"Braila [County: Romania]"', add
label define geomig1_p_lbl 642010 `"Buzau [County: Romania]"', add
label define geomig1_p_lbl 642011 `"Caras Severin [County: Romania]"', add
label define geomig1_p_lbl 642012 `"Cluj [County: Romania]"', add
label define geomig1_p_lbl 642013 `"Constanta [County: Romania]"', add
label define geomig1_p_lbl 642014 `"Covasna [County: Romania]"', add
label define geomig1_p_lbl 642015 `"Dambovita [County: Romania]"', add
label define geomig1_p_lbl 642016 `"Dolj [County: Romania]"', add
label define geomig1_p_lbl 642017 `"Galati [County: Romania]"', add
label define geomig1_p_lbl 642018 `"Gorj [County: Romania]"', add
label define geomig1_p_lbl 642019 `"Harghita [County: Romania]"', add
label define geomig1_p_lbl 642020 `"Hunedoara [County: Romania]"', add
label define geomig1_p_lbl 642022 `"Iasi [County: Romania]"', add
label define geomig1_p_lbl 642024 `"Maramures [County: Romania]"', add
label define geomig1_p_lbl 642025 `"Mehedinti [County: Romania]"', add
label define geomig1_p_lbl 642026 `"Mures [County: Romania]"', add
label define geomig1_p_lbl 642027 `"Neamt [County: Romania]"', add
label define geomig1_p_lbl 642028 `"Olt [County: Romania]"', add
label define geomig1_p_lbl 642029 `"Prahova [County: Romania]"', add
label define geomig1_p_lbl 642030 `"Satu Mare [County: Romania]"', add
label define geomig1_p_lbl 642031 `"Salaj [County: Romania]"', add
label define geomig1_p_lbl 642032 `"Sibiu [County: Romania]"', add
label define geomig1_p_lbl 642033 `"Suceava [County: Romania]"', add
label define geomig1_p_lbl 642034 `"Teleorman [County: Romania]"', add
label define geomig1_p_lbl 642035 `"Timis [County: Romania]"', add
label define geomig1_p_lbl 642036 `"Tulcea [County: Romania]"', add
label define geomig1_p_lbl 642037 `"Vaslui [County: Romania]"', add
label define geomig1_p_lbl 642038 `"Valcea [County: Romania]"', add
label define geomig1_p_lbl 642039 `"Vrancea [County: Romania]"', add
label define geomig1_p_lbl 642043 `"Bucharest Sector 1 to 6 [County: Romania]"', add
label define geomig1_p_lbl 642051 `"Calarasi, Giurgiu, Ialomita, Ilfov [County: Romania]"', add
label define geomig1_p_lbl 642097 `"Foreign country [County: Romania]"', add
label define geomig1_p_lbl 642098 `"Unknown [County: Romania]"', add
label define geomig1_p_lbl 642099 `"NIU (not in universe) [County: Romania]"', add
label define geomig1_p_lbl 646002 `"Byumba, Kigali Ngali, Kigali Ville, Kibungo, Umutara [Province: Rwanda]"', add
label define geomig1_p_lbl 646003 `"Gitarama [Province: Rwanda]"', add
label define geomig1_p_lbl 646004 `"Butare [Province: Rwanda]"', add
label define geomig1_p_lbl 646005 `"Gikongoro [Province: Rwanda]"', add
label define geomig1_p_lbl 646006 `"Cyangugu [Province: Rwanda]"', add
label define geomig1_p_lbl 646007 `"Kibuye [Province: Rwanda]"', add
label define geomig1_p_lbl 646008 `"Gisenyi [Province: Rwanda]"', add
label define geomig1_p_lbl 646009 `"Ruhengeri [Province: Rwanda]"', add
label define geomig1_p_lbl 646097 `"Foreign Countries [Province: Rwanda]"', add
label define geomig1_p_lbl 646098 `"Unknown [Province: Rwanda]"', add
label define geomig1_p_lbl 646099 `"NIU [Province: Rwanda]"', add
label define geomig1_p_lbl 705001 `"Pomurska [Region: Slovenia]"', add
label define geomig1_p_lbl 705002 `"Podravska [Region: Slovenia]"', add
label define geomig1_p_lbl 705003 `"Koroška [Region: Slovenia]"', add
label define geomig1_p_lbl 705004 `"Savinjska [Region: Slovenia]"', add
label define geomig1_p_lbl 705005 `"Zasavska [Region: Slovenia]"', add
label define geomig1_p_lbl 705006 `"Spodnjeposavska [Region: Slovenia]"', add
label define geomig1_p_lbl 705007 `"Jugovzhodna Slovenija [Region: Slovenia]"', add
label define geomig1_p_lbl 705008 `"Osrednjeslovenska [Region: Slovenia]"', add
label define geomig1_p_lbl 705009 `"Gorenjska [Region: Slovenia]"', add
label define geomig1_p_lbl 705010 `"Notranjsko-kraška [Region: Slovenia]"', add
label define geomig1_p_lbl 705011 `"Goriška [Region: Slovenia]"', add
label define geomig1_p_lbl 705012 `"Obalno-kraška [Region: Slovenia]"', add
label define geomig1_p_lbl 705097 `"Abroad [Region: Slovenia]"', add
label define geomig1_p_lbl 705999 `"NIU (not in universe) [Region: Slovenia]"', add
label define geomig1_p_lbl 710001 `"Western Cape [Province: South Africa]"', add
label define geomig1_p_lbl 710004 `"Free State [Province: South Africa]"', add
label define geomig1_p_lbl 710005 `"Eastern Cape, KwaZulu-Natal [Province: South Africa]"', add
label define geomig1_p_lbl 710007 `"Gauteng, Limpopo, Mpumalanga, North West, Northern Cape [Province: South Africa]"', add
label define geomig1_p_lbl 710097 `"Foreign country [Province: South Africa]"', add
label define geomig1_p_lbl 710098 `"Unknown [Province: South Africa]"', add
label define geomig1_p_lbl 710099 `"NIU (not in universe) [Province: South Africa]"', add
label define geomig1_p_lbl 724011 `"Galicia [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724012 `"Principado de Asturias [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724013 `"Cantabria [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724021 `"País Vasco [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724022 `"Comunidad Foral de Navarra [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724023 `"La Rioja [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724024 `"Aragón [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724030 `"Comunidad de Madrid [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724041 `"Castilla y León [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724042 `"Castilla-La Mancha [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724043 `"Extremadura [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724051 `"Cataluña [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724052 `"Comunidad Valenciana [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724053 `"Islas Baleares [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724061 `"Andalucía [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724062 `"Región de Murcia [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724063 `"Ciudad Autónoma de Ceuta [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724064 `"Ciudad Autónoma de Melilla [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724070 `"Canarias [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724097 `"Abroad [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 724999 `"NIU (not in universe) [Communities & autonomous city: Spain]"', add
label define geomig1_p_lbl 740001 `"Paramaribo [District: Suriname]"', add
label define geomig1_p_lbl 740002 `"Wanica [District: Suriname]"', add
label define geomig1_p_lbl 740003 `"Nickerie [District: Suriname]"', add
label define geomig1_p_lbl 740005 `"Saramacca, Coronie [District: Suriname]"', add
label define geomig1_p_lbl 740006 `"Marowijne, Commewijne [District: Suriname]"', add
label define geomig1_p_lbl 740008 `"Brokopondo, Para [District: Suriname]"', add
label define geomig1_p_lbl 740010 `"Sipaliwini [District: Suriname]"', add
label define geomig1_p_lbl 740096 `"Suriname, district unknown [District: Suriname]"', add
label define geomig1_p_lbl 740097 `"Foreign [District: Suriname]"', add
label define geomig1_p_lbl 740098 `"Unknown  [District: Suriname]"', add
label define geomig1_p_lbl 764010 `"Bangkok [Province: Thailand]"', add
label define geomig1_p_lbl 764011 `"Samut Prakan [Province: Thailand]"', add
label define geomig1_p_lbl 764012 `"Nonthaburi [Province: Thailand]"', add
label define geomig1_p_lbl 764013 `"Pathum Thani [Province: Thailand]"', add
label define geomig1_p_lbl 764014 `"Phra Nakhon Si Ayutthaya [Province: Thailand]"', add
label define geomig1_p_lbl 764015 `"Ang Thong [Province: Thailand]"', add
label define geomig1_p_lbl 764016 `"Lop Buri [Province: Thailand]"', add
label define geomig1_p_lbl 764017 `"Sing Buri [Province: Thailand]"', add
label define geomig1_p_lbl 764018 `"Chai Nat [Province: Thailand]"', add
label define geomig1_p_lbl 764019 `"Sa Kaeo, Prachin Buri [Province: Thailand]"', add
label define geomig1_p_lbl 764020 `"Chon Buri [Province: Thailand]"', add
label define geomig1_p_lbl 764021 `"Rayong [Province: Thailand]"', add
label define geomig1_p_lbl 764022 `"Chanthaburi [Province: Thailand]"', add
label define geomig1_p_lbl 764023 `"Trat [Province: Thailand]"', add
label define geomig1_p_lbl 764024 `"Chachoengsao [Province: Thailand]"', add
label define geomig1_p_lbl 764026 `"Nakhon Nayok [Province: Thailand]"', add
label define geomig1_p_lbl 764027 `"Saraburi [Province: Thailand]"', add
label define geomig1_p_lbl 764030 `"Nakhon Ratchasima [Province: Thailand]"', add
label define geomig1_p_lbl 764031 `"Buri Ram [Province: Thailand]"', add
label define geomig1_p_lbl 764032 `"Surin [Province: Thailand]"', add
label define geomig1_p_lbl 764033 `"Si Sa Ket [Province: Thailand]"', add
label define geomig1_p_lbl 764034 `"Ubon Ratchathani, Yasothon, Amnat Charoen [Province: Thailand]"', add
label define geomig1_p_lbl 764036 `"Chaiyaphum [Province: Thailand]"', add
label define geomig1_p_lbl 764039 `"Nong Bua Lam Phu, Udon Thani [Province: Thailand]"', add
label define geomig1_p_lbl 764040 `"Khon Kaen [Province: Thailand]"', add
label define geomig1_p_lbl 764042 `"Loei [Province: Thailand]"', add
label define geomig1_p_lbl 764043 `"Nong Khai [Province: Thailand]"', add
label define geomig1_p_lbl 764044 `"Maha Sarakham [Province: Thailand]"', add
label define geomig1_p_lbl 764045 `"Roi Et [Province: Thailand]"', add
label define geomig1_p_lbl 764046 `"Kalasin [Province: Thailand]"', add
label define geomig1_p_lbl 764047 `"Sakon Nakhon [Province: Thailand]"', add
label define geomig1_p_lbl 764048 `"Nakhon Phanom, Mukdahan [Province: Thailand]"', add
label define geomig1_p_lbl 764050 `"Chiang Mai [Province: Thailand]"', add
label define geomig1_p_lbl 764051 `"Lamphun [Province: Thailand]"', add
label define geomig1_p_lbl 764052 `"Lampang [Province: Thailand]"', add
label define geomig1_p_lbl 764053 `"Uttaradit [Province: Thailand]"', add
label define geomig1_p_lbl 764054 `"Phrae [Province: Thailand]"', add
label define geomig1_p_lbl 764055 `"Nan [Province: Thailand]"', add
label define geomig1_p_lbl 764057 `"Phayao, Chiang Rai [Province: Thailand]"', add
label define geomig1_p_lbl 764058 `"Mae Hong Son [Province: Thailand]"', add
label define geomig1_p_lbl 764060 `"Nakhon Sawan [Province: Thailand]"', add
label define geomig1_p_lbl 764061 `"Uthai Thani [Province: Thailand]"', add
label define geomig1_p_lbl 764062 `"Kamphaeng Phet [Province: Thailand]"', add
label define geomig1_p_lbl 764063 `"Tak [Province: Thailand]"', add
label define geomig1_p_lbl 764064 `"Sukhothai [Province: Thailand]"', add
label define geomig1_p_lbl 764065 `"Phitsanulok [Province: Thailand]"', add
label define geomig1_p_lbl 764066 `"Phichit [Province: Thailand]"', add
label define geomig1_p_lbl 764067 `"Phetchabun [Province: Thailand]"', add
label define geomig1_p_lbl 764070 `"Ratchaburi [Province: Thailand]"', add
label define geomig1_p_lbl 764071 `"Kanchanaburi [Province: Thailand]"', add
label define geomig1_p_lbl 764072 `"Suphanburi [Province: Thailand]"', add
label define geomig1_p_lbl 764073 `"Nakhon Pathom [Province: Thailand]"', add
label define geomig1_p_lbl 764074 `"Samut Sakhon [Province: Thailand]"', add
label define geomig1_p_lbl 764075 `"Samut Songkhram [Province: Thailand]"', add
label define geomig1_p_lbl 764076 `"Phetchaburi [Province: Thailand]"', add
label define geomig1_p_lbl 764077 `"Prachuap Khiri Khan [Province: Thailand]"', add
label define geomig1_p_lbl 764080 `"Nakhon Si Thammarat [Province: Thailand]"', add
label define geomig1_p_lbl 764082 `"Phangnga [Province: Thailand]"', add
label define geomig1_p_lbl 764083 `"Phuket [Province: Thailand]"', add
label define geomig1_p_lbl 764084 `"Krabi, Surat Thani [Province: Thailand]"', add
label define geomig1_p_lbl 764086 `"Ranong, Chumphon [Province: Thailand]"', add
label define geomig1_p_lbl 764090 `"Songkhla [Province: Thailand]"', add
label define geomig1_p_lbl 764091 `"Satun [Province: Thailand]"', add
label define geomig1_p_lbl 764092 `"Trang [Province: Thailand]"', add
label define geomig1_p_lbl 764093 `"Phatthalung [Province: Thailand]"', add
label define geomig1_p_lbl 764094 `"Pattani [Province: Thailand]"', add
label define geomig1_p_lbl 764095 `"Yala [Province: Thailand]"', add
label define geomig1_p_lbl 764096 `"Narathiwat [Province: Thailand]"', add
label define geomig1_p_lbl 764097 `"Same province [Province: Thailand]"', add
label define geomig1_p_lbl 764098 `"Unknown province, but within Thaliand [Province: Thailand]"', add
label define geomig1_p_lbl 764997 `"Abroad [Province: Thailand]"', add
label define geomig1_p_lbl 764998 `"Unknown [Province: Thailand]"', add
label define geomig1_p_lbl 764999 `"NIU (not in universe) [Province: Thailand]"', add
label define geomig1_p_lbl 768001 `"Maritime, Lomé [Region: Togo]"', add
label define geomig1_p_lbl 768002 `"Plateaux, Centrale, Kara [Region: Togo]"', add
label define geomig1_p_lbl 768003 `"Savanes [Region: Togo]"', add
label define geomig1_p_lbl 768097 `"Foreign Country [Region: Togo]"', add
label define geomig1_p_lbl 768098 `"Unknown [Region: Togo]"', add
label define geomig1_p_lbl 768099 `"NIU [Region: Togo]"', add
label define geomig1_p_lbl 780010 `"Port of Spain [Region: Trinidad and Tobago]"', add
label define geomig1_p_lbl 780020 `"San Fernando [Region: Trinidad and Tobago]"', add
label define geomig1_p_lbl 780080 `"Diego Martin, San Juan/Laventille, Tunapuna/Piarco, Chaguanas, Sangre Grande, Couva/Tabaquite /Talparo, Rio Claro/Mayaro, Siparia, Penal/Debe, Princess Town, Port Fontin,  Caroni,  St. Andrew/St. David, Victoria, St. Patrick, Arima [Region: Tri"', add
label define geomig1_p_lbl 780094 `"St. Paul, St. Mary, St. David, St. George, St. Patrick, St. Andrew, St. John, Tobago [Region: Trinidad and Tobago]"', add
label define geomig1_p_lbl 780098 `"Unknown [Region: Trinidad and Tobago]"', add
label define geomig1_p_lbl 800101 `"Kalangala [District: Uganda]"', add
label define geomig1_p_lbl 800102 `"Kampala [District: Uganda]"', add
label define geomig1_p_lbl 800103 `"Kiboga, Kyankwanzi [District: Uganda]"', add
label define geomig1_p_lbl 800104 `"Luwero, Nakasongola, Nakaseke [District: Uganda]"', add
label define geomig1_p_lbl 800105 `"Masaka, Ssembabule, Bukomansimbi, Kalungu, Lwengo [District: Uganda]"', add
label define geomig1_p_lbl 800106 `"Mpigi, Wakiso, Butambala, Gomba [District: Uganda]"', add
label define geomig1_p_lbl 800107 `"Mubende, Mityana [District: Uganda]"', add
label define geomig1_p_lbl 800108 `"Mukono, Kayunga, Buikwe, Buvuma [District: Uganda]"', add
label define geomig1_p_lbl 800110 `"Rakai, Lyantonde [District: Uganda]"', add
label define geomig1_p_lbl 800201 `"Bugiri, Iganga, Mayuge, Namutumba, Luuka, Namayingo [District: Uganda]"', add
label define geomig1_p_lbl 800202 `"Busia, Tororo, Butaleja [District: Uganda]"', add
label define geomig1_p_lbl 800204 `"Jinja [District: Uganda]"', add
label define geomig1_p_lbl 800205 `"Kamuli, Kaliro, Buyende [District: Uganda]"', add
label define geomig1_p_lbl 800206 `"Kapchorwa, Bukwo, Kween [District: Uganda]"', add
label define geomig1_p_lbl 800207 `"Katakwi, Soroti, Kaberamaido, Amuria, Serere [District: Uganda]"', add
label define geomig1_p_lbl 800208 `"Kumi, Bukedea, Ngora [District: Uganda]"', add
label define geomig1_p_lbl 800209 `"Mbale, Sironko, Bududa, Manafwa, Bulambuli [District: Uganda]"', add
label define geomig1_p_lbl 800210 `"Pallisa, Budaka, Kibuku [District: Uganda]"', add
label define geomig1_p_lbl 800301 `"Adjumani, Moyo [District: Uganda]"', add
label define geomig1_p_lbl 800302 `"Apac, Oyam, Kole [District: Uganda]"', add
label define geomig1_p_lbl 800303 `"Arua, Yumbe, Koboko, Maracha [District: Uganda]"', add
label define geomig1_p_lbl 800304 `"Gulu, Amuru, Nwoya, Omoro [District: Uganda]"', add
label define geomig1_p_lbl 800305 `"Kitgum, Pader, Agago, Lamwo [District: Uganda]"', add
label define geomig1_p_lbl 800306 `"Kotido, Moroto, Nakapiripirit, Abim, Kaabong, Amudat, Napak [District: Uganda]"', add
label define geomig1_p_lbl 800307 `"Lira, Amolatar, Dokolo, Alebtong, Otuke [District: Uganda]"', add
label define geomig1_p_lbl 800310 `"Nebbi, Zombo [District: Uganda]"', add
label define geomig1_p_lbl 800401 `"Bundibugyo, Ntoroko [District: Uganda]"', add
label define geomig1_p_lbl 800402 `"Bushenyi, Mbarara, Ntungamo, Ibanda, Isingiro, Kiruhura, Buhweju, Mitooma, Rubirizi, Sheema [District: Uganda]"', add
label define geomig1_p_lbl 800403 `"Hoima [District: Uganda]"', add
label define geomig1_p_lbl 800404 `"Kabale, Rubanda [District: Uganda]"', add
label define geomig1_p_lbl 800405 `"Kabarole, Kamwenge, Kyenjojo, Kyegegwa [District: Uganda]"', add
label define geomig1_p_lbl 800406 `"Kasese [District: Uganda]"', add
label define geomig1_p_lbl 800407 `"Kibaale, Kagadi, Kakumiro [District: Uganda]"', add
label define geomig1_p_lbl 800408 `"Kisoro [District: Uganda]"', add
label define geomig1_p_lbl 800409 `"Masindi, Buliisa, Kiryandongo [District: Uganda]"', add
label define geomig1_p_lbl 800412 `"Rukungiri, Kanungu [District: Uganda]"', add
label define geomig1_p_lbl 800096 `"Visitor [District: Uganda]"', add
label define geomig1_p_lbl 800097 `"Foreign country [District: Uganda]"', add
label define geomig1_p_lbl 800098 `"Unknown [District: Uganda]"', add
label define geomig1_p_lbl 804001 `"The Autonomous Republic of Crimea [Region: Ukraine]"', add
label define geomig1_p_lbl 804005 `"Vinnytska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804007 `"Volynska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804012 `"Dnipropetrovska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804014 `"Donetska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804018 `"Zhytomyrska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804021 `"Zakarpatska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804023 `"Zaporizka oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804026 `"Ivano-Frankivska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804032 `"Kyivska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804035 `"Kirovohradska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804044 `"Luhanska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804046 `"Lvivska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804048 `"Mykolaivska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804051 `"Odeska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804053 `"Poltavska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804056 `"Rivnenska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804059 `"Sumska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804061 `"Ternopilska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804063 `"Kharkivska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804065 `"Khersonska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804068 `"Khmelnytska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804071 `"Cherkaska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804073 `"Chernivetska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804074 `"Chernihivska oblast [Region: Ukraine]"', add
label define geomig1_p_lbl 804080 `"Kyiv (independent city) [Region: Ukraine]"', add
label define geomig1_p_lbl 804085 `"Sevastopol (independent city) [Region: Ukraine]"', add
label define geomig1_p_lbl 804097 `"Foreign country [Region: Ukraine]"', add
label define geomig1_p_lbl 804098 `"Unknown [Region: Ukraine]"', add
label define geomig1_p_lbl 804099 `"NIU (not in universe) [Region: Ukraine]"', add
label define geomig1_p_lbl 858001 `"Montevideo [Department: Uruguay]"', add
label define geomig1_p_lbl 858002 `"Artigas [Department: Uruguay]"', add
label define geomig1_p_lbl 858003 `"Canelones [Department: Uruguay]"', add
label define geomig1_p_lbl 858004 `"Cerro Largo [Department: Uruguay]"', add
label define geomig1_p_lbl 858005 `"Colonia [Department: Uruguay]"', add
label define geomig1_p_lbl 858006 `"Durazno [Department: Uruguay]"', add
label define geomig1_p_lbl 858007 `"Flores [Department: Uruguay]"', add
label define geomig1_p_lbl 858008 `"Florida [Department: Uruguay]"', add
label define geomig1_p_lbl 858009 `"Lavalleja [Department: Uruguay]"', add
label define geomig1_p_lbl 858010 `"Maldonado [Department: Uruguay]"', add
label define geomig1_p_lbl 858011 `"Paysandú [Department: Uruguay]"', add
label define geomig1_p_lbl 858012 `"Río Negro [Department: Uruguay]"', add
label define geomig1_p_lbl 858013 `"Rivera [Department: Uruguay]"', add
label define geomig1_p_lbl 858014 `"Rocha [Department: Uruguay]"', add
label define geomig1_p_lbl 858015 `"Salto [Department: Uruguay]"', add
label define geomig1_p_lbl 858016 `"San Jose [Department: Uruguay]"', add
label define geomig1_p_lbl 858017 `"Soriano [Department: Uruguay]"', add
label define geomig1_p_lbl 858018 `"Tacuarembó [Department: Uruguay]"', add
label define geomig1_p_lbl 858019 `"Treinta Y Tres [Department: Uruguay]"', add
label define geomig1_p_lbl 858097 `"Abroad [Department: Uruguay]"', add
label define geomig1_p_lbl 858098 `"Unknown [Department: Uruguay]"', add
label define geomig1_p_lbl 858999 `"NIU (not in universe) [Department: Uruguay]"', add
label define geomig1_p_lbl 862001 `"Federal District, Vargas [State: Venezuela]"', add
label define geomig1_p_lbl 862002 `"Amazonas Federal Territory [State: Venezuela]"', add
label define geomig1_p_lbl 862003 `"Anzoátegui [State: Venezuela]"', add
label define geomig1_p_lbl 862004 `"Apure [State: Venezuela]"', add
label define geomig1_p_lbl 862005 `"Aragua [State: Venezuela]"', add
label define geomig1_p_lbl 862007 `"Bolívar [State: Venezuela]"', add
label define geomig1_p_lbl 862008 `"Carabobo [State: Venezuela]"', add
label define geomig1_p_lbl 862009 `"Cojedes [State: Venezuela]"', add
label define geomig1_p_lbl 862010 `"Amacuros Delta Federal Territory [State: Venezuela]"', add
label define geomig1_p_lbl 862011 `"Falcón [State: Venezuela]"', add
label define geomig1_p_lbl 862012 `"Guárico [State: Venezuela]"', add
label define geomig1_p_lbl 862013 `"Lara [State: Venezuela]"', add
label define geomig1_p_lbl 862014 `"Barinas, Mérida [State: Venezuela]"', add
label define geomig1_p_lbl 862015 `"Miranda [State: Venezuela]"', add
label define geomig1_p_lbl 862016 `"Monagas [State: Venezuela]"', add
label define geomig1_p_lbl 862017 `"Nueva Esparta, Federal Dependencies [State: Venezuela]"', add
label define geomig1_p_lbl 862018 `"Portuguesa [State: Venezuela]"', add
label define geomig1_p_lbl 862019 `"Sucre [State: Venezuela]"', add
label define geomig1_p_lbl 862020 `"Táchira [State: Venezuela]"', add
label define geomig1_p_lbl 862021 `"Trujillo [State: Venezuela]"', add
label define geomig1_p_lbl 862022 `"Yaracuy [State: Venezuela]"', add
label define geomig1_p_lbl 862023 `"Zulia [State: Venezuela]"', add
label define geomig1_p_lbl 862097 `"Foreign country [State: Venezuela]"', add
label define geomig1_p_lbl 862098 `"Unknown [State: Venezuela]"', add
label define geomig1_p_lbl 862099 `"NIU (not in universe) [State: Venezuela]"', add
label values geomig1_p geomig1_p_lbl

label define mig1_p_mx_lbl 484001 `"Aguascalientes"'
label define mig1_p_mx_lbl 484002 `"Baja California"', add
label define mig1_p_mx_lbl 484003 `"Baja California Sur"', add
label define mig1_p_mx_lbl 484004 `"Campeche"', add
label define mig1_p_mx_lbl 484005 `"Coahuila de Zaragoza"', add
label define mig1_p_mx_lbl 484006 `"Colima"', add
label define mig1_p_mx_lbl 484007 `"Chiapas"', add
label define mig1_p_mx_lbl 484008 `"Chihuahua"', add
label define mig1_p_mx_lbl 484009 `"Distrito Federal"', add
label define mig1_p_mx_lbl 484010 `"Durango"', add
label define mig1_p_mx_lbl 484011 `"Guanajuato"', add
label define mig1_p_mx_lbl 484012 `"Guerrero"', add
label define mig1_p_mx_lbl 484013 `"Hidalgo"', add
label define mig1_p_mx_lbl 484014 `"Jalisco"', add
label define mig1_p_mx_lbl 484015 `"México"', add
label define mig1_p_mx_lbl 484016 `"Michoacán de Ocampo"', add
label define mig1_p_mx_lbl 484017 `"Morelos"', add
label define mig1_p_mx_lbl 484018 `"Nayarit"', add
label define mig1_p_mx_lbl 484019 `"Nuevo León"', add
label define mig1_p_mx_lbl 484020 `"Oaxaca"', add
label define mig1_p_mx_lbl 484021 `"Puebla"', add
label define mig1_p_mx_lbl 484022 `"Querétaro"', add
label define mig1_p_mx_lbl 484023 `"Quintana Roo"', add
label define mig1_p_mx_lbl 484024 `"San Luis Potosí"', add
label define mig1_p_mx_lbl 484025 `"Sinaloa"', add
label define mig1_p_mx_lbl 484026 `"Sonora"', add
label define mig1_p_mx_lbl 484027 `"Tabasco"', add
label define mig1_p_mx_lbl 484028 `"Tamaulipas"', add
label define mig1_p_mx_lbl 484029 `"Tlaxcala"', add
label define mig1_p_mx_lbl 484030 `"Veracruz de Ignacio de la Llave"', add
label define mig1_p_mx_lbl 484031 `"Yucatán"', add
label define mig1_p_mx_lbl 484032 `"Zacatecas"', add
label define mig1_p_mx_lbl 484097 `"Abroad"', add
label define mig1_p_mx_lbl 484098 `"Unknown"', add
label define mig1_p_mx_lbl 484099 `"NIU (not in universe)"', add
label values mig1_p_mx mig1_p_mx_lbl

label define disemp_lbl 1 `"Disabled"'
label define disemp_lbl 2 `"Not disabled"', add
label define disemp_lbl 8 `"Unknown"', add
label define disemp_lbl 9 `"NIU (not in universe)"', add
label values disemp disemp_lbl

label define hlthfac_lbl 01 `"Social Security - IMSS"'
label define hlthfac_lbl 02 `"Social Security - IMSS Solidaridad/Oportunidades/Prospera/Bienestar"', add
label define hlthfac_lbl 03 `"Pemex, Defense, Navy"', add
label define hlthfac_lbl 04 `"Public workers - ISSSTE"', add
label define hlthfac_lbl 05 `"Ministry of Public Health"', add
label define hlthfac_lbl 06 `"Private facility"', add
label define hlthfac_lbl 07 `"Other"', add
label define hlthfac_lbl 08 `"No facility used"', add
label define hlthfac_lbl 98 `"Unknown"', add
label define hlthfac_lbl 99 `"NIU (not in universe)"', add
label values hlthfac hlthfac_lbl

label define hlthcov_lbl 10 `"IMSS only"'
label define hlthcov_lbl 11 `"IMSS-PROSPERA or IMSS-BIENESTAR only"', add
label define hlthcov_lbl 20 `"ISSSTE only"', add
label define hlthcov_lbl 30 `"Pemex, military, or naval coverage only"', add
label define hlthcov_lbl 40 `"Public insurance (New Generation)"', add
label define hlthcov_lbl 50 `"Other coverage only"', add
label define hlthcov_lbl 60 `"Multiple sources of coverage"', add
label define hlthcov_lbl 61 `"IMSS and ISSSTE"', add
label define hlthcov_lbl 62 `"IMSS and IMSS-PROSPERA or IMSS-BIENESTAR"', add
label define hlthcov_lbl 63 `"IMSS and Pemex, military, or naval"', add
label define hlthcov_lbl 64 `"IMSS and public insurance (New Generation)"', add
label define hlthcov_lbl 65 `"IMSS and other"', add
label define hlthcov_lbl 66 `"ISSSTE and IMSS-PROSPERA or IMSS-BIENESTAR"', add
label define hlthcov_lbl 67 `"ISSSTE and Pemex, military, or naval"', add
label define hlthcov_lbl 68 `"ISSSTE and public insurance (New Generation)"', add
label define hlthcov_lbl 69 `"ISSSTE and other"', add
label define hlthcov_lbl 70 `"Pemex, military, or naval and IMSS-PROSPERA or IMSS-BIENESTAR"', add
label define hlthcov_lbl 71 `"Pemex, military, or naval, and public insurance (New Generation)"', add
label define hlthcov_lbl 72 `"Pemex, military, or naval, and other"', add
label define hlthcov_lbl 73 `"Public insurance (New Generation) and IMSS-PROSPERA or IMSS-BIENESTAR"', add
label define hlthcov_lbl 74 `"Public insurance (New Generation) and other"', add
label define hlthcov_lbl 75 `"IMSS-PROSPERA or IMSS-BIENESTAR and other"', add
label define hlthcov_lbl 76 `"Other (multiple sources)"', add
label define hlthcov_lbl 77 `"IMSS, ISSSTE, and Pemex, military, or naval"', add
label define hlthcov_lbl 78 `"IMSS, ISSSTE, and other"', add
label define hlthcov_lbl 79 `"IMSS, ISSSTE, Pemex, military, or naval, and other"', add
label define hlthcov_lbl 90 `"No coverage"', add
label define hlthcov_lbl 98 `"Unknown"', add
label define hlthcov_lbl 99 `"NIU (not in universe)"', add
label values hlthcov hlthcov_lbl

tostring ind, replace

gen log_income = log(incearn)

save enoe_ipums.dta, replace
