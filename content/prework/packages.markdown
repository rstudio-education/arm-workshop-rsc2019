---
title: Install R packages
author: ''
date: "2019-01-16"
slug: packages
categories: []
tags: []
linktitle: "Install R packages"
menu:
  prework:
    parent: "Local setup"
    weight: 3
toc: yes
type: docs
---




For this workshop, you'll need to install several R packages. This page will guide you through installing the packages we will use. If you are comfortable installing packages in R, then you could run this code from your R console to install all of the necessary packages:


```r
arm_from_cran <- c("flexdashboard", "learnr", "bookdown",
                   "officer", "rticles", "webshot",
                   "tidyverse", "remotes", "babynames", "magick")
```


```r
install.packages(arm_from_cran, dependencies = TRUE)
```


```r
arm_from_gh <- c('yihui/xaringan', 'rstudio/blogdown',
                 'rstudio-education/armcompanion', 
                 'haozhu233/kableExtra', 'apreshill/bakeoff',
                 'hebrewseniorlife/memor')
```


```r
remotes::install_github(arm_from_gh, dependencies = TRUE)
```


```r
webshot::install_phantomjs()
```

+ Also please review section <a href="#update-hugo">0.5.2</a> to make sure you have Hugo version 0.52, which you'll need for **blogdown**. 
+ Please review section <a href="#webshot">0.9.1</a> to install `phantom_js`

## Download script {#script}




Click <a href="../arm-installs.R" download>here</a> to download an R script for installing all the necessary packages.

## xaringan {#xaringan}

Install the [**xaringan** package](https://github.com/yihui/xaringan) from GitHub as follows:


```r
remotes::install_github('yihui/xaringan', dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(xaringan)
```

You can also check to make sure an individual package is installed by running this function (see Section <a href="#all">0.14</a> for how to check for all packages):





```r
is_installed <- function(pkg_name){
  setNames(is.element(pkg_name, installed.packages()[, "Package"]), pkg_name)
} 
is_installed("xaringan")
```

```
# xaringan 
#     TRUE
```

Does this code return `TRUE`?



## flexdashboard {#flexdashboard}

Install the [**flexdashboard** package](https://rmarkdown.rstudio.com/flexdashboard/) from CRAN as follows:


```r
install.packages("flexdashboard", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(flexdashboard)
```


Does this code return `TRUE`?

```r
is_installed("flexdashboard")
```

```
# flexdashboard 
#          TRUE
```

## learnr {#learnr}

Install the [**learnr** package](https://github.com/rstudio/learnr) from CRAN as follows:


```r
install.packages("learnr", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(learnr)
```


Does this code return `TRUE`?

```r
is_installed("learnr")
```

```
# learnr 
#   TRUE
```

## blogdown {#blogdown}

Install the [**blogdown** package](https://github.com/rstudio/blogdown) from GitHub as follows:


```r
remotes::install_github('rstudio/blogdown', dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(blogdown)
```


Does this code return `TRUE`?

```r
is_installed("blogdown")
```

```
# blogdown 
#     TRUE
```

### Install Hugo {#hugo}

Hugo (https://gohugo.io) is the static site generator on which **blogdown** is based. You must install Hugo in order to build a site using the **blogdown** package. You may install Hugo using the **blogdown** package helper function in your R Console:


```r
blogdown::install_hugo()
```

### Update Hugo (if necessary) {#update-hugo}

In your R Console, please do the following to make sure that you are working with the latest version of Hugo (>= 0.52): 
    

```r
blogdown::hugo_version() # to check your version
blogdown::update_hugo() # to force an update
```

## bookdown {#bookdown}

Install the [**bookdown** package](https://github.com/rstudio/bookdown) from CRAN as follows:


```r
install.packages("bookdown", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(bookdown)
```


Does this code return `TRUE`?

```r
is_installed("bookdown")
```

```
# bookdown 
#     TRUE
```

## officer {#officer}

Install the [**officer** package](https://davidgohel.github.io/officer/) from CRAN as follows:


```r
install.packages("officer", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(officer)
```


Does this code return `TRUE`?

```r
is_installed("officer")
```

```
# officer 
#    TRUE
```

## rticles {#rticles}

Install the [**rticles** package](https://github.com/rstudio/rticles) from CRAN as follows:


```r
install.packages("rticles", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(rticles)
```


Does this code return `TRUE`?

```r
is_installed("rticles")
```

```
# rticles 
#    TRUE
```

## kableExtra {#kableExtra}

Install the [**kableExtra** package](https://haozhu233.github.io/kableExtra/) from GitHub as follows:


```r
remotes::install_packages("haozhu233/kableExtra", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(kableExtra)
```


Does this code return `TRUE`?

```r
is_installed("kableExtra")
```

```
# kableExtra 
#       TRUE
```

### webshot {#webshot}

To be able to save HTML table as images (`kableExtra::save_kable()`):



```r
install.packages("webshot", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(webshot)
```


Does this code return `TRUE`?

```r
is_installed("webshot")
```

```
# webshot 
#    TRUE
```

Please also do the following:

```r
webshot::install_phantomjs()
```


### magick {#magick}

To be able to save PDF table as images (`kableExtra::save_kable()`):


```r
install.packages("magick", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(magick)
```


Does this code return `TRUE`?

```r
is_installed("magick")
```

```
# magick 
#   TRUE
```


## memor {#memor}

Install the [**memor** package](https://github.com/hebrewseniorlife/memor) from GitHub as follows:


```r
remotes::install_packages("hebrewseniorlife/memor", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(memor)
```


Does this code return `TRUE`?

```r
is_installed("memor")
```

```
# memor 
#  TRUE
```

## tidyverse & data packages {#tidyverse}

For many code examples provided in the workshop activities, you'll need to install the [**tidyverse** meta-package](https://www.tidyverse.org/packages/) and some data packages from CRAN as follows:


```r
install.packages(c("tidyverse", "babynames"), dependencies = TRUE)
```

Can you load the packages?

```r
# should just work if installed
library(tidyverse)
library(babynames)
```


Does this code return `TRUE`?

```r
is_installed(c("tidyverse", "babynames"))
```

```
# tidyverse babynames 
#      TRUE      TRUE
```

## armcompanion

You can download our workshop companion package from the RStudio Education GitHub:


```r
remotes::install_github("rstudio-education/armcompanion", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(armcompanion)
```


Does this code return `TRUE`?

```r
is_installed("armcompanion")
```

```
# armcompanion 
#         TRUE
```

## bakeoff

You can download our workshop companion package from GitHub:


```r
remotes::install_github("apreshill/bakeoff", dependencies = TRUE)
```

Can you load the package?

```r
# should just work if installed
library(bakeoff)
```


Does this code return `TRUE`?

```r
is_installed("bakeoff")
```

```
# bakeoff 
#    TRUE
```

## Check all package installs {#all}


```r
is_installed(c(arm_from_cran, 'xaringan', 'blogdown', 'armcompanion', 'kableExtra', 'bakeoff'))
```

```
# flexdashboard        learnr      bookdown       officer       rticles 
#          TRUE          TRUE          TRUE          TRUE          TRUE 
#       webshot     tidyverse       remotes     babynames        magick 
#          TRUE          TRUE          TRUE          TRUE          TRUE 
#      xaringan      blogdown  armcompanion    kableExtra       bakeoff 
#          TRUE          TRUE          TRUE          TRUE          TRUE
```


