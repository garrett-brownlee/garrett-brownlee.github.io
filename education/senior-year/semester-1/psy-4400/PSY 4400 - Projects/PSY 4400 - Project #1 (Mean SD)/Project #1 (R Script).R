
R version 4.5.1 (2025-06-13 ucrt) -- "Great Square Root"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> setwd("~/Brownlee")
> proj1 <- read.csv('Mean SD.csv')
> View(proj1)
> Garrett <- c(2,5,2,3)
> Garrett
[1] 2 5 2 3
> Garrett - 3
[1] -1  2 -1  0
> Garrett^2
[1]  4 25  4  9
> sqrt(Garrett)
[1] 1.414214 2.236068 1.414214 1.732051
> sum(Garrett)
[1] 12
> length(Garrett)
[1] 4
> M <- sum(Garrett) / length(Garrett)
> SS <- sum((Garrett - M)^2)
> VAR <- SS / (length(Garrett) - 1)
> print(c(M, SS, VAR))
[1] 3 6 2
> sqrt(VAR)
[1] 1.414214
> mean(Garrett)
[1] 3
> sd(Garrett)
[1] 1.414214
> 
  > Garrett <- c(2,5,2,3)
> Garrett - 3
[1] -1  2 -1  0
> Garrett^2
[1]  4 25  4  9
> sqrt(Garrett)
[1] 1.414214 2.236068 1.414214 1.732051
> sum(Garrett)
[1] 12
> length(Garrett)
[1] 4
> M <- sum(Garrett) / length(Garrett)
> SS <- sum((Garrett - M)^2)
> VAR <- SS / (length(Garrett) - 1)
> print(c(M, SS, VAR))
[1] 3 6 2
> sqrt(VAR)
[1] 1.414214
> mean(Garrett)
[1] 3
> sd(Garrett)
[1] 1.414214
> 
  > proj1 <- rbind(proj1, c(318,1,2.9,NA))
> GBram <- proj1$RAM
> sum(GBram)
[1] 793.96
> length(GBram)
[1] 253
> Mram <- sum(GBram) / length(GBram)
> SSram <- sum((GBram - M)^2)
> VARram <- SS / (length(GBram) - 1)
> print(c(Mram, SSram, VARram))
[1]   3.13818182 160.10640000   0.02380952
> sqrt(VARram)
[1] 0.1543033
> mean(GBram)
[1] 3.138182
> sd(GBram)
[1] 0.7849668
> model1 <- lm(data=proj1, CSI ~ 1)
Error in eval(predvars, data, env) : object 'CSI' not found

> model1 <- lm(data=proj1, xi ~ 1)
Error in eval(predvars, data, env) : object 'xi' not found

> model1 <- lm(data=proj1, x ~ 1)
Error in eval(predvars, data, env) : object 'x' not found

> model1 <- lm(data=proj1, RAM ~ 1)
> summary(model1)

Call:
  lm(formula = RAM ~ 1, data = proj1)

Residuals:
  Min       1Q   Median       3Q      Max 
-2.13818 -0.44818 -0.00818  0.55182  2.17182 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept)  3.13818    0.04935   63.59   <2e-16

(Intercept) ***
  ---
  Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.785 on 252 degrees of freedom