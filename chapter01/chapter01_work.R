
### Chapter 1.1

## Install the blogdown package from CRAN if you have not already done so:
# install.packages("blogdown")

## Load the blogdown library
library(blogdown)

## Install Hugo to give your websites a basic static site format:
install_hugo()

## If you need to update Hugo, there's a function for that:
update_hugo()

## Check the Hugo version you're using:
hugo_version()



### Chapter 1.2

## In order to build a static site, create a new project and call this function:
new_site()

## new_site() is the same as creating a blogdown template from 
## File > New Project

## Your website can be previewed in the Viewer pane thanks to the LiveReload
## technology.  Although this happens automatically, you can do so manually by
## running the serve_site() command.
serve_site()

## The three most basic concepts for a Hugo-based website are:
##  1) config.toml: configuration file that specifies global settings for your
##    site (ie. website title)
##  2) content/: content directory where written .Rmd or .md files are stored
##    for various posts and pages
##  3) public/: publishing directory where the website is generated; you do not
##    need to manually add any files to this directory



## Chapter 1.3

## RStudio has add-ins that make it easy to edit and preview your website.  You
## may access them by clicking the "Addins" dropdown menu above:
##  * "New Post": Provides dialog box to enter metadata for a blog post; this
##    calls the function new_post(), but does additional things such as:
##    - Generate the filename
##    - Create normal pages under any directories under content/
##    - Select a date from a calendar widget
##    - Scan categories and tags of existing posts
##    - Automatically open a new post for you to write content in
##  * "Update Metadata": Update YAML metadata in a currently opened post
##    - Pro: You can use dropdown menus to get tags instead of remembering them
##  * "Insert Image": Insert any image from your computer to your currently 
##    opened post



## Chapter 1.4

## You can set global options before you work on your website.  They can be set
## using options(name = value).  Available options are:
## * servr.daemon
## * blogdown.author
## * blogdown.ext
## * blogdown.subdir
## * blogdown.yaml.empty

## The options above already have set defaults, which are recommended to use.

## The options are set in an R startup profile file, which is basically an R 
## script that is executed when your R session is started.

## Creating files can be done by using the file_edit() function
## (ie. file_edit("~/.Rprofile"))

## Setting these options changes what is automatically populated in the add-ins



## Chapter 1.5

## You must decide between an R Markdown vs a Markdown file when creating posts.

## Main differences:
## 1. R code can be executed in R Markdown, but not in Markdown.
## 2. Markdown posts are rendered using Blackfriday; R Markdown posts are 
##    rendered using Pandoc (and other packages)
##    * A list of features are shown here: https://blogdown-demo.rbind.io/

## If you find it a pain to remember the differences, just stick with one.

## R Markdown documents can be represented by the extensions .Rmd or .Rmarkdown.

## Main differences:
## 1. You cannot use Markdown features only supported by Pandoc when using
##    .Rmarkdown.
## 2. HTML widgets are not supported in .Rmarkdown
## 3. Output files are cleaner in .Rmarkdown

## You must specify output formats for R Markdown documents (ie. html_document,
## pdf_document).

## All pages take on the format of blogdown::html_page.

## If you want to change the default values of the options of the output format,
## you can add an output field to your YAML metadata.  For example:
##  Add a table of contents to a page, set figure width to be 6 inches, and use
##  the svg device for plots:
##  ---
##  title: "My Awesome Post"
##  author: "John Doe"
##  date: "2017-02-14"
##  output:
##  blogdown::html_page:
##  toc: true
##  fig_width: 6
##  dev: "svg"
##  ---

## Setting options globally can be done by creating an _output.yml file under
## the root directory of the website.



## Chapter 1.6

## Hugo themes control the entire appearance and functionality of your site
##  http://themes.gohugo.io/

## Not all themes have been tested against blogdown.  You can submit issues at:
##  https://github.com/rstudio/blogdown/issues

## After you find a satisfactory theme:
## 1. You need to figure out its GitHub username and repository name.
## 2. Install the theme via install_theme() or creating a new site and passing
##    the information in the "theme =" argument.
##    * Using install_theme() requires manually creating a config.toml file in 
##      root directory of your website to match the newly installed theme.

## Refer to this site for recommended themes: 
##  https://bookdown.org/yihui/blogdown/other-themes.html

## Try to stick with a theme that you will like over the years.



## Chapter 1.7

## There are various workflows to build a website and deploy it. 

## Here is a workflow that requires minimal technical details (although it may
## not be the most optimal workflow):
## 1. Pick a theme and find its Github repo: http://themes.gohugo.io/.
## 2. Create a new project in RStudio and type the code:
##    new_site(theme = 'user/repo') in the R console.
## 3. Play with the new site for a while and decide if it's right for you.

## Do not click the "Knit" button on the RStudio toolbar.

## Publish your website on services such as Git/GitHub or Netlify.