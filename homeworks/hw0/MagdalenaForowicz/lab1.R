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
mtcars[,c(1,2,3)]
str(mtcars)
# Pierwszy wiersz, pierwsza kolumna?
mtcars[1,1]

# 10 pierszych wierszy, 2 i 3 kolumna?
mtcars[1:10,c(2,3)]

# Jak wybieramy kolumny po nazwach? 

mtcars$mpg
colname <- c('mpg')
mtcars[colname]
mtcars$colname

df <- mtcars
df['a a a'] <- 5
head(df)
df$'a a a'

# Wszystkie wiersze i kolumny w kolejności "am", "wt", "mpg"?
mtcars['mpg']
mtcars$mpg

# Jak wybierać jedną kolumnę?
mtcars[c(1,2)]

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
str(table(mtcars$am))
table(mtcars$am)
dimnames(table(mtcars$am))

# Prosty wykres
plot(mtcars$mpg, mtcars$hp)

# Zależność "mpg" i "hp" - scatter plot
barplot(table(mtcars$cyl))

# Zmienna "cyl" - barplot


# 5. Zadanie "proton" -----------------------------------------------------

# Utwórz nowy plik .R. Zainstaluj/uruchom pakiet proton:
install.packages("proton")
library(proton)
proton()
# W pliku zapisuj sposób rozwiązania gry.

head(employees)
employees[employees$surname == 'Insecure',]

responses <- sapply(top1000passwords, function(x) proton(action='login', login='johnins', password=x))
responses

which(responses != 'Password or login is incorrect')
top1000passwords[120]
proton(action = "login", login = 'johnins', password='q1w2e3r4t5')

piet <- employees[employees$surname == 'Pietraszko', 'login']
piet

table <- table(logs[logs$login == 'slap', c('host')])
which.max(table)

proton(action = 'server', host = '194.29.178.16')

# 6. Zamieszczamy rozwiązanie na repozytorium -----------------------------