corr <- function(directory, threshold = 0) {
  how_complete <- complete("specdata")
  correlations <- numeric()
  for (row in 1:nrow(how_complete)) {
    id <- how_complete[row, "id"]
    nobs  <- how_complete[row, "nobs"]
    if (nobs > threshold) {
      filename <- sprintf("%03d.csv", id)
      data <- read.csv(file=file.path(directory, filename))
      the_cor <- cor(data$nitrate, data$sulfate, use="complete.obs")
      correlations <- append(correlations, the_cor)
    }
  }
  correlations
}