**Bo to Bz -- Wife rating of her own hard emotion -- Husband rating of partner adversarial communication**





Couples Emotion Rating Form

 	=emo\_51.W + emo\_54.W + emo\_61.W + emo\_64.W

 	=

Conflict Communication Inventory

 	=pbeh\_71.H + pbeh\_73.H + pbeh\_75.H + pbeh\_77.H + pbeh\_82.H + pbeh\_84.H + pbeh\_86.H

 	=





setwd("~/Brownlee")

proj2 <- read.csv('Couples.csv')

install.packages('psych')

library(psych)

listCERF <- c('emo\_51.W', 'emo\_54.W', 'emo\_61.W', 'emo\_64.W')

alpha(x = proj2\[ ,listCERF])

proj2$cerf\_GB <- rowSums(proj2\[,listCERF])

model2 <- lm(data=proj2, cerf\_GB ~ 1)

summary(model2)



proj2 <- read.csv('Couples.csv')

install.packages('psych')

library(psych)

listCCI <- c('pbeh\_71.H', 'pbeh\_73.H', 'pbeh\_75.H', 'pbeh\_77.H', 'pbeh\_82.H', 'pbeh\_84.H', 'pbeh\_86.H')

alpha(x = proj2\[ ,listCCI])

proj2$cci\_GB <- rowSums(proj2\[,listCCI])

model3 <- lm(data=proj2, cci\_GB ~ 1)

summary(model3)









 setwd("~/Brownlee")

> proj2 <- read.csv('Couples.csv')

> install.packages('psych')

Installing package into ‘C:/Users/garre/AppData/Local/R/win-library/4.5’

(as ‘lib’ is unspecified)

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/psych\_2.5.6.zip'

Content type 'application/zip' length 3596365 bytes (3.4 MB)

downloaded 3.4 MB



package ‘psych’ successfully unpacked and MD5 sums checked



The downloaded binary packages are in

 	C:\\Users\\garre\\AppData\\Local\\Temp\\RtmpEZvwli\\downloaded\_packages

> library(psych)

> listCERF <- c('emo\\\_51.W', 'emo\\\_54.W', 'emo\\\_61.W', 'emo\\\_64.W')

> alpha(x = proj2\\\[ ,listCERF])

