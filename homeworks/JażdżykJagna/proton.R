proton()
employees
employees[employees$name == "John",]
proton(action = "login", login="johnins")
top1000passwords
for (value in (top1000passwords)){

  proton(action = "login", login="johnins", password=value)
}
# nie działa
#suplly 
responses<-sapply(top1000passwords, function(x)proton(action = "login", login="johnins", password=x) )
responses[responses=="Password or login is correct!"] # huh
which(responses!="Password or login is incorrect"  )
help(which)
top1000passwords[c(120)]
proton(action = "login", login="johnins", password="q1w2e3r4t5")
logs

employees[employees$surname == "Pietraszko",]
x<-(logs[logs$login=="slap",])
which.max(table(x$host))
# which .ax wskazuje indeks max wartości