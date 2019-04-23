#####
# COLORS
#####

    #Using contious varaible for color-coding
        rbPal <- colorRampPalette(c('blue','yellow','red'),alpha=.8)
        cl <- rbPal(10)[as.numeric(cut(iris$Petal.Width,breaks = 10))]
        plot(iris$Petal.Length,iris$Petal.Width,col=cl)


#####
# MAPS
#####
df<- gs_read(gs_title("absolute rough"),ws="locationList")
    leaflet(df) %>% addTiles() %>% addMarkers(popup = df$Name)%>%  
      addCircles(radius = 3000,color = df$Name)
