proton()
head(employees)
employees[employees[,c("surname")]=="Insecure",c("login")]
proton(action = "login",login="johnins")
top1000passwords
for(i in 1:1000){
  odp <- proton(action="login",login="johnins",password=top1000passwords[i])
  if( odp =='Success! User is logged in!') cat(top1000passwords[i])
}

table(logs[logs[,c("login")]=="slap",c("host")])


proton(action = "server", host= "194.29.178.16")


str.split(bash_history)
