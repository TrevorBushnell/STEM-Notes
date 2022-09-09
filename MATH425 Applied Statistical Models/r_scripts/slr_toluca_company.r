#####			 R code to analyze the Toluca company data
#####			 using simple linear regression

#####			Reading Data from the R package ASLM
library(ALSM)
Data=TolucaCompany
lotsize=Data$x
workhrs=Data$y


######### 		Linear Regression

toluca.reg=lm(workhrs ~ lotsize)



#####  a scatter plot (note in R, the X variable listed first):

plot(lotsize, workhrs)



##### polt the regression line

plot(lotsize, workhrs, xlab="Lot Size", ylab="Hours", main="Regression Line")
abline(toluca.reg)



##### getting the summary regression output:
summary(toluca.reg)



###### getting the ANOVA table:

anova(toluca.reg)



###### getting the fitted values:

fitted(toluca.reg)



###### getting the residuals:

resid(toluca.reg)



###### squared residual (SSE)

sum(resid(toluca.reg)^2)

###### getting sigmahat
summary(toluca.reg)$sigma
# or 
sqrt(sum(resid(toluca.reg)^2)/23)



##### getting the 95% confidence intervals for the regression parameters
confint(toluca.reg, level=0.95)




##### getting the 90% confidence intervals for the mean at X=65:

xh.values <- data.frame(lotsize = 65)

predict(toluca.reg, xh.values, interval="confidence", level=0.90)



##### getting the 90% prediction intervals for the new observation at X=100:

yh_hat=62.37+3.57*100
s_pred=sqrt(((summary(toluca.reg)$sigma)^2)*(1+(1/25)+((100-mean(lotsize))^2)/(sum((lotsize-mean(lotsize))^2))))

# 90% CI
c(yh_hat-qt(0.95,23)*s_pred, yh_hat+qt(0.95,23)*s_pred)



##### getting the 90% confidence band at X=100:

yh_hat=62.37+3.57*100
W=sqrt(2*qf(0.90,2,23))
s_yh_hat=sqrt(((summary(toluca.reg)$sigma)^2)*((1/25)+((100-mean(lotsize))^2)/(sum((lotsize-mean(lotsize))^2))))

# 90% CI
c(yh_hat-W*s_yh_hat, yh_hat+W*s_yh_hat)




##### getting the 95% confidence intervals for the mean at X=65 and X=100:

xh.values <- data.frame(lotsize = c(65,100))

predict(toluca.reg, xh.values, interval="confidence", level=0.95)



###### finding the correlation coefficient between workhrs and lotsize:

cor(lotsize, workhours)


######## 	Residual Plot
plot(x=fitted(toluca.reg), y=resid(toluca.reg),
     xlab="Fitted Values", ylab="Residuals")

#	add a horizontal line at 0 
abline(0,0)


########	Standarized Residual Plot
plot(x=fitted(toluca.reg), y=rstandard(toluca.reg),
     xlab="Fitted values", ylab="Standardized residuals")

abline(h=0, lty=2)




###### Check Normality
boxplot(resid(toluca.reg),horizontal=T)

qqnorm(resid(toluca.reg))
qqline(resid(toluca.reg))



###### Brown-Forsythe Test

#### car package
library(car)
leveneTest(residuals(toluca.reg), group=lotgroup, center=median)

#### Modified Levene (Brown-Forsythe)
####### Levene's test uses the mean instead of the median.



##### Test the constant variance 
##### Breusch-Pagan Test
#load lmtest library
library(lmtest)

#perform Breusch-Pagan Test
bptest(toluca.reg)



##### Normality Test

library(nortest)
ad.test(residuals(toluca.reg)) 
shapiro.test(residuals(toluca.reg)) 
lillie.test(residuals(toluca.reg))






###### Brown-Forsythe Test
#load onewaytests package
library(onewaytests)

# perform Brown-Forsythe test
#### This test is not working!
lotgroup <- factor(lotsize<=70)
data=data.frame(lotsize,workhrs,lotgroup)
bf.test(workhrs~lotgroup,data=data)

#### Breusch-Pagan test; it was independently suggested with some extension by Cook and Weisberg (1983).
ncvTest(toluca.reg)