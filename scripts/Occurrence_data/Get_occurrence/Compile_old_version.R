#####################################
## To compile data (raw tables)
## Auhtor: Tainá Rocha
#####################################


## Library

library(reshape2)
library(reshape)

## Read and load tables Schiffronis turdina

st_ebird <- read.table("./data/S_turdina/sp_records/RAW/e_bird_raw/ebd_thlsch3_relJun-2020/ebdird_st.txt", sep = "\t", dec = ".")

st_gbif <- read.table("./data/S_turdina/sp_records/RAW/gbif_raw/st_gbif_raw.txt", sep = " ", dec = ".")

st_idigbio <- read.table("./data/S_turdina/sp_records/RAW/idigbio_raw/st_idigbio_raw.txt", sep = " ", dec = ".")

st_inat <- read.table("./data/S_turdina/sp_records/RAW/inat_raw/st_inat_raw.txt", sep = " ", dec = ".")

st_vertnet <- read.table("./data/S_turdina/sp_records/RAW/VertNet_raw/vertnet_st.txt", sep = "\t", dec = ".")


## Merge all data.frames

list_st <- list(st_ebird, st_gbif, st_idigbio, st_inat, st_vertnet)

merged_st <- merge_all(list_st)

# Write new table

write.table(merged_st, "./data/st_all_souces.txt", dec = ".")
