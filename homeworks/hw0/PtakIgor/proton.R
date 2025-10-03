library(proton)
proton()

data(employees)
employees
names(employees)

employees[employees$name == "John", ]

proton(action = "login", login="johnins")

data(top1000passwords)
top1000passwords

for (i in 1:1000) { 
  if (proton(action = "login", login="johnins", password=top1000passwords[i]) == "Success! User is logged in!") { 
    print(i)
  }
}

top1000passwords[120]

proton(action = "login", login="johnins", password=top1000passwords[120])

data(logs)
names(logs)

names(employees)
employees[employees$surname == "Pietraszko", ]

table(logs[logs$login == "slap", "host"])
max(table(logs[logs$login == "slap", c("host")]))

# 194.29.178.13

proton(action = "server", host="194.29.178.16")

data(bash_history)
bash_history

for (i in 1:1000) { 
  if (proton(action = "login", login="slap", password=bash_history[i]) == "Success! User is logged in!") { 
    
  }
}

