library(proton)
proton()

employees
proton(action="login",login="johnins")

top1000passwords
for (i in 1:1001) {
  
  proton(action="login",login="johnins", password=top1000passwords[i]) 
}

table(logs[logs$login=="slap",c("host")]) -> zm
sort(zm)

logs$login 

proton(action = "server", host="194.29.178.16")


bash_history
split <- strsplit(bash_history, " ")
split
