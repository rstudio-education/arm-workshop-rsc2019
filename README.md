# Project Kickstart-R

**Project Kickstart-R** provides a minimal template to create a **Landing Page** and **Knowledge Sharing Platform** with *Academic* and **(R) Markdown**.

**Academic** is a framework to help you create a beautiful website quickly.

[Check out the demo](https://sourcethemes.com/academic/) of what you'll get in less than 5 minutes or [view the documentation](https://sourcethemes.com/academic/docs/).

[![Screenshot](https://raw.githubusercontent.com/sourcethemes/project-kickstart-r/master/project-kickstart-r.png)](https://github.com/sourcethemes/project-kickstart-r)

## Install in 5 Steps

Open [RStudio](https://www.rstudio.com/products/rstudio/) and create a new project.

Run the following commands in RStudio to bootstrap your new project website with **Project Kickstart-R**:

1. Install the [Blogdown](https://bookdown.org/yihui/blogdown/) dependency:

    `install.packages("blogdown")`

2. Install the [Hugo](https://gohugo.io/) dependency:

    `install.packages("hugo")`

3. Install the [Academic](https://sourcethemes.com/academic/) dependency:

    `blogdown::new_site(theme = "gcushen/hugo-academic", sample = FALSE, theme_example = FALSE)`

4. Download **Project Kickstart-R**:

    `download.file( url = "https://github.com/sourcethemes/project-kickstart-r/archive/master.zip", destfile="project-kickstart-r.zip")`

5. Install **Project Kickstart-R** into your new project folder:

    `unzip( zipfile = "project-kickstart-r.zip", junkpaths = TRUE )`

A browser tab should open, displaying your new website. Otherwise, check your RStudio console messages.

Finally, learn how to [customize](https://sourcethemes.com/academic/docs/get-started/) and [deploy](https://sourcethemes.com/academic/docs/deployment/) your site.


## License

Copyright 2018-present [George Cushen](https://georgecushen.com).

Released under the [MIT](https://github.com/sourcethemes/project-kickstart-r/blob/master/LICENSE.md) license.

[![Analytics](https://ga-beacon.appspot.com/UA-78646709-2/project-kickstart-r/readme?pixel)](https://github.com/igrigorik/ga-beacon)
