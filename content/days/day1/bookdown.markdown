---
title: bookdown

date: "2019-01-08"

draft: true
toc: true
type: docs

linktitle: bookdown
menu:
  day1:
    parent: PM session
    weight: 6
---

## Slides {#slides}

[Full slide deck](../../../slides/bookdown.html) 
<i class="fas fa-list-ul fa-fw"></i></i>[Outline](../../../slides/bookdown.html#outline)



## Activities {#activity}

Make this whole thing into a better-looking table

<ul class="fa-ul">
  <li><span class="fa-li"><i class="fas fa-hand-point-right fa-fw"></i></span>&nbsp;[Your-turn #1](../../../slides/bookdown.html#yourturn-1): Edit your `index.Rmd` YAML (<i class="far fa-clock"></i> 03:00 minutes)</li>
  <li><span class="fa-li"><i class="fas fa-hand-point-right fa-fw"></i></span>&nbsp;[Your-turn #2](../../../slides/bookdown.html#yourturn-2): Add new YAML metadata tags to your `index.Rmd` (<i class="far fa-clock"></i> 03:00 minutes)</li>
  <li><span class="fa-li"><i class="fas fa-hand-point-right fa-fw"></i></span>&nbsp;[Your-turn #3](../../../slides/bookdown.html#yourturn-3): Add/edit chapters in your book (<i class="far fa-clock"></i> 10:00 minutes)</li>
  <li><span class="fa-li"><i class="fas fa-hand-point-right fa-fw"></i></span>&nbsp;[Your-turn #4](../../../slides/bookdown.html#yourturn-4): Change how your sidebar TOC looks & works (<i class="far fa-clock"></i> 05:00 minutes)</li>
  <li><span class="fa-li"><i class="fas fa-hand-point-right fa-fw"></i></span>&nbsp;[Your-turn #5](../../../slides/bookdown.html#yourturn-5): Tune the book output & publish (<i class="far fa-clock"></i> 15:00 minutes)</li>



```r
library(tidyverse)
library(gt)

activities <- tribble(~link, ~label, ~time,
                      "../../../slides/bookdown.html#yourturn-1", "Edit your `index.Rmd` YAML", "03:00 minutes",
                      "../../../slides/bookdown.html#yourturn-2", "Add new YAML metadata tags to your `index.Rmd`", "03:00 minutes",
                      "../../../slides/bookdown.html#yourturn-3", "Add/edit chapters in your book", "10:00 minutes",
                      "../../../slides/bookdown.html#yourturn-4", "Change how your sidebar TOC looks & works", "05:00 minutes",
                      "../../../slides/bookdown.html#yourturn-5", "Tune the book output & publish", "15:00 minutes")

addLink <- function(df = activities, column_name = link) {
  quoted_link <- enquo(column_name)
  links <- df %>% 
    mutate(safe_url = htmltools::htmlEscape(!!quoted_link, attribute = TRUE),
           link_cells = glue::glue('<a href="{safe_url}">Your turn #{stringr::str_sub(safe_url, start = -1)}:)</a>'))
  return(links)
}

dat <- addLink(activities)

dat %>%
  gt() %>%
  text_transform(
    locations = cells_data(columns = vars(link_cells)),
    fn = function (x) glue::glue('<a href="{x}">{x}</a>"')
  )
```


