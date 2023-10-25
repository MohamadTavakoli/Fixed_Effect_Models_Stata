cls

set more off

clear all

* Set the working directory
cd "E:\MBA\Research Projects\NPL\Codes"

* Import the data from the Excel file
import excel "For_getting_results_only.xlsx", firstrow clear


NPL_ratio_ad	NetInc_to_Sale Liab_to_Ass CurrAss_to_Ass CurrAss_to_CurrLiab curAss_curLiab_to_Ass FinCos_to_TLoan FinCos_to_NetInc FinCos_to_CosSales OperInc_to_Ass Cash_to_Ass ROE ROA EtoA SL_to_Ass Log_Sales

asdoc pwcorr NPL_ratio_ad	NetInc_to_Sale Liab_to_Ass FinCos_to_CosSales CurrAss_to_CurrLiab curAss_curLiab_to_Ass  FinCos_to_NetInc Cash_to_Ass Log_Sales CurrAss_to_Ass  FinCos_to_TLoan  OperInc_to_Ass  ROE ROA EtoA LTLoan_to_Ass , sig star(0.01)  

describe

* Create time and firm fixed effects
egen time_effect = group(FiscalYear)
egen firm_effect = group(Symbol)

* Run the probit model
probit NPL_dummy NetInc_to_Sale Liab_to_Ass FinCos_to_CosSales CurrAss_to_CurrLiab curAss_curLiab_to_Ass  FinCos_to_NetInc Cash_to_Ass LTLoan_to_Ass Log_Sales i.time_effect

esttab using results25.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv

probit NPL_dummy NetInc_to_Sale i.time_effect
esttab using results4.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv


probit NPL_dummy Liab_to_Ass i.time_effect
esttab using results6.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv

probit NPL_dummy FinCos_to_CosSales i.time_effect
esttab using results7.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv

probit NPL_dummy CurrAss_to_CurrLiab i.time_effect
esttab using results8.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv

probit NPL_dummy curAss_curLiab_to_Ass i.time_effect
esttab using results9.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv

probit NPL_dummy FinCos_to_NetInc i.time_effect
esttab using results10.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv

probit NPL_dummy Cash_to_Ass i.time_effect
esttab using results11.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv

probit NPL_dummy LTLoan_to_Ass i.time_effect
esttab using results12.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv

probit NPL_dummy Log_Sales i.time_effect
esttab using results13.csv, cells("b(fmt(3) star) t") label stats(N r2_p) collabels(none) varlabels(_cons constant) eqlabels(none) title("Probit_Model1234") nonumber csv



