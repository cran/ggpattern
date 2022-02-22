## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  dev = "ragg_png",
  fig.width = 8,
  fig.height = 6
)

## ----setup--------------------------------------------------------------------
suppressPackageStartupMessages({
  library(ggplot2)
  library(ggpattern)
})

## -----------------------------------------------------------------------------
df <- data.frame(
  trt     = c("a", "b", "c"), 
  outcome = c(2.3, 1.9, 3.2)
)

## -----------------------------------------------------------------------------
if (require("magick")) {

ggplot(df, aes(trt, outcome)) +
  geom_col_pattern(
    aes(
      fill         = trt,
      pattern_fill = trt
    ),
    fill          = NA,
    pattern       = 'plasma',
    pattern_alpha = 1,
    pattern_scale = 2,
    colour        = 'black'
  ) +
  theme_bw(15) +
  labs(
    title    = "ggpattern::geom_col_pattern()",
    subtitle = "pattern='plasma'"
  ) +
  theme(legend.key.size = unit(1.5, 'cm'))

}

## -----------------------------------------------------------------------------
if (require("magick")) {

ggplot(mtcars) +
  geom_density_pattern(
    aes(
      x             = mpg,
      pattern_fill  = as.factor(cyl)
    ),
    pattern      = 'plasma',
    pattern_alpha = 0.7
  ) +
  theme_bw(15) +
  theme(legend.position = 'none') +
  labs(
    title    = "ggpattern::geom_density_pattern()",
    subtitle = "pattern='plasma'"
  )

}

## -----------------------------------------------------------------------------
if (require("magick")) {

ggplot(df, aes(trt, outcome)) +
  geom_col_pattern(
    aes(
      pattern_fill        = trt,
      pattern_orientation = trt
    ), 
    pattern       = 'gradient', 
    pattern_fill2 = 'white', 
    colour        = 'black'
  ) +
  theme_bw(15) +
  labs(
    title    = "ggpattern::geom_col_pattern()",
    subtitle = "pattern = 'gradient'"
  ) +
  theme(
    legend.key.size = unit(1.5, 'cm')
  )

}

## -----------------------------------------------------------------------------
if (require("magick")) {

ggplot(df, aes(trt, outcome)) +
  geom_col_pattern(
    aes(
      pattern_fill        = trt,
      pattern_orientation = trt
    ), 
    pattern       = 'gradient', 
    pattern_fill2 = '#445566', 
    colour        = 'black'
  ) +
  theme_bw(15) +
  labs(
    title    = "ggpattern::geom_col_pattern()",
    subtitle = "pattern = 'gradient'"
  ) +
  theme(
    legend.key.size = unit(1.5, 'cm')
  )

}

## -----------------------------------------------------------------------------
if (require("magick")) {

ggplot(df, aes(trt, outcome)) +
  geom_col_pattern(
    aes(
      pattern_fill        = trt,
      pattern_orientation = trt
    ), 
    pattern       = 'gradient', 
    pattern_fill2 = NA, 
    fill          = NA,
    colour        = 'black'
  ) +
  theme_bw(15) +
  labs(
    title    = "ggpattern::geom_col_pattern()",
    subtitle = "pattern = 'gradient'"
  ) +
  theme(legend.key.size = unit(1.5, 'cm'))

}

## -----------------------------------------------------------------------------
if (require("magick")) {

ggplot(mtcars) +
  geom_density_pattern(
    aes(
      x = mpg, 
      pattern_fill = as.factor(cyl),
      pattern_orientation = as.factor(cyl)
    ), 
    pattern       = 'gradient',
    pattern_fill2 = NA, 
    fill          = NA
  ) +
  theme_bw(15) +
  labs(
    title    = "ggpattern::geom_density_pattern()",
    subtitle = "pattern = 'gradient'"
  ) +
  theme(legend.key.size = unit(1.5, 'cm'))

}

## -----------------------------------------------------------------------------
if (require("ambient")) {
ggplot(df, aes(trt, outcome)) +
  geom_col_pattern(
    aes(pattern_fill = trt),
    pattern       = 'ambient', 
    pattern_fill2 = 'white',
    colour        = NA, 
    fill          = NA
  ) +
  theme_bw(15) +
  labs(
    title    = "ggpattern::geom_density_pattern()",
    subtitle = "pattern = 'ambient'"
  ) +
  theme(legend.position = 'none')
}

## -----------------------------------------------------------------------------
if (require("ambient")) {
ggplot(mtcars) +
  geom_density_pattern(
    aes(
      x = mpg, 
      pattern_fill  = as.factor(cyl), 
      pattern_fill2 = as.factor(cyl)
    ), 
    pattern = 'ambient'
  ) +
  theme_bw(15) +
  theme(legend.key.size = unit(2, 'cm')) + 
  scale_pattern_fill_brewer (palette = 'Accent', direction =  1) + 
  scale_pattern_fill2_brewer(palette = 'Dark2' , direction =  1) + 
  labs(
    title    = "ggpattern::geom_density_pattern()",
    subtitle = "pattern = 'ambient'"
  ) 
}

