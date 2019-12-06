FROM colinfay/r-ci-tidyverse:3.5.0
MAINTAINER Mauro Lepore maurolepore@gmail.com

RUN Rscript -e 'devtools::install_github(c(\
  "r-lib/rlang",\
  "r-lib/lifecycle",\
  "2DegreesInvesting/r2dii",\
  "2DegreesInvesting/r2dii.utils",\
  "2DegreesInvesting/r2dii.dataraw",\
  "2DegreesInvesting/r2dii.match"),\
  dependencies=NA,\
  build_vignettes=FALSE)'
