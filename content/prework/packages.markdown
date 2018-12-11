+++
title = "Install R packages"

date = 2018-09-09T00:00:00
# lastmod = 2018-09-09T00:00:00

draft = false  # Is this a draft? true/false
toc = true  # Show table of contents? true/false
type = "docs"  # Do not modify.

# Add menu entry to sidebar.
linktitle = "Install R packages"
[menu.prework]
  parent = "Installs"
  weight = 3
+++



For this workshop, you'll need to install several R packages. This page will guide you through installing the packages we will use. If you are very comfortable installing packages in R, then you could run this code from your R console to install all of the necessary packages:


```r
arm_pkgs <- c("devtools", "xaringan", "flexdashboard", 
              "blogdown", "bookdown", "tidyverse")
install.packages(arm_pkgs)
```

Also please review section <a href="#update-hugo">1.4.2</a> to make sure you have Hugo version 0.52, which you'll need for **blogdown**.


## devtools {#devtools}

First, install the devtools package, so that you may download the development versions of the pacakges we'll use from GitHub:


```r
install.packages("devtools")
```

You can check to make sure you are successful by running:

```r
# should just work if installed
library(devtools)
```

You can also check to make sure an individual package is installed by running this function (see <a href="#all">1.7</a> for how to check for all packages):


```r
is_installed <- function(pkg_name){
  setNames(is.element(pkg_name, installed.packages()[, "Package"]), pkg_name)
} 
is_installed("devtools")
```

```
# devtools 
#     TRUE
```


Now that you have the devtools package installed, you can use your R console to install the following packages:

## xaringan {#xaringan}

Install the [**xaringan** package](https://github.com/yihui/xaringan) from GitHub as follows:

```
devtools::install_github('yihui/xaringan')
```

Can you load the package?

```r
# should just work if installed
library(xaringan)
```


Does this code return `TRUE`?

```r
is_installed("xaringan")
```

```
# xaringan 
#     TRUE
```


## flexdashboard {#flexdashboard}

Install the [**flexdashboard** package](https://rmarkdown.rstudio.com/flexdashboard/) from CRAN as follows:

```
install.packages("flexdashboard")
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

## blogdown {#blogdown}

Install the [**blogdown** package](https://github.com/rstudio/blogdown) from CRAN as follows:

```
install.packages("blogdown")
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

```
blogdown::install_hugo()
```

### Update Hugo (if necessary) {#update-hugo}

In your R Console, please do the following to make sure that you are working with the latest version of Hugo (>= 0.52): 
    
```
blogdown::hugo_version() # to check your version
blogdown::update_hugo() # to force an update
```

## bookdown {#bookdown}

Install the [**bookdown** package](https://github.com/rstudio/bookdown) from CRAN as follows:

```
install.packages("bookdown")
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

## tidyverse {#tidyverse}

For many code examples provided in the workshop activities, you'll need to install the [**tidyverse** meta-package](https://www.tidyverse.org/packages/) from CRAN as follows:

```
install.packages("tidyverse")
```

Can you load the package?

```r
# should just work if installed
library(tidyverse)
```


Does this code return `TRUE`?

```r
is_installed("tidyverse")
```

```
# tidyverse 
#      TRUE
```

## Check all package installs {#all}


```r
arm_pkgs <- c("devtools", "xaringan", "flexdashboard", 
              "blogdown", "bookdown", "tidyverse")
is_installed(arm_pkgs)
```

```
#      devtools      xaringan flexdashboard      blogdown      bookdown 
#          TRUE          TRUE          TRUE          TRUE          TRUE 
#     tidyverse 
#          TRUE
```

