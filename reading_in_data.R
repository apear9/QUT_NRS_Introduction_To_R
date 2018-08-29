#### This script ingests data in a csv to R.

meuse <- read.csv(
  file = "meuse.csv",
  as.is = TRUE
)

names(meuse)

