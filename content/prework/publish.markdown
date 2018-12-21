+++
title = "Publishing"

date = 2018-12-10T00:00:00
# lastmod = 2018-09-09T00:00:00

draft = false  # Is this a draft? true/false
toc = true  # Show table of contents? true/false
type = "docs"  # Do not modify.

# Add menu entry to sidebar.
linktitle = "Publishing"
[menu.prework]
  parent = "Publishing & beyond"
  weight = 5
+++

In this workshop, we'll develop static sites, so publishing is a matter of connecting or copying the output directory to a web server or web hosting service. We'll give you two convenient options for publishing (there are lots more!): [RStudio Connect](#rsc) and [Netlify](#netlify).

## RStudio Connect (RSC) {#rsc}

[RSC](https://www.rstudio.com/products/connect/) is a server product from RStudio for secure sharing of websites, applications, reports, and plots. It is a paid product designed for use within the Enterprise. [RSC](https://www.rstudio.com/products/connect/) is a server that you run inside an organization, so is suitable for publishing content that you only want visible within your organization's network as opposed to visible to the entire internet. 

To use RSC locally (i.e., you chose [option 2](../options#computer)), even if you only want to use it for this workshop, you'll need to install the [`rsconnect` R package](https://github.com/rstudio/rsconnect) from CRAN:


```r
install.packages("rsconnect")
```

You'll receive an email from us before the workshop with your login information. With that, to publish, you will:

1. Click publish and elect RStudio Connect
1. Enter `beta.rstudioconnect.com`
1. Follow the prompts to create an account using an existing google account


## Netlify {#netlify}

If you are comfortable using [GitHub](../github), we recommend using [Netlify](https://bookdown.org/yihui/rmarkdown/blogdown-deploy.html). [Netlify](https://www.netlify.com/) is a popular website hosting service that allows for both direct upload of website files or integrated publishing from Git repositories via commit-hooks. To use Netlify, you can login using your GitHub, GitLab, or Bitbucket account.
