#BioScience Data Digitization### 

###Install Packages### 
install.packages("readr")
install.packages("tidyr")
install.packages("dplyr")
install.packages("broom")
##most useful### 
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("xts")
install.packages("dplyr") 
install.packages("vegan")
install.packages("sf")

##Make sure packages are in library####
library(tidyverse)
library(psych)
library(readr)
library(tidyr)
library(dplyr)
library(broom)
library(ggplot2)
library(ggmap)
library(ggExtra)
library(maps)
library(RColorBrewer)
library(dplyr)
library(plyr)
library(vegan)

###################################################################

#Bombus Richness/Evenness####

library(readxl)
###Following will be different depending on file and path name### 
BeesRichEven <- read_excel("Desktop/GDPE/THESIS RESOURCES/data/Ch1+2PollinatorData.xlsx", 
                           sheet = "Bombus")
View(BeesRichEven)
library(vegan)
##Shannon Wiener## 
diversity(BeesRichEven[-1], index = "shannon")
##Pielou evenness##
S <- apply(BeesRichEven[,-1]> 0, 1, sum)
diversity(BeesRichEven[-1], index = "simpson")/log(S)
##True Shannon Wiener diversity##
exp(diversity(BeesRichEven[-1], index = "shannon"))


#Skippers#
library(readxl)
###Following will be different depending on file and path name### 
Skippers <- read_excel("Desktop/GDPE/THESIS RESOURCES/data/Ch1+2PollinatorData.xlsx", 
                       sheet = "Hesperiidae")
View(Skippers)
diversity(Skippers[-1], index = "shannon")
SSkippers <- apply(Skippers[,-1]>0, 1, sum)
diversity(Skippers[-1], index = "simpson")/log(SSkippers)
exp(diversity(Skippers[-1], index = "shannon"))

#Blues#
library(readxl)
###Following will be different depending on file and path name### 
Blues <- read_excel("Desktop/GDPE/THESIS RESOURCES/data/Ch1+2PollinatorData.xlsx", 
                    sheet = "Lycaenidae")
View(Blues)
diversity(Blues[-1], index = "shannon")
SBlues <- apply(Blues[,-1]>0, 1, sum)
diversity(Blues[-1], index = "simpson")/log(SBlues)
exp(diversity(Blues[-1], index = "shannon"))

#Nymphalidaes#
library(readxl)
###Following will be different depending on file and path name### 
BrushFoot <- read_excel("Desktop/GDPE/THESIS RESOURCES/data/Ch1+2PollinatorData.xlsx", 
                    sheet = "Nymphalidae")
View(BrushFoot)
diversity(BrushFoot[-1], index = "shannon")
SBigBs <- apply(BrushFoot[,-1]>0, 1, sum)
diversity(BrushFoot[-1], index = "simpson")/log(SBigBs)
exp(diversity(BrushFoot[-1], index = "shannon"))

#Swallowtails#
library(readxl)
###Following will be different depending on file and path name### 
Swallowtails <- read_excel("Desktop/GDPE/THESIS RESOURCES/data/Ch1+2PollinatorData.xlsx", 
                           sheet = "Papilionidae")
View(Swallowtails)
diversity(Swallowtails[-1], index = "shannon")
SSwallowtails <- apply(Swallowtails[,-1]>0, 1, sum)
diversity(Swallowtails[-1], index = "simpson")/log(SSwallowtails)
exp(diversity(Swallowtails[-1], index = "shannon"))

#Whites#
library(readxl)
###Following will be different depending on file and path name### 
Whites <- read_excel("Desktop/GDPE/THESIS RESOURCES/data/Ch1+2PollinatorData.xlsx", 
                     sheet = "Pieridae")
View(Whites)
diversity(Whites[-1], index = "shannon")
SWhites <- apply(Whites[,-1]>0, 1, sum)
diversity(Whites[-1], index = "simpson")/log(SWhites)
exp(diversity(Whites[-1], index = "shannon"))