cd "E:\MBA\Research Projects\NPL\Codes"

import excel "reporttt.xlsx", firstrow clear

graph set window fontface "B Nazanin"

grstyle init
grstyle off
grstyle init
grstyle set plain, horizontal
grstyle set legend 3, nobox
grstyle set plain, horizontal grid noextend
grstyle set color "8 111 161" "47 193 211" "225 179 102" "0 150 159" "152 63 78" "172 139 150"

graph bar (mean) متوسطنسبتمطالباتغیرجاریبهک, over(کشور) ///
    ytitle("متوسط نسبت تسهیلات غیر جاری به تسهیلات کل کلان") ///
    legend(off)
	
graph bar (mean) متوسطنسبتمطالباتغیرجاریبهک, over(کشور) ///
    ytitle("متوسط نسبت تسهیلات غیر جاری به تسهیلات کل کلان") ///
    title("مقایسه متوسط نسبت تسهیلات غیر جاری به تسهیلات کل کلان از سال 2008 تا 2021" , size(medium)) ///
    legend(off) ///
    bar(1, color("8 111 161")) plotregion(lcolor("225 179 102")) ///
graph export "11.png", as(png) replace

clear all

cd "E:\MBA\Research Projects\NPL\Codes"

import excel "aggnpl.xlsx", firstrow clear

