########################################################
## Compile two occurrence tables from different sources
## Author: Tainá Rocha
########################################################

## Library

library(dplyr)

## Read and load tables Schiffronis turdina

st_ebird <- read.csv("./data/S_turdina/sp_records/RAW/e_bird_raw/ebd_thlsch3_relJun-2020/ebdird_st.csv", sep = "\t", dec = ".")

st_gbif <- read.table("./data/S_turdina/sp_records/RAW/gbif_raw/st_gbif_raw.txt", sep = " ", dec = ".")

st_idigbio <- read.table("./data/S_turdina/sp_records/RAW/idigbio_raw/st_idigbio_raw.txt", sep = " ", dec = ".")

st_inat <- read.table("./data/S_turdina/sp_records/RAW/inat_raw/st_inat_raw.txt", sep = " ", dec = ".")

st_vertnet <- read.csv("./data/S_turdina/sp_records/RAW/VertNet_raw/vertnet_st.csv", sep = "\t", dec = ".")


## Merge Data Frames (it works for two data.frames)

## Merge gbif and e-bird
gbif_ebird <- merge(st_gbif,st_ebird,by=c('name', 'longitude', 'latitude','date'),all=T)

## Merge idgibio and inat
idgibio_inat <- merge(st_idigbio,st_inat,by=c('name', 'longitude', 'latitude','date'),all=T)

## Merge gbif_ebird and idgbio_inat
gbebidin <- merge(gbif_ebird,idgibio_inat,by=c('name', 'longitude', 'latitude','date'),all=T)

## Merge gbebidin com st_vertnet
## Combine two data frames by rows when they have different sets of columns (use "bind_rows" function)

all_sources_st <- dplyr::bind_rows(gbebidin, st_vertnet)

write.table(all_sources_st, "./data/S_turdina/sp_records/Compiled_File_All_sources/all_sources.txt", dec = ".")

##### filter(): Extract rows that meet a certain logical criteria. For example iris %>% filter(Sepal.Length > 6).

all_filter_year <- all_sources_st %>% filter(date>1985-01-01)

write.table(all_filter_year,"./data/S_turdina/sp_records/Filters/Records_Since_1985/turdina_filter_1985.txt", dec = ".")
