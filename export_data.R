library(readr)
library(openxlsx)
library(arrow)
library(haven)
library(DBI)
library(RSQLite)


readr::write_csv(job_posts, file = "job-posts.csv")
openxlsx::write.xlsx(job_posts, "job-posts.xls")
write_parquet(job_posts, "job-posts.parquet")
write_feather(data, "job-posts.feather")
haven::write_sav(data, "job-posts.sav")
saveRDS(job_posts, "job-posts.rds")

con <- dbConnect(SQLite(), "job-posts.sqlite")
dbWriteTable(
  con,
  name = "job-posts",
  value = d,
  overwrite = TRUE
)
dbDisconnect(con)
