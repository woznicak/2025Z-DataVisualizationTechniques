library(proton)
proton()

#problem 1


head(employees)

##login
employees[(employees$name == "John") & (employees$surname == "Insecure"), 'login']

proton(action = "login", login="johnins")


for(var in top1000passwords){

  proton(action = "login", login="johnins", password=var)
}

