#' Create a list of docker files from a vector or r versions
#'
#' @param r_version A vector of strings.
#'
#' @return A list of strings.
#' @export
#'
#' @examples
#' r_version <- c("3.6.0", "3.5.0")
#' docker_files <- enlist_dockerfiles(r_version)
#' docker_files
enlist_dockerfiles <- function(r_version) {
  path <- system.file("Dockerfile", package = "r2dii.ci")
  docker_file <- readLines(path)
  from_image <- sprintf(
    "FROM colinfay/r-ci-tidyverse:%s",
    r_version
  )

  out <- lapply(from_image, function(x) c(x, docker_file))
  stats::setNames(out, r_version)
}
