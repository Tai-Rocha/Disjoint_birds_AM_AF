##################################
## Get occurence data 
## Packages: spocc 
## Author: Tainá Rocha
## Just for test
##################################

#### Library

library(spocc)




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