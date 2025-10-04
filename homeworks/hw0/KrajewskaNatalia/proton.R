install.packages("proton")
library(proton)
proton()
employees[employees$surname == "Insecure", "login"]
proton(action = "login", login="johnins")
top1000passwords
for (i in top1000passwords){
  proton(action = "login", login="johnins", password=i)
}




employees[employees$surname == "Pietraszko", "login"]

sort(table(logs[logs$login == "slap", c("host")]), decreasing = TRUE)[1]

proton(action = "server", host="194.29.178.16")

head(bash_history)
