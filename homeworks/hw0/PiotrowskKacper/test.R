library(proton)
proton()
employees

employees[(employees$name == "John") & (employees$surname == "Insecure"), "login"]

proton(action = "login", login="johnins")

top1000passwords

for(password in top1000passwords) proton(action = "login", login="johnins", password=password)

logs

employees[(employees$name == "Slawomir") & (employees$surname == "Pietraszko"), "login"]
barplot(table(logs[logs$login == "slap", "host"]))
str(logs)

proton(action = "server", host="194.29.178.16")

bash_history