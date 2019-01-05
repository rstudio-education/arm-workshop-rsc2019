---
title: Install R packages
author: ''
date: "2019-01-04"
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
                   "tidyverse", "remotes", "babynames")
```


```r
install.packages(arm_from_cran, dependencies = TRUE)
```


```r
arm_from_gh <- c('yihui/xaringan', 'rstudio/blogdown')
```


```r
remotes::install_github(arm_from_gh, dependencies = TRUE)
```


Also please review section <a href="#update-hugo">0.5.2</a> to make sure you have Hugo version 0.52, which you'll need for **blogdown**.

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

You can also check to make sure an individual package is installed by running this function (see Section <a href="#all">0.8</a> for how to check for all packages):





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

## tidyverse & data packages {#tidyverse}

For many code examples provided in the workshop activities, you'll need to install the [**tidyverse** meta-package](https://www.tidyverse.org/packages/) and some data packages from CRAN as follows:


```r
install.packages(c("tidyverse", "babynames"), dependencies = TRUE)
```

Can you load the package?

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

## Check all package installs {#all}


```r
is_installed(c(arm_from_cran, 'xaringan', 'blogdown'))
```

```
# flexdashboard        learnr      bookdown     tidyverse       remotes 
#          TRUE          TRUE          TRUE          TRUE          TRUE 
#     babynames      xaringan      blogdown 
#          TRUE          TRUE          TRUE
```


