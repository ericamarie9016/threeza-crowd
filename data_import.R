library(metajam)

BQ1 <- "https://dex.edirepository.org/https%3A%2F%2Fpasta.lternet.edu%2Fpackage%2Fdata%2Feml%2Fknb-lter-luq%2F20%2F4923058%2F96e0ef7b3f2bc92485a559645d545845"
BQ2 <- "https://dex.edirepository.org/https%3A%2F%2Fpasta.lternet.edu%2Fpackage%2Fdata%2Feml%2Fknb-lter-luq%2F20%2F4923058%2F8d1e2d357a2dc2d56b9eedea56a46236"
BQ3 <- "https://dex.edirepository.org/https%3A%2F%2Fpasta.lternet.edu%2Fpackage%2Fdata%2Feml%2Fknb-lter-luq%2F20%2F4923058%2F665f37efee3109a7c3aff95e079e2de2"
PRM <- "https://dex.edirepository.org/https%3A%2F%2Fpasta.lternet.edu%2Fpackage%2Fdata%2Feml%2Fknb-lter-luq%2F20%2F4923058%2Facb18d969cf36e7efda2604a1449e816"
path <- "/courses/EDS214/threeza-crowd"

download_d1_data(BQ1, path)
download_d1_data(BQ2, path)
download_d1_data(BQ3, path)
download_d1_data(PRM, path)

## List of folders
# /courses/EDS214/threeza-crowd
  # metajam.log                    
  # __QuebradaCuenca3-Bisley__csv
  # __QuebradaCuenca1-Bisley__csv  
  # __RioMameyesPuenteRoto__csv
  # __QuebradaCuenca2-Bisley__csv