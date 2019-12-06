#' Create a list of docker files from a vector or r versions
#'
#' @param r_version A vector of strings.
#'
#' @return A list of strings.
#' @export
#'
#' @examples
#' r_version <- glue::glue("3.{6:3}")
#' enlist_dockerfile(r_version)
enlist_dockerfile <- function(r_version) {
  path <- system.file("Dockerfile", package = "r2dii.ci")
  docker_file <- readLines(path)
  from_image <- sprintf(
    "FROM rocker/tidyverse:%s",
    r_version
  )

  out <- lapply(from_image, function(x) c(x, docker_file))
  stats::setNames(out, r_version)
}

#' Create dockerfiles for a given R version
#'
#' @inherit enlist_dockerfile
#'
#' @return Called for it's side effect (returns the first argument invisibly).
#' @export
#'
#' @examples
#' \dontrun{
#' r_version <- c("3.6.0", "3.5.0")
#' create_dockerfile(r_version)
#' }
create_dockerfile <- function(r_version) {
  docker_files <- enlist_dockerfile(r_version)
  out_path <- fs::path(r_version, "Dockerfile")

  fs::dir_create(fs::path_dir(out_path))
  purrr::walk2(docker_files, out_path, writeLines)

  invisible(r_version)
}
