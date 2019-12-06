FROM rocker/tidyverse:3.6
MAINTAINER Mauro Lepore maurolepore@gmail.com

# From https://github.com/ColinFay/r-ci/blob/master/tidyverse/3.5.0/Dockerfile
RUN apt-get update && \
    apt-get install -y libssh-dev && \
    install2.r \
    remotes \
    devtools \
    ssh \
    desc \
    dockerfiler \
    testthat \
    vdiffr \
    rcmdcheck \
    covr \
    pkgbuild \
    pkgdown \
    config

RUN Rscript -e 'devtools::install_github(c(\
  "r-lib/rlang",\
  "r-lib/lifecycle",\
  "r-lib/ellipsis",\
  "r-lib/usethis",\
  "r-lib/fs",\
  "2DegreesInvesting/r2dii",\
  "2DegreesInvesting/r2dii.utils",\
  "2DegreesInvesting/r2dii.dataraw",\
  "2DegreesInvesting/r2dii.match"),\
  dependencies=NA,\
  build_vignettes=FALSE)'
