# -------------------------------------------------------------------------
# Diseños experimentales --------------------------------------------------
# -------------------------------------------------------------------------

# Diseño Factorial --------------------------------------------------------

library(agricolae)

agricolae::design.ab()


# factorial 3 x 2 with 3 blocks
library(agricolae)
trt<-c(3,2) # factorial 3x2
outdesign <-design.ab(trt, r=3, serie=2)
book<-outdesign$book
book


# factorial 3 variedades de papa con 5 niveles de fert

tr <- c(3, 5)

ds <- design.ab(trt = tr, r = 4, design = "lsd")

ds$book