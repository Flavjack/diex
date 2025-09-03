# Conceptos básicos de R

# o = |
# y = &
# no = !

# asignar alt + -

x <- "Hola"
y <- "UNTRM"

# R es un lenguaje que trabaja con funciones

# f(x, y) = 2xy + x^2

paste(x, y)

?paste

# ayuda: F1 | Fn + F1 | ?f()

paste(x, y, sep = " + ")

paste(x, y)

# objetos

a <- "casa"
b1 <- "sillon"
b2 <- "cama"
2a <- "silla"
a 3 <- "mesa"
a_3 <- "mesa"


# Ejemplo

notas <- c(12, 15, 13, 17)
notas
md <- mean(notas)
nf <- md + 2
nf

# pipe

library(tidyverse)


# cntrl + shift + m => %>% 

nf <- c(12, 15, 13, 17) %>% 
  mean() + 2

nf









