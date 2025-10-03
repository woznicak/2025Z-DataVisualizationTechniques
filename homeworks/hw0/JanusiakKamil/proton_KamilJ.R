install.packages("proton")
library(proton)
proton()

#1

employees
employees[employees[,'name']=='John' & employees[,'surname']=='Insecure',]

proton(action = "login", login='johnins')
#2

top1000passwords
crack <- function(data){
  for(i in data))
    response <- proton(action = "login", login='johnins', password=i)
    if (response =='Success! User is logged in!')
      print(response)
}
crack(top1000passwords)
  
  
for(i in top1000passwords)
  response <- proton(action = "login", login='johnins', password=i)
  if (response =='Success! User is logged in!')
    print(response)
#3
logs
barplot(c(logs[(logs[,'login']=='johnins'),'host']))

           