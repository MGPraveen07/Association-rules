
install.packages("arules")
library(arules)

book <- read_csv("C:/Users/Admin/Desktop/Assignments/Association_rules/book.csv")
arules<- apriori(as.matrix(book),parameter = list(support=0.09,confidence=0.7,minlen=2))
arules

inspect(head(sort(arules,by="lift")))
head(quality(arules))

install.packages("arulesViz")
install.packages("arulesViz", type = "source")

library('arulesViz')
plot(arules)

plot(arules,method="grouped")
windows()


# By changing the values of the values of support,confidence,minlen
arules<- apriori(as.matrix(book),parameter = list(support=0.09,confidence=0.75,minlen=3))
arules

inspect(head(sort(arules,by="lift")))
head(quality(arules))

install.packages("arulesViz")
install.packages("arulesViz", type = "source")

library('arulesViz')
plot(arules)

plot(arules,method="grouped")
windows()


