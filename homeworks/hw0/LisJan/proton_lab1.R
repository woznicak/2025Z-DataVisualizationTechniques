library(proton)
proton()
employees[employees[["surname"]]=="Insecure",]
proton(action="login",login="johnins")



top1000passwords

for (i in 1:1000){
  proton(action="login",login="johnins",password=top1000passwords[i])
}
head(logs)

employees[employees[["surname"]]=="Pietraszko",]
a<-table(logs[logs[["login"]]=="slap",][["host"]])
host1<-names(sort(a)[length(a)])
proton(action="server",host=host1)

head(bash_history)
head(sort(table(bash_history)))

help("str")

help("strsplit")

strsplit(bash_history," ")

proton()
