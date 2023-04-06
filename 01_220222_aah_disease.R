##########################################################################################################
###
### 
### Age at harvest simple model
###
### Alison Ketz
### 02/22/2022
###
##########################################################################################################

rm(list = ls())
setwd("~/Documents/aah/aah_disease")

library(ggplot2)
library(nimble)
library(Matrix)
library(coda)
library(lattice)
library(splines)
library(Hmisc)
library(lubridate)
library(readxl)
library(gridExtra)
library(xtable)
library(beepr)
library(RColorBrewer)
library(reshape2)
library(viridis)
library(ggridges)
library(doParallel)
library(dplyr)
library(tidyr)
library(data.table)
library(abind)
library(sf)
library(MetBrewer)

#############################################
### Source summary function for posteriors
#############################################

source("summarize.R")

####################################
### Load and clean data
####################################

source("02_load_clean_data.R")

####################################
### Format data
####################################

source("03_preliminaries.R")

###################################
### Run model
###################################

source("04_run_model.R")

###################################
### Post Process summary and plots
###################################

source("05_results_plots_sum.R")
