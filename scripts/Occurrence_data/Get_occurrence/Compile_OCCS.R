########################################################
## Compile two occurrence tables from different sources
## Author: Tainá Rocha
########################################################

## Library

library(dplyr)

## Read and load tables Schiffronis turdina

st_ebird <- read.csv("./data/S_turdina/sp_records/RAW/e_bird_raw/ebd_thlsch3_relJun-2020/st_ebird_.csv", sep = "\t", dec = ".", fill = T)

st_gbif <- read.table("./data/S_turdina/sp_records/RAW/gbif_raw/st_gbif_raw.txt", sep = " ", dec = ".", fill = T)

st_idigbio <- read.csv("./data/S_turdina/sp_records/RAW/idigbio_raw/st_idigbio.csv", sep = " ", dec = ".", fill = T)

st_inat <- read.csv("./data/S_turdina/sp_records/RAW/inat_raw/st_inat.csv", sep = ",", dec = ".", fill = T)

st_vertnet <- read.csv("./data/S_turdina/sp_records/RAW/VertNet_raw/st_vertnet.csv", sep = "\t", dec = ".", fill = T)


## Merge idgibio and inat
idgibio_inat <- merge(st_idigbio,st_inat,by=c('scientificName', 'longitude', 'latitude','year', "country"),all=T)

## Merge e-bird and vertnet
ebird_vertnet <- merge(st_ebird,st_vertnet,by=c('scientificName', 'longitude', 'latitude','year', "country"),all=T)

## Merge gidgibio_inat and ebird_vertnet
gbebidin <- merge(gbif_ebird,idgibio_inat,by=c('name', 'longitude', 'latitude','date'),all=T)

## Merge gbebidin com st_vertnet
## Combine two data frames by rows when they have different sets of columns (use "bind_rows" function)

all_sources_st <- dplyr::bind_rows(gbebidin, st_vertnet)

write.table(all_sources_st, "./data/S_turdina/sp_records/Compiled_File_All_sources/all_sources.txt", dec = ".")

##### filter(): Extract rows that meet a certain logical criteria. For example iris %>% filter(Sepal.Length > 6).

#all_sources_st <- read.table("./data/S_turdina/sp_records/Compiled_File_All_sources/st_all_sources.txt", dec = ".")

all_filter_year <- all_sources_st %>% filter(date>1985)

write.table(all_filter_year,"./data/S_turdina/sp_records/Filters/Records_Since_1985/turdina_filter_1985.txt", sep = " ", dec = ".")
