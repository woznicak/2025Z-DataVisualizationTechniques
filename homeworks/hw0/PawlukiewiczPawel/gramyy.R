install.packages("proton")
library(proton)
proton()
data(employees)
employees
which(employees$name=="John")
employees[c(217,432),]
proton(action="login", login="johnins")
data(top1000passwords)
top1000passwords
i
for(i in 1:1000){
    proton(action = "login", login="johnins", password=top1000passwords[i])
}
data(logs)

for(i in 1:5) print(1:i)
logs
proton(action = "server", host="XYZ")
pietr <- logs[which(logs$login=="slap"),]
table(pietr$host)


employees[477,]
