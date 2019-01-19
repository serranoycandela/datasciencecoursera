complete <- function(directory, id = 1:332){
  df <- data.frame(id=numeric(), nobs=numeric()) 
  for (m in id){
    filename = sprintf("%03d.csv", m)
    m_df = read.csv(file=file.path(directory, filename))
    n_complete <- sum(complete.cases(m_df))
    df[nrow(df) + 1,] <- list(id = m, nobs = n_complete)
  }
  df
}