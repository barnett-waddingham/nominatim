# URL base for various Nominatim operations
# search_base <- "http://open.mapquestapi.com/nominatim/v1/search.php"
#lookup_base <- "http://nominatim.openstreetmap.org/lookup"
#reverse_base <- "http://open.mapquestapi.com/nominatim/v1/reverse.php"

protocol <- 'http'

server <- 'az-bwlinux-01'

port <- '8080'

# BW Nominatim Server
search_base <- paste(protocol, '://', server, ':', port, '/search', sep = '')
lookup_base <- paste(protocol, '://:', server, ':', port, '/lookup', sep = '')
reverse_base <- paste(protocol, '://', server, ':', port, '/reverse', sep = '')

.onAttach <- function(libname, pkgname) {
  #packageStartupMessage("Data (c) OpenStreetMap contributors, ODbL 1.0. http://www.openstreetmap.org/copyright")
  #packageStartupMessage("Nominatim Usage Policy: http://wiki.openstreetmap.org/wiki/Nominatim_usage_policy")
  #packageStartupMessage("MapQuest Nominatim Terms of Use: http://info.mapquest.com/terms-of-use/")
  options(NOMINATIM.TIMEOUT = 5)
  options(NOMINATIM.DELAY = 0.0)
  options(NOMINATIM.search_base = search_base)
}
