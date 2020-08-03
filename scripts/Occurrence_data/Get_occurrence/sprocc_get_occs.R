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
               limit = 7000)

lv_gbif
lv_gbif$gbif


#### e-bird

lv_ebird <- occ(query = 'Lipaugus vociferans', 
                from = 'ebird', 
                ebirdopts = lilv(loc='BR', key="t0nsff58p2ki"),
                has_coords= TRUE,
                limit = 7000)

lv_ebird
lv_ebird$ebird

#### Idigbio

lv_idigbio <- occ( query = 'Lipaugus vociferans', 
                   from = 'idigbio', 
                   has_coords= TRUE, 
                   limit = 7000)

lv_idigbio
lv_idigbio$idigbio

#### I naturalilv 

lv_inat <- occ( query = 'Lipaugus vociferans', 
                from = 'inat', 
                has_coords= TRUE, 
                limit = 7000)

lv_inat
lv_inat$inat


######## vertnet

lv_vertnet <- occ( query = 'Lipaugus vociferans', 
                   from = 'vertnet', 
                   has_coords= TRUE, 
                   limit = 7000)

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

### Convert occdata classe object (i.e st_gbif) into data.frame

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

#### I naturalist 

st_inat <- occ( query = 'Schiffornis turdina', 
                   from = 'inat', 
                   has_coords= TRUE, 
                   limit = 7000)

st_inat
st_inat$inat


######## vertnet

st_vertnet <- occ( query = 'Schiffornis turdina', 
                from = 'vertnet', 
                has_coords= TRUE, 
                limit = 7000)

st_vertnet
st_vertnet$vertenet

