###################################################
## Filters to clean occurrence dataset compiled
## Author: Tainá Rocha
###################################################

### Library

library(sp)

## Read and load table compiled

Filter_1985 <- read.table("./data/S_turdina/sp_records/Filters/Records_Since_1985/turdina_filter_1985.txt", sep = " ", dec = ".")


# Remove duplic.
dups.all <- duplicated(Filter_1985[, c('longitude', 'latitude')])

st_unique <- Filter_1985[!dups.all, ]

## Write table as .txt and .csv

write.table(st_unique, "./data/S_turdina/sp_records/Filters/Records_Since_1985/st_unique.txt", sep = " ", dec = ".")

write.csv(st_unique, "./data/S_turdina/sp_records/Filters/Records_Since_1985/st_unique.csv", sep = " ", dec = ".")
