library(proton)
proton()
employees[(employees$name == "John" & employees$surname == "Insecure"),'login']
proton(action ='login', login='johnins')
for( i in top1000passwords){
  proton(action ='login', login='johnins', password=i)
}


sort(table(logs[logs$login == "slap",'host']),decreasing = TRUE)[1]
proton(action = "server", host="194.29.178.16")

head(bash_history)

strsplit(bash_history,' ')
