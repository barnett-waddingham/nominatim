library(leaflet)
library(nominatim)

res <- osm_search("Barnett Waddingham", limit = 7)

leaflet() %>% addTiles() %>% addMarkers(lng = res$lon, lat = res$lat, popup = res$display_name)
