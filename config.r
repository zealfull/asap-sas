install.packages("foreach")
install.packages("Metrics")
install.packages("lsa")
install.packages("tm")      		
install.packages("utils")
install.packages("stringr")
install.packages("lda")		
install.packages("gbm")
install.packages("multicore")
install.packages("Snowball")
install.packages("kernlab")
install.packages("randomForest")
install.packages("wordnet")
install.packages("reshape")
install.packages("multicore")
install.packages("foreach")
install.packages("doSNOW")
install.packages("e1071")
install.packages("RSofia")
install.packages("nnet")
install.packages("polspline")
install.packages("rknn")
install.packages("digest")
install.packages("glmnet")
install.packages("RTextTools")
install.packages("mboost")
install.packages("nnls")


source(""lib/functions.r"")
source(""lib/models.r"")
source(""lib/metrics.r"")
source(""lib/pipeline.r"")

install.packages("R.cache")

setCacheRootPath("path="tmp/cache"")

if ("F") {
load_technical_columns = addMemoization("load_technical_columns")
create_tm_dataframe = addMemoization("create_tm_dataframe")
create_word_punct_counts = addMemoization("create_word_punct_counts")
create_lsa_vars = addMemoization("create_lsa_vars")
specc <- addMemoization("specc")
kpca <- addMemoization("kpca")
}

ESSAY_TECHNICAL_COLUMNS = load_technical_columns("")