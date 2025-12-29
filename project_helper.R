install.packages("gitignore")
library(gitignore)

gitignore::gi_fetch_templates(template_name = "r", append_gitignore = TRUE)
