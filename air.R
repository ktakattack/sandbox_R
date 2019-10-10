data(airquality)
names(airquality)

#VARS AVAIL [1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day" 

plot(Ozone~Solar.R, data=airquality)

#calculate mean concentration (NAs removed)

mean.Ozone=mean(airquality$Ozone,na.rm=T)

#plotting horizontal line of the mean of a var
abline(h=mean.Ozone)

#use lm to fit regression line through these data:

#lm(response var~explanatory v, data set)
model1=lm(Ozone~Solar.R, data=airquality)

#call model to see plot
model1

abline(model1,col="purple")
plot(model1)

termplot(model1)

summary(model1)
