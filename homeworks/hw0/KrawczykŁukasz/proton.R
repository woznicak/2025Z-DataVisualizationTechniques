install.packages("proton")
library(proton)

for(var in top1000passwords){
  proton(action = "login", login="johnins", password=var, hint=TRUE)
}

for(var in logs$login){
  if(grepl(var, "pi", fixed=TRUE)){
    print(var)
  }
}