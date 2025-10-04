# 5. Zadanie "proton" -----------------------------------------------------

# Utwórz nowy plik .R. Zainstaluj/uruchom pakiet proton:
install.packages("proton")
library(proton)

proton(action = "login", login="johnins")
top1000passwords
responses <- sapply(top1000passwords, function(x) proton(action='login', login='johnins',password=x))
responses
which(responses != 'Password or login is incorrect')
top1000passwords[120]
proton(action = "login", login="johnins", password="q1w2e3r4t5")
logs
head(employees)
str(employees)
employees['surname']=='Pietraszko'
employees[477,]
logs[logs$login == "slap", c("host")]
table(logs[logs$login == "slap", c("host")])
which.max(table(logs[logs$login == "slap", c("host")]))

proton(action = 'server', host = '194.29.178.16')
?strsplit

bash_history
