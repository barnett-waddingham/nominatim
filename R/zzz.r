# URL base for various Nominatim operations
# search_base <- "http://open.mapquestapi.com/nominatim/v1/search.php"
#lookup_base <- "http://nominatim.openstreetmap.org/lookup"
#reverse_base <- "http://open.mapquestapi.com/nominatim/v1/reverse.php"

#Set BW defaults
protocol <- 'http'
server <- 'localhost'
port <- '8080'

# BW Nominatim Server
search_base <- paste(protocol, '://', server, ':', port, '/search', sep = '')
lookup_base <- paste(protocol, '://', server, ':', port, '/lookup', sep = '')
reverse_base <- paste(protocol, '://', server, ':', port, '/reverse', sep = '')

.onAttach <- function(libname, pkgname) {
  options(NOMINATIM.TIMEOUT = 5)
  options(NOMINATIM.DELAY = 0.0)
  options(NOMINATIM.search_base = search_base)
  options(NOMINATIM.lookup_base = lookup_base)
  options(NOMINATIM.reverse_base = reverse_base)
}
