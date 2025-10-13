# bloque : 4
# fertilizante : 4

library(agricolae)


# -------------------------------------------------------------------------
# dbca --------------------------------------------------------------------
# -------------------------------------------------------------------------

fertilizante <- c("urea", "nitraro de amonio"
         , "fosfato de amonio", "cloruro de potasio"
         )

ds <- agricolae::design.rcbd(trt = fertilizante, r = 4)

str(ds)

fb <- ds$book
fb

fieldbook <- zigzag(ds)
fieldbook

print(ds$sketch)



# -------------------------------------------------------------------------
# dca ---------------------------------------------------------------------
# -------------------------------------------------------------------------

agricolae::design.crd(trt = fertilizante, r = 4)

