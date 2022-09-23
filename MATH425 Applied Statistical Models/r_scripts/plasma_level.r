####### Plasma Level (Example 3.8, Kutner)

setwd("C:/Users/mamun/Dropbox/Gonzaga/MAT 362/R Codes/Diagnosis/")
data<-read.table("Data_Plasma_Level.txt", header=TRUE)
x=data$Age
y=data$Plasma_Level

# Scatter Plot
plot(x,y)

# SLR Model
model=lm(y~x)

#Residual Plot
plot(fitted(model), resid(model))
abline(0,0)


###### Checking normality
shapiro.test(resid(model))


# Checking equal variance

library(lmtest)
bptest(model)



# Transformstion
y1=log10(y)
plot(x,y1)
model1=lm(y1~x)
plot(fitted(model1), resid(model1))
abline(0,0)

######	Visualize the differences in residuals of two models


#define plotting area
op <- par(mfrow = c(1, 2))

plot(fitted(model), resid(model))
abline(0,0)

plot(fitted(model1), resid(model1))
abline(0,0)



###### Checking normality
shapiro.test(resid(model1))


# Checking equal variance

library(lmtest)
bptest(model1)




######	Find optimal lambda for Box-Cox transformation 
library(MASS)
bc <- boxcox(y ~ x)
lambda <- bc$x[which.max(bc$y)]

#To find the SSE
library(ALSM)
boxcox.sse(x,y,l=seq(-1,1,.1))

#fit new linear regression model using the Box-Cox transformation
new_model <- lm(((y^lambda-1)/lambda) ~ x)
summary(new_model)
anova(new_model)


######	Visualize the differences in residuals of two models


#define plotting area
op <- par(mfrow = c(1, 2))

#Q-Q plot for original model
qqnorm(model1$residuals)
qqline(model1$residuals)

#Q-Q plot for Box-Cox transformed model
qqnorm(new_model$residuals)
qqline(new_model$residuals)

#display both Q-Q plots
par(op)

###### Checking normality
shapiro.test(resid(new_model))


# Checking equal variance
library(lmtest)
bptest(new_model)
