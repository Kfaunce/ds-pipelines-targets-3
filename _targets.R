
library(targets)

options(tidyverse.quiet = TRUE)
tar_option_set(packages = c("tidyverse", "dataRetrieval", "urbnmapr", "rnaturalearth", "cowplot"))

# Configuration
states <- c('WI','MN','MI')
parameter <- c('00060')

# Source makefiles
source("1_fetch.R")
source("3_visualize.R")

# Create output directories if not included
if(!dir.exists('1_fetch/out/'))
  dir.create(path = '1_fetch/out/')
if(!dir.exists('2_process/out/'))
  dir.create(path = '2_process/out/')
if(!dir.exists('3_visualize/out/'))
  dir.create(path = '3_visualize/out/')

# Return the complete list of targets
c(p1_targets_list, p3_targets_list)

