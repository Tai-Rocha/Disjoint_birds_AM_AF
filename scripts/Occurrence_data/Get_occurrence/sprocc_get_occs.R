##################################
## Get occurence data 
## Packages: spocc and rocc 
## Author: Tainá Rocha
##################################

#### Library

library(spocc)

#### Lipaugus vociferans

#### GBIF

lv_gbif <- occ(query = 'Lipaugus vociferans', 
               from = 'gbif', 
               has_coords= TRUE, 
               limit = 24000
               )

lv_gbif
lv_gbif$gbif

### Convert occdata classe object (i.e lv_gbif) into data.frame

lipaugus_gbif_raw <- occ2df(lv_gbif, what = "data")

## Write table
write.table(lipaugus_gbif_raw, "./data/L_vociferans/sp_records/RAW/gbif_raw/lv_gbif_raw.txt", dec = ".")

#### e-bird

lv_ebird <- occ(query = 'Lipaugus vociferans', 
                from = 'ebird', 
                ebirdopts = list(loc='BR', key="t0nsff58p2ki"),
                has_coords= TRUE,
                limit = 24000)

lv_ebird
lv_ebird$ebird

### Convert occdata classe object (i.e st_ebird) into data.frame
lipaugus_ebird_raw <- occ2df(lv_ebird, what = "data")

## Write table
write.table(lipaugus_ebird_raw, "./data/L_vociferans/sp_records/RAW/e_bird_raw/lv_ebird_raw.txt", dec = ".")


#### Idigbio

lv_idigbio <- occ( query = 'Lipaugus vociferans', 
                   from = 'idigbio', 
                   has_coords= TRUE, 
                   limit = 24000)

lv_idigbio
lv_idigbio$idigbio

### Convert occdata classe object (i.e st_idigbio) into data.frame

lipaugus_idigbio_raw <- occ2df(lv_idigbio, what = "data")

## Write table

write.table(lipaugus_idigbio_raw, "./data/L_vociferans/sp_records/RAW/idigbio_raw/lv_idigbio_raw.txt", dec = ".")

#### I naturalist 

lv_inat <- occ( query = 'Lipaugus vociferans', 
                from = 'inat', 
                has_coords= TRUE, 
                limit = 24000)

lv_inat
lv_inat$inat

### Convert occdata classe object (i.e lv_inat) into data.frame
lipaugus_inat_raw <- occ2df(lv_inat, what = "data")

## Write table

write.table(lipaugus_inat_raw, "./data/L_vociferans/sp_records/RAW/inat_raw/lv_inat_raw.txt", dec = ".")


######## vertnet

lv_vertnet <- occ( query = 'Lipaugus vociferans', 
                   from = 'vertnet', 
                   has_coords= TRUE, 
                   limit = 24000)

lv_vertnet
lv_vertnet$vertenet


#### Schiffornis turdina

#### GBIF

st_gbif <- occ(query = 'Schiffornis turdina', 
               from = 'gbif', 
               has_coords= TRUE, 
               limit = 7000)

st_gbif
st_gbif$gbif

### Convert occdata classe object (i.e st_gbif) into data.frame

turdina_gbif_raw <- occ2df(st_gbif, what = "data")

## Write table
write.table(turdina_gbif_raw, "./data/S_turdina/sp_records/RAW/gbif_raw/st_gbif_raw.txt", dec = ".")


#### e-bird

st_ebird <- occ(query = 'Schiffornis turdina', 
                from = 'ebird', 
                ebirdopts = list(loc='BR', key="t0nsff58p2ki"),
                has_coords= TRUE,
                limit = 7000)

st_ebird
st_ebird$ebird

### Convert occdata classe object (i.e st_ebird) into data.frame

turdina_ebird_raw <- occ2df(st_ebird, what = "data")

## Write table
write.table(turdina_ebird_raw, "./data/S_turdina/sp_records/RAW/e_bird_raw/st_ebird_raw.txt", dec = ".")


##### Idigbio

st_idigbio <- occ( query = 'Schiffornis turdina', 
                   from = 'idigbio', 
                   has_coords= TRUE, 
                   limit = 7000)

st_idigbio
st_idigbio$idigbio

### Convert occdata classe object (i.e st_idigbio) into data.frame

turdina_idigbio_raw <- occ2df(st_idigbio, what = "data")

## Write table

write.table(turdina_idigbio_raw, "./data/S_turdina/sp_records/RAW/idigbio_raw/st_idigbio_raw.txt", dec = ".")

#### I naturalist 

st_inat <- occ( query = 'Schiffornis turdina', 
                   from = 'inat', 
                   has_coords= TRUE, 
                   limit = 7000)

st_inat
st_inat$inat

### Convert occdata classe object (i.e st_inat) into data.frame

turdina_inat_raw <- occ2df(st_inat, what = "data")

## Write table

write.table(turdina_inat_raw, "./data/S_turdina/sp_records/RAW/inat_raw/st_inat_raw.txt", dec = ".")


#### Xiphorhynchus guttatus

#### GBIF

xg_gbif <- occ(query = 'Xiphorhynchus guttatus', 
               from = 'gbif', 
               has_coords= TRUE, 
               limit = 25000
)

xg_gbif
xg_gbif$gbif

### Convert occdata classe object (i.e xg_gbif) into data.frame

guttatus_gbif_raw <- occ2df(xg_gbif, what = "data")

## Write table
write.table(guttatus_gbif_raw, "./data/X_guttatus/sp_records/RAW/gbif_raw/xg_gbif_raw.txt", dec = ".")

#### e-bird

xg_ebird <- occ(query = 'Xiphorhynchus guttatus', 
                from = 'ebird', 
                ebirdopts = list(loc='BR', key="t0nsff58p2ki"),
                has_coords= TRUE,
                limit = 10000)

xg_ebird
xg_ebird$ebird

### Convert occdata classe object (i.e st_ebird) into data.frame
guttatus_ebird_raw <- occ2df(xg_ebird, what = "data")

## Write table
write.table(guttatus_ebird_raw, "./data/X_guttatus/sp_records/RAW/e_bird_raw/xg_ebird_raw.txt", dec = ".")


#### Idigbio

xg_idigbio <- occ( query = 'Xiphorhynchus guttatus', 
                   from = 'idigbio', 
                   has_coords= TRUE, 
                   limit = 25000)

xg_idigbio
xg_idigbio$idigbio

### Convert occdata classe object (i.e st_idigbio) into data.frame

guttatus_idigbio_raw <- occ2df(xg_idigbio, what = "data")

## Write table

write.table(guttatus_idigbio_raw, "./data/X_guttatus/sp_records/RAW/idigbio_raw/xg_idigbio_raw.txt", dec = ".")

#### I naturalist 

xg_inat <- occ( query = 'Xiphorhynchus guttatus', 
                from = 'inat', 
                has_coords= TRUE, 
                limit = 25000)

xg_inat
xg_inat$inat

### Convert occdata classe object (i.e xg_inat) into data.frame
guttatus_inat_raw <- occ2df(xg_inat, what = "data")

## Write table

write.table(guttatus_inat_raw, "./data/X_guttatus/sp_records/RAW/inat_raw/xg_inat_raw.txt", dec = ".")


######## vertnet

xg_vertnet <- occ( query = 'Xiphorhynchus guttatus', 
                   from = 'vertnet', 
                   has_coords= TRUE, 
                   limit = 10000)

xg_vertnet
xg_vertnet$vertenet

####


