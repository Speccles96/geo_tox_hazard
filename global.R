# Load packages ----
library(shiny)
library(shinythemes)
library(maps)
library(mapproj)
library(ggplot2)
library(sf)

# Load data ----
RQ_df <- readRDS("nata_tox21_sp.rds")
assay_list <-read.csv("assay_list.csv")
assay_list <- as.list(assay_list)
states <- st_as_sf(maps::map("state", plot = FALSE, fill = TRUE))
heatmap_df <- read.csv("heatmap_df.csv")
#chem_count_df <- readRDS("chem_count_sp.rds")
localG_df <- readRDS("localG_sp.rds")
