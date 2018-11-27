+++
title = "Software Installations"

date = 2018-09-09T00:00:00
# lastmod = 2018-09-09T00:00:00

draft = false  # Is this a draft? true/false
toc = true  # Show table of contents? true/false
type = "docs"  # Do not modify.

# Add menu entry to sidebar.
linktitle = "Software Installations"
[menu.prework]
  parent = "Set-up"
  weight = 1

# Featured image.
# Uncomment below lines to use.
[header]
  image = "cover.png"
  caption = "Image credit: [**Academic**](https://github.com/gcushen/hugo-academic/)"
+++

In this workshop, we will use R, RStudio, and a few R packages. RStudio is not required but recommended, because it makes it easier for an average user to work with R Markdown. If you do not have RStudio IDE installed, you will have to install Pandoc (http://pandoc.org), otherwise there is no need to install Pandoc separately because RStudio has bundled it. 

## Install R and RStudio

* The [latest version of R](https://cran.rstudio.com/) (3.5.1 "Feather Spray") is recommended but not required. Just do not use a version of R that is too old (e.g. two years older than the latest).

* [RStudio](https://www.rstudio.com/products/rstudio/download/#download) (>= 1.1.463) (again, the very latest version is recommended but not required).

## Install R packages 

Using your R console, install these R packages we'll be using (development versions of anything?; copied from [here](https://github.com/rbind/yihui/issues/30)):

```
install.packages(c('bookdown', 'blogdown', 'devtools',
                 'flexdashboard', 'learnr', 'rticles'))
devtools::install_github(c('rstudio/bookdown', 'yihui/xaringan')
```

> flag: ask Yihui why bookdown github version

## Install Hugo

You may install Hugo using the `blogdown` package helper function in your R Console:

```
blogdown::install_hugo()
```

### Update Hugo (if necessary)

In your R Console, please do the following to make sure that you are working with the latest version of Hugo (>= 0.51): 
    
```
blogdown::hugo_version() # to check your version
blogdown::update_hugo() # to force an update
```

## Install Git (Optional)

Install Git. https://git-scm.com/downloads You can use RStudio as the Git GUI, so no need to install a separate GUI unless you have your own favorite GUI. For more detailed instructions, see the installation section of [Happy Git with R](http://happygitwithr.com/install-git.html) for how to install Git on various operating systems.