twoway (line نسبتتسهیلاتغیرجاریکلانبهکل سال) (line C سال) (line تسهیلاتغیرجاریکلانبهکلتسهی سال) (line متوسطNPLتنظیمشده سال) , ylabel(, labsize(vsmall)) ymtick(, labsize(tiny)) legend(size(medium) cols(1) position(6) order(1 "نسبت تسهیلات غیر جاری کلان به تسهیلات ریالی" 2 "نسبت تسهیلات غیر جاری کلان به تسهیلات ارزی" 3 "نسبت تسهیلات غیر جاری کلان به کل تسهیلات" 4 "متوسط شاخص مطالبات غیر جاری تنظیم‌شده ")) ///
 xtitle("سال", size(small)) ///
 ylabel(, labsize(small)) ///
 xlabel(#23 ,angle(vertical) labsize(medium)) ///
 xlabel(, labsize(small)) ///
 ytitle("نسبت", size(small))

 twoway  (line C سال) (line تسهیلاتغیرجاریکلانبهکلتسهی سال) (line متوسطNPLتنظیمشده سال, lpattern(dash)) , ylabel(, labsize(vsmall)) ymtick(, labsize(tiny)) legend(size(medium) cols(1) position(6) order( 1 "نسبت تسهیلات غیرجاری کلان به تسهیلات ارزی" 2 "نسبت تسهیلات غیرجاری کلان به کل تسهیلات" 3 "متوسط شاخص مطالبات غیرجاری تنظیم‌شده ")) ///
 xtitle("سال", size(small)) ///
 ylabel(, labsize(small)) ///
 xlabel(#23 ,angle(vertical) labsize(medium)) ///
 xlabel(, labsize(small)) ///
 ytitle("نسبت", size(small))

twoway (line C سال, lpattern(dash)) (line تسهیلاتغیرجاریکلانبهکلتسهی سال, lpattern(dash)) (line متوسطNPLتنظیمشده سال) , ylabel(, labsize(vsmall)) ymtick(, labsize(tiny)) legend(size(medium) cols(1) position(6) order( 1 "نسبت تسهیلات غیرجاری کلان به تسهیلات ارزی" 2 "نسبت تسهیلات غیرجاری کلان به کل تسهیلات" 3 "متوسط شاخص مطالبات غیرجاری تنظیم‌شده ")) ///
 xtitle("سال", size(small)) ///
 ylabel(, labsize(small)) ///
 xlabel(#23 ,angle(vertical) labsize(medium)) ///
 xlabel(, labsize(small)) ///
 ytitle("نسبت", size(small))

graph export "aggnpl11.png", as(png) replace







/////////////
twoway (line نرخارزبازارآزادمتوسطفروش سال, yaxis(1)) (line تسهیلاتغیرجاریکلانبهکلتسهی سال,  yaxis(2)) (line متوسطNPLتنظیمشده سال, yaxis(2)) , ylabel(, labsize(vsmall)) ymtick(, labsize(tiny)) legend(size(medium) cols(1) position(6) order( 1 "نرخ متوسط فروش ارز بازار آزاد" 2 "نسبت تسهیلات غیرجاری کلان به کل تسهیلات" 3 "متوسط شاخص مطالبات غیرجاری تنظیم‌شده ")) ///
       xtitle("سال", size(small)) ///
       ylabel(, axis(1) labsize(small)) ///
       ylabel(0.05(0.05)0.25, axis(2) labsize(small)) ///
       xlabel(#23 ,angle(vertical) labsize(medium)) ///
       xlabel(, labsize(small)) ///
       ytitle("تومان", axis(1) size(small)) ///
       ytitle("نسبت", axis(2) size(small))
graph export "Exchangerate.png", as(png) replace

twoway (line رشدارز سال, yaxis(1)) (line تسهیلاتغیرجاریکلانبهکلتسهی سال,  yaxis(2)) (line متوسطNPLتنظیمشده سال, yaxis(2)) , ylabel(, labsize(vsmall)) ymtick(, labsize(tiny)) legend(size(medium) cols(1) position(6) order( 1 "درصد تغییرات نرخ ارز " 2 "نسبت تسهیلات غیرجاری کلان به کل تسهیلات" 3 "متوسط شاخص مطالبات غیرجاری تنظیم‌شده ")) ///
       xtitle("سال", size(small)) ///
       ylabel(, axis(1) labsize(small)) ///
       ylabel(0.05(0.05)0.25, axis(2) labsize(small)) ///
       xlabel(#23 ,angle(vertical) labsize(medium)) ///
       xlabel(, labsize(small)) ///
       ytitle("درصد", axis(1) size(small)) ///
       ytitle("نسبت", axis(2) size(small))
graph export "Exchangerate_percentchange.png", as(png) replace


twoway (bar دامیرونقرکوداقتصادی سال, yaxis(1) ) (line تسهیلاتغیرجاریکلانبهکلتسهی سال,  yaxis(2)) (line متوسطNPLتنظیمشده سال, yaxis(2)) , ylabel(, labsize(vsmall)) ymtick(, labsize(tiny)) legend(size(medium) cols(1) position(6) order( 1 "رکود  توليد (درآمد) ناخالص ملي" 2 "نسبت تسهیلات غیرجاری کلان به کل تسهیلات" 3 "متوسط شاخص مطالبات غیرجاری تنظیم‌شده ")) ///
       xtitle("سال", size(small)) ///
       ylabel(0 1, axis(1) labsize(small)) ///
       ylabel(0.05(0.05)0.25, axis(2) labsize(small)) ///
       xlabel(#23 ,angle(vertical) labsize(medium)) ///
       xlabel(, labsize(small)) ///
       ytitle("رکود  توليد (درآمد) ناخالص ملي", axis(1) size(small)) ///
       ytitle("نسبت", axis(2) size(small))
graph export "Growth.png", as(png) replace

twoway (bar دامیرونقرکوداعتباری سال, yaxis(1) ) (line تسهیلاتغیرجاریکلانبهکلتسهی سال,  yaxis(2)) (line متوسطNPLتنظیمشده سال, yaxis(2)) , ylabel(, labsize(vsmall)) ymtick(, labsize(tiny)) legend(size(medium) cols(1) position(6) order( 1 "رکود تسهیلات به تولید" 2 "نسبت تسهیلات غیرجاری کلان به کل تسهیلات" 3 "متوسط شاخص مطالبات غیرجاری تنظیم‌شده ")) ///
       xtitle("سال", size(small)) ///
       ylabel(0 1, axis(1) labsize(small)) ///
       ylabel(0.05(0.05)0.25, axis(2) labsize(small)) ///
       xlabel(#23 ,angle(vertical) labsize(medium)) ///
       xlabel(, labsize(small)) ///
       ytitle("رکود تسهیلات به تولید", axis(1) size(small)) ///
       ytitle("نسبت", axis(2) size(small))
graph export "credit.png", as(png) replace
/////////////















clear all
cd "E:\MBA\Research Projects\NPL\Codes"

import excel "For_getting_results_only.xlsx", firstrow clear

binscatter NPL_ratio_ad NetInc_to_Sale, nquantiles(30) linetype(lfit) xtitle("نسبت سود خالص به فروش") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("0 150 159")
graph export "NetInc_to_Sale.png", as(png) replace

binscatter NPL_ratio_ad Liab_to_Ass, nquantiles(30) linetype(lfit) xtitle("نسبت بدهی به دارایی") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "Liab_to_Ass.png", as(png) replace

binscatter NPL_ratio_ad CurrAss_to_Ass, nquantiles(30) linetype(lfit) xtitle("نسبت دارایی جاری به دارایی") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "CurrAss_to_Ass.png", as(png) replace

binscatter NPL_ratio_ad CurrAss_to_CurrLiab, nquantiles(30) linetype(lfit) xtitle("نسبت دارایی جاری به بدهی جاری") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "CurrAss_to_CurrLiab.png", as(png) replace

binscatter NPL_ratio_ad curAss_curLiab_to_Ass, nquantiles(30) linetype(lfit) xtitle("نسبت سرمایه در گردش به دارایی") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "curAss_curLiab_to_Ass.png", as(png) replace

binscatter NPL_ratio_ad FinCos_to_TLoan, nquantiles(30) linetype(lfit) xtitle("نسبت هزینه مالی به کل تسهیلات") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "FinCos_to_TLoan.png", as(png) replace

binscatter NPL_ratio_ad FinCos_to_NetInc, nquantiles(30) linetype(lfit) xtitle("نسبت هزینه مالی به سود خالص") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "FinCos_to_NetInc.png", as(png) replace

binscatter NPL_ratio_ad FinCos_to_CosSales, nquantiles(30) linetype(lfit) xtitle("نسبت هزینه مالی به بهای تمام شده کالا") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "FinCos_to_CosSales.png", as(png) replace

binscatter NPL_ratio_ad OperInc_to_Ass, nquantiles(30) linetype(lfit) xtitle("نسبت سود عملیاتی به دارایی") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "OperInc_to_Ass.png", as(png) replace

binscatter NPL_ratio_ad Cash_to_Ass, nquantiles(30) linetype(lfit) xtitle("نسبت موجودی نقد به دارایی") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "Cash_to_Ass.png", as(png) replace

binscatter NPL_ratio_ad ROE, nquantiles(30) linetype(lfit) xtitle("ROE") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "ROE.png", as(png) replace

binscatter NPL_ratio_ad ROA, nquantiles(30) linetype(lfit) xtitle("ROA") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "ROA.png", as(png) replace

binscatter NPL_ratio_ad EtoA, nquantiles(30) linetype(lfit) xtitle("نسبت حقوق صاحبان سهام به دارایی") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "EtoA.png", as(png) replace

binscatter NPL_ratio_ad SL_to_Ass, nquantiles(30) linetype(lfit) xtitle("نسبت تسهیلات کوتاه مدت به دارایی") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "SL_to_Ass.png", as(png) replace

binscatter NPL_ratio_ad LTLoan_to_Ass, nquantiles(30) linetype(lfit) xtitle("نسبت تسهیلات بلندمدت به دارایی") ytitle("شاخص مطالبات غیر جاری تنظیم‌شده") mcolors("225 179 102")
graph export "LTLoan_to_Ass.png", as(png) replace

