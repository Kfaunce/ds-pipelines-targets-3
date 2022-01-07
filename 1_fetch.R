# Functions
source("1_fetch/src/find_oldest_sites.R")
source("1_fetch/src/get_site_data.R")

p1_targets_list <- list(
  # Identify oldest sites
  tar_target(
    p1_oldest_active_sites,
    find_oldest_sites(
      states,
      parameter
    )
  ),
  tar_target(
    p1_wi_data,
    get_site_data(
      p1_oldest_active_sites,
      state = "WI",
      parameter
    )
  ),
  tar_target(
    p1_mn_data,
    get_site_data(
      p1_oldest_active_sites,
      state = "MN",
      parameter
    )
  ),
  tar_target(
    p1_mi_data,
    get_site_data(
      p1_oldest_active_sites,
      state = "MI",
      parameter
    )
  )
)
