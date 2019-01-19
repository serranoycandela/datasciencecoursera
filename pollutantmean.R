pollutantmean <- function(directory, pollutant, id = 1:332){
  vector <- c()
  for (m in id){
    filename = sprintf("%03d.csv", m)
    m_df = read.csv(file=file.path(directory, filename))
    sl <- m_df[[pollutant]]
    vector <- append(vector, sl)
  }
  mean(vector, na.rm = TRUE)
}