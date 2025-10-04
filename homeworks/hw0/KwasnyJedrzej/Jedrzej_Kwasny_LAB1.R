library(proton)
proton()
head(employees)

x<-employees[,"name"]=="john"
x
employees[,x]
johnins
proton(action = "login", login="johnins")
x<-1
while (proton(action = "login", login="johnins", password=top1000passwords[x])==proton(action = "login", login="johnins", password=top1000passwords[1]))
  x<-x+1

x
proton(action = "login", login="johnins", password=top1000passwords[1:1000])
top1000passwords[1:1000]
proton(action = "login", login="johnins", password=top1000passwords[1])==proton(action = "login", login="johnins", password=top1000passwords[1])
proton(action = "login", login="johnins", password=top1000passwords[1])
proton(action = "login", login="johnins", password=top1000passwords[120])
top1000passwords[120]
table(logs[logs[,"login"]=="slap",])
logs[logs[,"login"]=="slap",]
logs[,"login"]
logs[c(True,False)]
head(logs,200)
table(logs)
proton(action = "server", host="194.29.178.16")

