#' Extract Data
#'
#' This function extracts the dummy data.
#'
#' @export
extract_data <- function() {
  data("dummy_data", package = "etlpackage")
  return(dummy_data)
}

#' Transform Data
#'
#' This function transforms the dummy data by adding a new column.
#'
#' @param data Data frame to transform.
#' @export
transform_data <- function(data) {
  data$grade <- ifelse(data$score >= 90, "A", ifelse(data$score >= 80, "B", ifelse(data$score >= 70, "C", "D")))
  return(data)
}

#' Load Data
#'
#' This function saves the transformed data to a CSV file.
#'
#' @param data Data frame to save.
#' @param path File path to save the data.
#' @export
load_data <- function(data, path) {
  write.csv(data, path, row.names = FALSE)
}
