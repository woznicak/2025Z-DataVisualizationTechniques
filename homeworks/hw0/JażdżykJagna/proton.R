install.packages("proton")
library(proton)
proton()
employees
employees[employees$name == "John",]
proton(action = "login", login="johnins")
top1000passwords
for (value in (top1000passwords)){
  
  proton(action = "login", login="johnins", password=value)
}
#suplly 
responses<-sapply(top1000passwords, function(x)proton(action = "login", login="johnins", password=x) )
which(responses!="Password or login is incorrect"  )
help(which)
top1000passwords[c(120)]
proton(action = "login", login="johnins", password="q1w2e3r4t5")
logs

employees[employees$surname == "Pietraszko",]
x<-(logs[logs$login=="slap",])
which.max(table(x$host))

# which .ax wskazuje indeks max wartości
proton(action = "server", host="194.29.178.16")
bash_history
x<-strsplit(bash_history,"\\s+")
x<-sub(" .*", "", bash_history)
unique(x)
"DHbb7QXppuHnaXGN"
proton(action = "login", login="slap", password="DHbb7QXppuHnaXGN")
