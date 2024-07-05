# Generate and save dummy raw data
dummy_data <- data.frame(
  id = 1:10,
  name = c("Alice", "Bob", "Carol", "David", "Eve", "Frank", "Grace", "Hank", "Ivy", "Jack"),
  score = sample(60:100, 10, replace = TRUE)
)
usethis::use_data(dummy_data, overwrite = TRUE)
