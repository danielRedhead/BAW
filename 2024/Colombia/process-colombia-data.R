####################################################################.
#
#  Data Prep for Batchelor's theses on Colombia
#
#######.
#############################################################

# Clear working space
rm(list = ls())

# Set the working directory
# You will need to specify the correct file path for your computer
setwd("/Users/danielredhead/friendship-Colombia-main")

# Set write path
write_path <- "/Users/danielredhead/BAW-main/2024/Colombia"

# Load libraries (install them if you don't have them)
library(plyr)
library(tidyverse)
library(kinship2)
library(geosphere)
library(reshape2)
library('readxl')

options(scipen=999)

# Load the primary sources

indiv_bs <- read.csv("./data/BS_individuals.csv", stringsAsFactors = F)
indiv_sc <- read.csv("./data/SC_individuals.csv", stringsAsFactors = F)
indiv_su <- read.csv("./data/SU_individuals.csv", stringsAsFactors = F)
indiv_tb <- read.csv("./data/TB_individuals.csv", stringsAsFactors = F)


######################################################################################################
#
#   Prepare data & specify attributes
#
######################################################################################################
indiv_su <- select(indiv_su, -Ethnicity_2)

indiv_bs$community <- "coastal"
indiv_sc$community <- "lowland"
indiv_su$community <- "highland"
indiv_tb$community <- "altiplano"

indiv <- rbind(indiv_bs,indiv_sc,indiv_su, indiv_tb)
indiv <- select(indiv, -X, -A_S)

# Write out Data
write.csv(indiv, paste0(write_path, "/data/individual_attributes.csv"))
