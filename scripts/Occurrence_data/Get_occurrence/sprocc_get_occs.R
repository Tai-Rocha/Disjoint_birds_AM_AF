##################################
## Get occurence data 
## Packages: spocc and rocc 
## Date:
## Author: Tainá Rocha
##################################

#### Library

library(spocc)

### Schiffornis turdina

st_ebird <- occ('Schiffornis turdina', from = 'ebird', ebirdopts = list(loc='BR', key="t0nsff58p2ki"))
st_ebird$ebird

st_idigbio <- occ(query = 'Schiffornis turdina', from = 'idigbio')
st_idigbio

df_ebird <- occ("Schiffornis turdina", from = "ebird", ebirdopts = list(key = "t0nsff58p2ki"))


# Pass in many species names, combine just data to a single data.frame, and
# first six rows
spnames <- c('Lipaugus vociferans')
out <- occ(query = spnames, from=c('gbif','bison', 'ecoengine', 'idigbio', 'ebird', 'ala', 'inat', 'obis'),  gbifopts = list(hasCoordinate = TRUE), limit=3000, key = 't0nsff58p2ki')
df <- occ2df(out)
head(df)


### Select individual elements
out$gbif
out$gbif$data
out$vertnet