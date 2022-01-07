# Functions
source("3_visualize/src/map_sites.R")

p3_targets_list <- list(
  # Map oldest sites
  tar_target(
    p3_site_map_png,
    map_sites(
      "3_visualize/out/site_map.png",
      p1_oldest_active_sites
      ),
    format = "file"
  )
)
