#####################################
## To compile data (raw tables)
## Auhtor: Tainá Rocha
#####################################

## Read and load tables 

df1 <- read.table("./data/X_guttatus/sp_records/RAW/inat_raw/xg_inat_raw.txt", sep = " ")

df2 <- read.table("./data/X_guttatus/sp_records/RAW/idigbio_raw/xg_idigbio_raw.txt", sep = " ")


## Merge Two Data Frames
# Merge two data frames by common columns or row names, or do other versions of database join operations.

output <- merge(df2,df1,by=c('name', 'longitude', 'latitude','date'),all=T)
