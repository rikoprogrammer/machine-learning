#Linear regression
install.packages("caTools")
library(caTools)
str(cars)
my_data = cars
ratio = sample.split(my_data, SplitRatio = 0.8)
train = subset(my_data, ratio == TRUE)
test = subset(my_data, ratio == FALSE)
regressor = lm(speed ~ dist, data = train)
summary(regressor)
y_pred = predict(regressor, test)
comparisons = cbind(test$speed, y_pred)
comparisons

