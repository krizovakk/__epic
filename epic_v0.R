# EPIC-IIASA modelling
# Katerina Krizova, Mikulas Madaras, Rastislav Skalsky

#base --------------------------------------------------------------------

# install.packages("tidyverse")
# install.packages("readxl")
# install.packages("reshape2")
# install.packages("psych")
# install.packages("writexl")

require(tidyverse)
require(readxl)
require(reshape2)
require(psych)
require(writexl)

# palet3 <- c("grey92", "darkgrey", "grey40")

# data_summary <- function(data, varname, groupnames){ # funkce pro výpočet errorbars
#   require(plyr)
#   summary_func <- function(x, col){
#     c(mean = mean(x[[col]], na.rm=TRUE),
#       sd = sd(x[[col]], na.rm=TRUE))
#   }
#   data_sum<-ddply(data, groupnames, .fun=summary_func,
#                   varname)
#   data_sum <- rename(data_sum, c("mean" = varname))
#   return(data_sum)
# }

# Times New Roman ----------------------------------------------------------

# install.packages("extrafont")
library(extrafont)
font_import()
loadfonts(device="win")       #Register fonts for Windows bitmap output
fonts()                       #vector of font family names
##  [1] "Andale Mono"                  "AppleMyungjo"                
##  [3] "Arial Black"                  "Arial"                       
##  [5] "Arial Narrow"                 "Arial Rounded MT Bold"  

# BARLEY ------------------------------------------------------------------
bres<- read_excel("red/ACY_v0_BAR_res.xlsx") 
bnores <- read_excel("red/ACY_v0_BAR_nores.xlsx") 

# visualisation SimUID 1 --------------------------------------------------

bar <- bres %>%
  select(simuid, yr, yldg, ns, ts) %>% 
  filter(simuid == "1")

ban <- bnores %>%
  select(simuid, yr, yldg, ns, ts) %>% 
  filter(simuid == "1")

ggplot(bar, aes(yr, yldg))+
  geom_point()

