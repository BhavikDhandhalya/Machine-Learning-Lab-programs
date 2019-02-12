library(e1071)
data1 <- read.table(file.choose(), header = T, sep=",")

data_frame = as.data.frame(data1)

model = naiveBayes(class ~., data = data1)
print(model)

predictions = predict(model, data1)
table(predictions, data1$class)