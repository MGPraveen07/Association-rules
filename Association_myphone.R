
library(readr)
myphonedata <- read_csv("C:/Users/Admin/Desktop/Assignments/Association_rules/myphonedata.csv")
View(myphonedata)
arules<- apriori(as.matrix(myphonedata[,4:9]),parameter = list(support=0.01,confidence=0.7,minlen=2))
arules

inspect(head(sort(arules,by="lift")))
head(quality(arules))

library('arulesViz')
plot(arules)

plot(arules,method="grouped")
windows()
