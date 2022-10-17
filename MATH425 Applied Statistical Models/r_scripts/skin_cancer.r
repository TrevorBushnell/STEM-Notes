# load the dataset
data = read.table('/home/tbushnell/GitHub/STEM-Notes/MATH425 Applied Statistical Models/data_files/skin_cancer_data.txt', header=T)
# x = data$Lat
# y = data$Mort

# fit a simple linear regression
data_reg = lm(data$Lat ~ data$Mort)
summary(data_reg)

# display scatterplot of the data w/ abline
plot(data$Lat, data$Mort, xlab='Latitude', ylab='Mort', main='Latitude VS Mort')
abline(data_reg)

# display residual plot with fitted values
plot(x=fitted(data_reg), y=resid(data_reg), xlab='fitted values', ylab='residuals', main='residual plot for the skin cancer data')
abline(0,0)
