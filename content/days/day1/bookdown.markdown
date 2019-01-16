---
title: bookdown

date: "2019-01-16"

draft: false
toc: true
type: docs

linktitle: bookdown
menu:
  day1:
    parent: PM session
    weight: 6
---




## Slides {#slides}

[Download slide .Rmd](../../../slides/bookdown.Rmd)

<table class="table table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Key Slides </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#1" style="     ">Full slide deck 🖼</a> </td>
  </tr>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#outline" style="     ">Outline 🗓</a> </td>
  </tr>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#start" style="     ">Get started ☁️ or 💻</a> </td>
  </tr>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#publish" style="     ">Publishing 🚀</a> </td>
  </tr>
</tbody>
</table>


## Activities {#activity}




<table class="table table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Activity </th>
   <th style="text-align:left;"> Time </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#yourturn1" style="     ">📤 Your turn #1: Edit your index.Rmd YAML</a> </td>
   <td style="text-align:left;"> 🕝 03:00 minutes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#yourturn2" style="     ">📤 Your turn #2: Add new YAML metadata tags to your index.Rmd</a> </td>
   <td style="text-align:left;"> 🕝 03:00 minutes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#yourturn3" style="     ">📤 Your turn #3: Add/edit chapters in your book</a> </td>
   <td style="text-align:left;"> 🕝 10:00 minutes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#yourturn4" style="     ">📤 Your turn #4: Change how your sidebar TOC looks &amp; works</a> </td>
   <td style="text-align:left;"> 🕝 05:00 minutes </td>
  </tr>
  <tr>
   <td style="text-align:left;"> <a href="../../../slides/bookdown.html#yourturn5" style="     ">📤 Your turn #5: Tune the book output &amp; publish</a> </td>
   <td style="text-align:left;"> 🕝 15:00 minutes </td>
  </tr>
</tbody>
</table>


## Enable Continuous Integration with Travis-CI 

1. In Travis:

  + Enable continuous integration for your book’s GitHub repo on Travis

1. Modify `.gitignore` to include these files as "ignored" by Git:

  + `_book` (unless you had changed the bookdown default `output_dir` to something else in your `_bookdown.yml` file)
  + `_bookdown_files`

1. Add a file named `DESCRIPTION` (no file extension needed)

    ```
    Package: placeholder
    Type: Book
    Title: Does not matter.
    Version: 0.0.1
    Imports: bookdown, ggplot2
    Remotes: rstudio/bookdown
    ```

1. Add a `.travis.yml` file

  ```
  # R for travis: see documentation at https://docs.travis-ci.com/user/languages/r
  
  language: R
  sudo: false
  cache:
  packages: true
  
  script:
  - Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")'
  
  deploy:
  provider: pages
  local_dir: _book
  skip_cleanup: true
  keep-history: true
  github_token: $stat545_GITHUB_PAT
  target_branch: gh-pages
  ```

You could now deploy this book either using GitHub Pages or Netlify.

### Travis-CI to GitHub Pages

1. In your repo on GitHub, go to *Settings > GitHub Pages.*
1. For Source, choose `gh-pages` branch.

### Travis-CI to Netlify

1. Log in to Netlify
1. New Site from Git, select your repository
1. From "Branch to deploy", select `gh-pages` branch.
1. Leave the basic build settings blank (build command and publish directory)
  + This is because in our `.travis.yml`, we set `local_dir: _book`. This means that we had Travis only push the rendered `_book` directory to the `gh-pages` branch. Check it out in that branch in your GitHub repo! You'll see all the files there that are present locally in your `_book` folder.


## Enable Continuous Integration with Travis-CI and Continuous Deployment with Netlify
