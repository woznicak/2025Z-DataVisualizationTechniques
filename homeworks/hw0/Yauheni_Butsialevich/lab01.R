###########################################
###    TECHNIKI WIZUALIZACJI DANYCH     ###
###           LABORATORIUM 1            ###
###########################################


# 0. Prowadzący  -------------------------------------------------------------

# Anna Kozak/Antoni Chudy/Iza Danielewska/Dawid Płudowski/Katarzyna Woźnica
# Kontakt: MS Teams lub mail


# 1. Sposób pracy na zajęciach laboratoryjnych -------------------------------

# a) pracujemy w R (większość semestru) i Python
# b) pracujemy na przygotowanych plikach, które będą na repozytorium przedmiotu
# c) podczas zajęć prowadzący będzie wprowadzał zagdanienia, a następnie będzie rozwiązywanie zadań w celu utrwalenia wiadomości
# d) kolejna porcja materiału będzie omawiana jeżeli większość grupy wykona zadane zadanie 
# e) wszelkie pytania czy to związane z kodem, pracą domową czy kwestie teoretyczne proszę śmiało zgłaszać prowadzącemu 


# 2. Materiały ------------------------------------------------------------

# Repozytorium na GitHub
# https://github.com/kozaka93/2025Z-DataVisualizationTechniques


# 3. Jak działa GitHub? ---------------------------------------------------

# Jak zgłosić pracę domową/projekt? (fork, commit, pull request)
# https://rogerdudler.github.io/git-guide/


# 4. Podstawy R - rozgrzewka ----------------------------------------------

data(mtcars)
head(mtcars)

?mtcars


# Jak wybieramy wiersze (obserwacje) oraz kolumny (zmienne)?


# Pierwszy wiersz, pierwsza kolumna?


# 10 pierszych wierszy, 2 i 3 kolumna?


# Jak wybieramy kolumny po nazwach? 


# Wszystkie wiersze i kolumny w kolejności "am", "wt", "mpg"?


# Jak wybierać jedną kolumnę?
str(mtcars['mpg'])
str(mtcars$mpg)
mtcars$mpg
# Uwaga na przecinek i wybór kolumn poprzez indeksy

# Pytania

# 1. Wymiar ramki danych
dim(mtcars)

# 2. Jakie są typy zmiennych?
str(mtcars)

# 3. Ile jest unikalnych wartości zmiennej "cyl" i jakie to są wartości?
unique(mtcars$cyl)
length(unique(mtcars$cyl))

# 4. Jaka jest średnia wartość zmiennej "drat" dla samochodów 
# o wartości zmiennej "cyl" równej 4?
mean(mtcars[mtcars$cyl == 4, 'drat'])

# 5. Jakie są unikalne wartości zmiennej "am" i jaki jest ich rozkład (liczba wystąpień)? 
table(mtcars$am)
dimnames(table(mtcars$am))


# Prosty wykres

# Zależność "mpg" i "hp" - scatter plot

plot(mtcars$mpg, mtcars$hp)

# Zmienna "cyl" - barplot

barplot(table(mtcars$cyl) )
# 5. Zadanie "proton" -----------------------------------------------------

# Utwórz nowy plik .R. Zainstaluj/uruchom pakiet proton:
install.packages("proton")
library(proton)

# W pliku zapisuj sposób rozwiązania gry.

#problem 1
data(employees)
sum(employees$surname == 'Insecure')
employees[employees$surname == 'Insecure', ]
#the login is johnins
proton(action='login', login='johnins')

#problem 2
data("top1000passwords")
#apply(top1000passwords, 2, sum)
#for (pass in top1000passwords) {
#  mess = proton(action='login', login='johnins', password=pass)
#  if (mess == "Password or login is incorrect"){
#    print(pass)
#    print(mess)
#  }
#}
mess <- sapply(top1000passwords, function(x) proton(action='login', login='johnins', password=x))
which(mess != "Password or login is incorrect")
#password is "q1w2e3r4t5"

#problem 3
data(logs)

employees[employees$surname == 'Pietraszko',]
#the login of Pietraszko is 'slap'

slap_logs = logs[logs$login=='slap',]
slap_logs
#zostawiamy logi tylko Pietraszko

max_val <- max(table(slap_logs$host))
max_val
which.max(table(slap_logs$host))
#the server api is '194.29.178.16'
table(slap_logs$host)['194.29.178.16']

proton(action = "server", host="194.29.178.16")

#problem 4
data("bash_history")

# 6. Zamieszczamy rozwiązanie na repozytorium -----------------------------

