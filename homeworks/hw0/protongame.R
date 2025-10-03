library(proton)
proton()
employees
employees[c(employees$surname == "Insecure"),]
proton(action="login",login="johnins")
top1000passwords

for (var in top1000passwords){
  proton(action="login",login="johnins", password=var)
}
logs
max(table(logs$host))
table(logs$host) == 573
logs[c(table(logs$host) == 573),]

tab <- table(logs[logs$login =="slap",c("host")])
sort(tab)
proton(action ="server", host="194.29.178.16")
split_bash_history
