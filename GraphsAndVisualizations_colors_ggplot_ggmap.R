#####
# COLORS
#####

    #Using contious varaible for color-coding
        rbPal <- colorRampPalette(c('blue','yellow','red'),alpha=.8)
        cl <- rbPal(10)[as.numeric(cut(iris$Petal.Width,breaks = 10))]
        plot(iris$Petal.Length,iris$Petal.Width,col=cl)
