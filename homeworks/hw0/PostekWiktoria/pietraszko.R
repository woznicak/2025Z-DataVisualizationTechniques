install.packages("proton")
library(proton)
employees[employees$name == "John" & employees$surname =="Insecure", "login"]
top1000passwords
for (x in top1000passwords) {
  proton(action = "login", login="johnins", password=x)
  
}
logs
max(table(unique(logs[logs$login == "johnins", "host"])))
z <- 194.29.178.84