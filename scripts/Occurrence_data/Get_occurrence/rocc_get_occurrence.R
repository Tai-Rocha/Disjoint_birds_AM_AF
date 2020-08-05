#######################################
## Get occurence from speciesLink
## rocc package (Mortara, S)
## Author: Tainá Rocha
#######################################

## Library

library(rocc)

## Get occurrence for all species 

  rspeciesLink(
  dir = "./data/",
  filename = "all_speciesLink_raw",
  save = TRUE,
  basisOfRecord = c("PreservedSpecimen", "HumanObservation", "MachineObservation"),
  species = c ("Schiffornis turdina", "Xiphorhynchus guttatus", "Lipaugus vociferans"),
  collectionCode = NULL,
  country = NULL,
  stateProvince = NULL,
  county = NULL,
  Coordinates = "Yes",
  CoordinatesQuality = "Good",
  Scope = "animals",
  Synonyms = "species2000",
  Typus = FALSE,
  Images = NULL,
  RedList = FALSE,
  MaxRecords = NULL
)

