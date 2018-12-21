+++
title = "Install/upgrade software"

date = 2018-12-10T00:00:00
# lastmod = 2018-09-09T00:00:00

draft = false  # Is this a draft? true/false
toc = true  # Show table of contents? true/false
type = "docs"  # Do not modify.

# Add menu entry to sidebar.
linktitle = "Install/upgrade software"
[menu.prework]
  parent = "Local setup"
  weight = 2
+++

In this workshop, we will use R and [RStudio](https://www.rstudio.com/products/rstudio/). RStudio is not required but recommended, because it makes it easier for an average user to work with R Markdown. If you do not have RStudio IDE installed, you will have to install Pandoc (http://pandoc.org), otherwise there is no need to install Pandoc separately because RStudio has bundled it. 

## Install R

* The [latest version of R](https://cran.rstudio.com/) (3.5.1 "Feather Spray") is recommended. You can check your version from the R Console:


```r
getRversion()
```

```
## [1] '3.5.1'
```


## Install RStudio

* [RStudio](https://www.rstudio.com/products/rstudio/download/#download) (>= 1.1.463)  is recommended.


## Upgrading your system

For more help installing or upgrading R and RStudio, please read through these links:

1. [Chapter 6 in **Happy Git with R**](http://happygitwithr.com/install-r-rstudio.html)
1. [Maintaining R from **What They Forgot to Teach You About R**](https://whattheyforgot.org/maintaining-r.html)
    - See ["How to transfer your library when updating R"](https://whattheyforgot.org/maintaining-r.html#how-to-transfer-your-library-when-updating-r)
