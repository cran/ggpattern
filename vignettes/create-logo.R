## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 6,
  fig.height = 6
)

## ----setup--------------------------------------------------------------------
suppressPackageStartupMessages({
  library(ggplot2)
  library(ggpattern)
})

## ----logo---------------------------------------------------------------------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Data frame for a polygon
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
angle <- seq(0, 2*pi, length.out = 7) + pi/6
polygon_df <- data.frame(
  angle = angle,
  x     = cos(angle),
  y     = sin(angle)
)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Create a plot of a patterned polygon
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
p <- ggplot(polygon_df) +
  geom_polygon_pattern(
    aes(x = x, y = y), 
    fill            = 'white', 
    colour          = 'black', 
    pattern_spacing = 0.15, 
    pattern_density = 0.4, 
    pattern_fill    = 'lightblue',
    pattern_colour  = '#002366', 
    pattern_angle   = 45
  ) + 
  labs(title = "ggpattern") + 
  coord_equal() + 
  theme_bw(25) + 
  theme(axis.title = element_blank())

p

## ----echo = FALSE, eval = FALSE-----------------------------------------------
#  filename <- here::here("man", "figures", "logo.png")
#  png(filename)
#  print(p)
#  invisible(dev.off())

