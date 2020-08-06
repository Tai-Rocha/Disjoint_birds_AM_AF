########################################################
## Compile two occurrence tables from different sources
## Author: Tainá Rocha
########################################################

## R base library, so we do not call any library

## Read and load tables Schiffronis turdina

st_ebird <- read.csv("./data/S_turdina/sp_records/RAW/e_bird_raw/ebd_thlsch3_relJun-2020/ebdird_st.csv", sep = "\t", dec = ".")

st_gbif <- read.table("./data/S_turdina/sp_records/RAW/gbif_raw/st_gbif_raw.txt", sep = " ", dec = ".")

st_idigbio <- read.table("./data/S_turdina/sp_records/RAW/idigbio_raw/st_idigbio_raw.txt", sep = " ", dec = ".")

st_inat <- read.table("./data/S_turdina/sp_records/RAW/inat_raw/st_inat_raw.txt", sep = " ", dec = ".")

st_vertnet <- read.csv("./data/S_turdina/sp_records/RAW/VertNet_raw/vertnet_st.csv", sep = "\t", dec = ".")


## Merge Two Data Frames (it works for two data.frames)

gbif_ebird <- merge(st_gbif,st_ebird[-1,],by=c('name', 'longitude', 'latitude','date'),all=T)


#### Test to put together two data.frames

df1 <- read.table("./data/X_guttatus/sp_records/RAW/inat_raw/xg_inat_raw.txt", sep = " ")

df2 <- read.table("./data/X_guttatus/sp_records/RAW/idigbio_raw/xg_idigbio_raw.txt", sep = " ")

## Merge Two Data Frames (it works for two data.frames)
# Merge two data frames by common columns or row names, or do other versions of database join operations.

output <- merge(df2,df1,by=c('name', 'longitude', 'latitude','date'),all=T, no.dups= T)
