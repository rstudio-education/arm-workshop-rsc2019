## ----cran_pkgs, purl = TRUE, eval = TRUE---------------------------------
arm_from_cran <- c("flexdashboard", "learnr", "bookdown",
                   "officer", "rticles", "webshot",
                   "tidyverse", "remotes", "babynames", "magick")

## ----install_cran, purl = TRUE-------------------------------------------
install.packages(arm_from_cran, dependencies = TRUE)

## ----gh_pkgs, purl = TRUE, eval = TRUE-----------------------------------
arm_from_gh <- c('yihui/xaringan', 'rstudio/blogdown',
                 'rstudio-education/armcompanion', 
                 'haozhu233/kableExtra', 'apreshill/bakeoff',
                 'hebrewseniorlife/memor')

## ----install_gh, purl = TRUE---------------------------------------------
remotes::install_github(arm_from_gh, dependencies = TRUE)

## ----install_check_function, include = FALSE, purl = TRUE----------------
is_installed <- function(pkg_name){
  setNames(is.element(pkg_name, installed.packages()[, "Package"]), pkg_name)
}

## ----blogdown_hugo, purl = TRUE------------------------------------------
blogdown::hugo_version() # to check your version
blogdown::update_hugo() # to force an update

## ----phantom_js, purl = TRUE------------------------------------------
webshot::install_phantomjs()

## ----check_all_installs, eval = TRUE, purl = TRUE------------------------
is_installed(c(arm_from_cran, 'xaringan', 'blogdown', 'armcompanion', 'kableExtra', 'bakeoff'))

