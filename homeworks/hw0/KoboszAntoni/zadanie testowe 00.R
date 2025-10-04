install.packages("proton")
library(proton)
proton()
employees[1:10,]

employees[employees$surname == "Insecure",]
proton(action = "login",login="johnins")

top1000passwords

for (haslo in top1000passwords){
  proton(action = "login", login="johnins", password=haslo)
}
head(logs)

employees[employees$surname == "Pietraszko",] # Pietraszko ma login slap

table(as.character(logs[logs$login == "slap","host"])) # najczestszy host  194.29.178.16  


proton(action="server",host="194.29.178.16")

length(bash_history)
head(bash_history)

grepl("")

unique(sapply(strsplit(bash_history," "), `[`,1))

# Haslo: DHbb7QXppuHnaXGN


