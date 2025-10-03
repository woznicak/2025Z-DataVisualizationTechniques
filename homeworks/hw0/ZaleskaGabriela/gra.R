library(proton)
proton()
head(employees)
logi <- employees[employees$name =='John' & employees$surname =='Insecure', 'login']
proton(action = "login", login=logi)


head(top1000passwords)
for(i in top1000passwords){
  proton(action = "login", login=logi, password=i)
  
}

head(logs)
a <- table(logs$host)
b<-max(a)
host <- a[a==b]
logs[logs$host=='194.29.178.91' , ]