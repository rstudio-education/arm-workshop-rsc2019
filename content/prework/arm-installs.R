## ----install_pkgs, purl = TRUE-------------------------------------------
arm_pkgs <- c("xaringan", "flexdashboard",
              "blogdown", "bookdown", "tidyverse")
install.packages(arm_pkgs, dependencies = TRUE)

## ----install_check_function, include = FALSE, purl = TRUE----------------
is_installed <- function(pkg_name){
  setNames(is.element(pkg_name, installed.packages()[, "Package"]), pkg_name)
}

## ----blogdown_hugo, purl = TRUE------------------------------------------
blogdown::hugo_version() # to check your version
blogdown::update_hugo() # to force an update

## ----check_all_installs, eval = TRUE, purl = TRUE------------------------
is_installed(arm_pkgs)

