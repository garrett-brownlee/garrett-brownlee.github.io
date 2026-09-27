> setwd("~/Brownlee")
> proj2 <- read.csv('Couples.csv')
> install.packages('psych')
Installing package into ‘C:/Users/garre/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/psych_2.5.6.zip'
Content type 'application/zip' length 3596365 bytes (3.4 MB)
downloaded 3.4 MB

package ‘psych’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\garre\AppData\Local\Temp\RtmpsB9DSe\downloaded_packages
> library(psych)
> listCERF <- c('emo_51.W', 'emo_54.W', 'emo_61.W', 'emo_64.W')
> alpha(x = proj2[ ,listCERF])

Reliability analysis   
Call: alpha(x = proj2[, listCERF])

raw_alpha std.alpha G6(smc) average_r S/N   ase mean   sd median_r
0.82      0.82     0.8      0.53 4.6 0.019  2.6 0.94     0.59

95% confidence boundaries 
lower alpha upper
Feldt     0.78  0.82  0.85
Duhachek  0.78  0.82  0.86

Reliability if an item is dropped:
  raw_alpha std.alpha G6(smc) average_r S/N alpha se  var.r med.r
emo_51.W      0.82      0.82    0.75      0.60 4.5    0.020 0.0012  0.62
emo_54.W      0.80      0.80    0.74      0.58 4.1    0.022 0.0051  0.61
emo_61.W      0.74      0.74    0.70      0.49 2.9    0.028 0.0263  0.56
emo_64.W      0.72      0.73    0.68      0.47 2.7    0.031 0.0240  0.49

Item statistics 
n raw.r std.r r.cor r.drop mean  sd
emo_51.W 257  0.76  0.75  0.63   0.55  2.5 1.2
emo_54.W 257  0.76  0.77  0.67   0.58  2.5 1.2
emo_61.W 257  0.84  0.85  0.78   0.71  2.7 1.1
emo_64.W 257  0.86  0.86  0.81   0.74  2.5 1.1

Non missing response frequency for each item
0    1    2    3    4 miss
emo_51.W 0.09 0.15 0.21 0.32 0.24    0
emo_54.W 0.08 0.09 0.24 0.38 0.21    0
emo_61.W 0.05 0.11 0.15 0.45 0.23    0
emo_64.W 0.07 0.12 0.23 0.40 0.19    0
> proj2$cerf_GB <- rowSums(proj2[,listCERF])
> model2 <- lm(data=proj2, cerf_GB ~ 1)
> summary(model2)

Call:
  lm(formula = cerf_GB ~ 1, data = proj2)

Residuals:
  Min       1Q   Median       3Q      Max 
-10.2179  -2.2179   0.7821   2.7821   5.7821 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  10.2179     0.2336   43.74   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.745 on 256 degrees of freedom

> library(psych)
> listCCI <- c('pbeh_71.H', 'pbeh_73.H', 'pbeh_75.H', 'pbeh_77.H', 'pbeh_82.H', 'pbeh_84.H', 'pbeh_86.H')
> alpha(x = proj2[ ,listCCI])

Reliability analysis   
Call: alpha(x = proj2[, listCCI])

raw_alpha std.alpha G6(smc) average_r S/N   ase mean   sd median_r
0.85      0.85    0.85      0.45 5.8 0.014  2.2 0.88     0.45

95% confidence boundaries 
lower alpha upper
Feldt     0.82  0.85  0.88
Duhachek  0.83  0.85  0.88

Reliability if an item is dropped:
  raw_alpha std.alpha G6(smc) average_r S/N alpha se  var.r
pbeh_71.H      0.83      0.83    0.82      0.45 4.8    0.016 0.0077
pbeh_73.H      0.83      0.83    0.81      0.45 4.9    0.016 0.0066
pbeh_75.H      0.83      0.83    0.82      0.45 4.9    0.016 0.0103
pbeh_77.H      0.82      0.82    0.81      0.43 4.6    0.017 0.0103
pbeh_82.H      0.85      0.85    0.84      0.49 5.7    0.014 0.0060
pbeh_84.H      0.84      0.84    0.83      0.46 5.2    0.015 0.0100
pbeh_86.H      0.82      0.82    0.80      0.43 4.5    0.017 0.0076
med.r
pbeh_71.H  0.44
pbeh_73.H  0.45
pbeh_75.H  0.48
pbeh_77.H  0.42
pbeh_82.H  0.50
pbeh_84.H  0.45
pbeh_86.H  0.43

Item statistics 
n raw.r std.r r.cor r.drop mean   sd
pbeh_71.H 257  0.75  0.74  0.69   0.64  1.5 1.28
pbeh_73.H 257  0.75  0.73  0.69   0.63  2.0 1.31
pbeh_75.H 257  0.74  0.73  0.67   0.61  2.4 1.35
pbeh_77.H 257  0.77  0.78  0.73   0.67  2.4 1.20
pbeh_82.H 257  0.59  0.62  0.52   0.47  2.9 0.99
pbeh_84.H 257  0.68  0.69  0.62   0.56  1.9 1.10
pbeh_86.H 257  0.80  0.80  0.77   0.71  2.1 1.19

Non missing response frequency for each item
0    1    2    3    4 miss
pbeh_71.H 0.24 0.34 0.16 0.16 0.10    0
pbeh_73.H 0.16 0.23 0.20 0.27 0.14    0
pbeh_75.H 0.11 0.19 0.16 0.27 0.27    0
pbeh_77.H 0.07 0.19 0.21 0.33 0.20    0
pbeh_82.H 0.02 0.09 0.14 0.48 0.27    0
pbeh_84.H 0.09 0.35 0.26 0.22 0.08    0
pbeh_86.H 0.07 0.29 0.23 0.26 0.15    0
> proj2$cci_GB <- rowSums(proj2[,listCCI])
> model3 <- lm(data=proj2, cci_GB ~ 1)
> summary(model3)

Call:
  lm(formula = cci_GB ~ 1, data = proj2)

Residuals:
  Min       1Q   Median       3Q      Max 
-15.2062  -4.2062  -0.2062   4.7938  12.7938 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  15.2062     0.3847   39.52   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 6.168 on 256 degrees of freedom
