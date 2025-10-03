install.packages("proton")
library(proton)

proton()
employees[employees$name=='John' & employees$surname == 'Insecure',]
proton(action = "login", login="johnins")
top1000passwords
for (i in top1000passwords){
  proton(action = "login", login="johnins", password=i)
}
logs
max(table(unique(logs[logs])))