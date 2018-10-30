#CLASSIFICATION USING SVM
data=iris
View(iris)
str(iris)
library(ggplot2)
qplot(Petal.Length,Petal.Width,data=iris,color=Species)
#svm
library(e1071)
model<-svm(Species~.,data=iris)
summary(model)
plot(model,data=iris,Petal.Width~Petal.Length,
     slice=list(Sepal.Width=3,Sepal.Length=4))
#confusion matrix and misclassification error
pred=predict(model,data=iris)
tab=table(predicted=pred,actual=iris$Species)
tab
1-sum(diag(tab))/sum(tab)


model1=svm(Species~.,dat=iris,kernel="polynomial")
summary(model1)
pred1=predict(model1,data=iris)
tab1=table(predicted=pred1,actual=iris$Species)
tab1
1-sum(diag(tab1))/sum(tab1)
