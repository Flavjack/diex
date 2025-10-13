# -------------------------------------------------------------------------
# importación de datos ----------------------------------------------------
# -------------------------------------------------------------------------

# excel -------------------------------------------------------------------

library(readxl)

fb <- read_excel("C:/Users/LENOVO/Downloads/LA MOLINA 2014 POTATO WUE (FB).xlsx", 
                 sheet = "fb")
View(fb)


# Google sheets -----------------------------------------------------------

library(tidyverse)
library(googlesheets4)

url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"
gs <- url %>% as_sheets_id()

datos <- gs %>% range_read(sheet = "fb")

str(datos)

#> tubdw = u + R + G + R*G + B + e

modelo <- aov(lfa ~ riego*geno + bloque, data = datos)
anova(modelo)


# convertir a factor ------------------------------------------------------

datos <- gs %>%
  range_read(sheet = "fb") %>%
  mutate(
    across(c(riego, geno, block, bloque)
           , as.factor)
  )

str(datos)








