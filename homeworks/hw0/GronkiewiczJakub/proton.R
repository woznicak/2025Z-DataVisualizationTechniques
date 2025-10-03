install.packages("proton")
library(proton)
hint=TRUE
proton()
employees[employees$name == "John" ,]
proton(action = "login", login="johnins")

pass <- top1000passwords
x <- 1
while (x <= 1000)
{
  proton(action = "login", login ="johnins", password = pass[x])
  x <- x + 1
}
employees[employees$surname == "Pietraszko", ]

logs[logs$login == "slap", c("host")]
sort(table(logs[logs$login == "slap", c("host")]))
proton(action = "login", login ="johnins", password = pass[x])
proton(action = "server", host="194.29.178.16")
