install.packages("proton")
library(proton)

proton()
head(employees)
employees[employees[,c("name")]=="John",]

proton(action = "login", login="johnins")

head(top1000passwords)
unique(top1000passwords)

lista <- 1:1000
for(i in lista) {
  haslo <- top1000passwords[i]
  proton(action = "login", login="johnins", password=haslo)
  print(i) ##zeby zobaczyc ktore haslo to jego
}
proton(action = "login", login="johnins", password=top1000passwords[120])

employees[employees[,c("name")]=="Slawomir",]

which.max(table(logs[logs[,c("login")]=="slap",]$host))


proton(action="server", host="194.29.178.16")          

unique(gsub(" .$", "",bash_history))

proton(action="login", login="slap", password="DHbb7QXppuHnaXGN")
