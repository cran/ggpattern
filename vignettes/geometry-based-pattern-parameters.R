## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  dev = "ragg_png",
  fig.width = 7,
  fig.height = 3
)

library(ggplot2)
library(ggpattern)

## ----setup--------------------------------------------------------------------
library(ggplot2)
library(ggpattern)

## ----echo=FALSE---------------------------------------------------------------
density  <- c(0.01, 0.04, 0.1, 0.2, 0.4, 0.7)
rotation <- head(seq(0, 90, length.out = 7), -1)
spacing  <- c(0.01, 0.02, 0.04, 0.08, 0.16, 0.32)

plot_df <- expand.grid(
  pattern = c('stripe', 'crosshatch', 'circle'),
  density = density,
  stringsAsFactors = FALSE
)

N <- length(density)

plot_df$col <- rep(1:N, each  = 3)
plot_df$row <- rep(1:3, times = N)


label_df <- data.frame(
  density = density,
  row     = 3.6,
  col     = seq_along(density)
)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Density
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
p <- ggplot(plot_df, aes(x = col, y = row)) + 
  geom_tile_pattern(
    aes(
      pattern         = I(pattern), 
      pattern_density = I(density)
    ), 
    fill   = 'white', 
    colour = 'black', 
    width  = 0.9, 
    height = 0.9
  ) + 
  geom_text(data = label_df, aes(label = density), size = 6) +
  theme_void(15) + 
  labs(title = "pattern_density") + 
  coord_fixed(0.7)

p

## ----echo=FALSE---------------------------------------------------------------
density  <- c(0.01, 0.04, 0.1, 0.2, 0.4, 0.7)
rotation <- head(seq(0, 90, length.out = 7), -1)
spacing  <- rev(c(0.01, 0.02, 0.03, 0.04, 0.08, 0.16))

plot_df <- expand.grid(
  pattern = c('stripe', 'crosshatch', 'circle'),
  spacing = spacing,
  stringsAsFactors = FALSE
)

N <- length(spacing)

plot_df$col <- rep(1:N, each  = 3)
plot_df$row <- rep(1:3, times = N)


label_df <- data.frame(
  spacing = spacing,
  row     = 3.6,
  col     = seq_along(spacing)
)

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Spacing
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
p <- ggplot(plot_df, aes(x = col, y = row)) + 
  geom_tile_pattern(
    aes(
      pattern = I(pattern), 
      pattern_spacing = I(spacing)
    ), 
    fill = 'white', colour = 'black', width = 0.9, height = 0.9) + 
  theme_void(15) + 
  geom_text(data = label_df, aes(label = spacing), size = 6) +
  labs(title = "pattern_spacing") + 
  coord_fixed(0.7)

p

## ----echo=FALSE---------------------------------------------------------------
density  <- c(0.01, 0.04, 0.1, 0.2, 0.4, 0.7)
angle    <- head(seq(0, 90, length.out = 7), -1)
spacing  <- c(0.01, 0.02, 0.04, 0.08, 0.16, 0.32)

plot_df <- expand.grid(
  pattern = c('stripe', 'crosshatch', 'circle'),
  angle = angle,
  stringsAsFactors = FALSE
)

N <- length(angle)

plot_df$col <- rep(1:N, each  = 3)
plot_df$row <- rep(1:3, times = N)


label_df <- data.frame(
  angle = angle,
  row     = 3.6,
  col     = seq_along(angle)
)


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Rotation
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
p <- ggplot(plot_df, aes(x = col, y = row)) + 
  geom_tile_pattern(
    aes(
      pattern = I(pattern), 
      pattern_angle = I(angle)
    ), 
    fill   = 'white', 
    colour = 'black', 
    width  = 0.9, 
    height = 0.9, 
    pattern_density = 0.5, 
    pattern_spacing = 0.02) + 
  theme_void(15) + 
  labs(title = "pattern_angle") +
  geom_text(data = label_df, aes(label = angle), size = 6) +
  coord_fixed(0.7)

p

