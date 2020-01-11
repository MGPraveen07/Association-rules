transaction_retail<-read.transactions(file.choose(),format="basket")
inspect(transaction_retail[1:10])
class(transaction_retail)
itemFrequencyPlot(transaction_retail)

transaction_rules<-apriori(transaction_retail,parameter = list(support = 0.003,confidence = 0.05,minlen=2))
transaction_rules
library('arulesViz')
inspect(head(sort(transaction_rules,by="lift")))
head(quality(transaction_rules))

plot(transaction_rules)
plot(transaction_rules,method="grouped")
windows()
