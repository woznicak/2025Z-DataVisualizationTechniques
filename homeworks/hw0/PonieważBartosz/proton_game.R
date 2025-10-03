#Problem 1
data("employees")
johninsecurelogin <- employees[employees$name=="John" & employees$surname=="Insecure","login"]
proton(action = "login", login=johninsecurelogin)

#Problem 2 
data("top1000passwords")

for (i in 1:1000) {
  proton(action = "login", login=johninsecurelogin, password=top1000passwords[i])
}

#Problem 3
data("logs")
pietraszko_login <- employees[employees$name=="Slawomir" & employees$surname=="Pietraszko","login"]
logowanie_pietraszko <- table(logs[logs$login=="slap","host"])
lokalizacja <- row.names(logowanie_pietraszko)[logowanie_pietraszko==max(logowanie_pietraszko)]
proton(action="server", host=lokalizacja)