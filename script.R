# install and load pkgs if necessary
load <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE, repos="http://cran.us.r-project.org")
  sapply(pkg, require, character.only = TRUE)
} 

packages <- c("tidyverse")
load(packages)

# load dataset
salaries <- read.csv("ds_salaries.csv")

# checking if things are going well
class(salaries)
names(salaries)
