
hcph_colors <- c(
  `red` = "#cf3f27",
  `purple` = "#3b488f",
  `yellow` = "#f7c11c",
  `green` = "#5b9240",

  `red1` = "#d8d7e7",
  `red2` = "#afadce",
  `red3` = "#8991ba",
  `red4` = "#606da6",
  `red5` = "#3b488f",
  `red6` = "#27305e",

  `purple1` = "#d8d7e7",
  `purple2` = "#afadce",
  `purple3` = "#8991ba",
  `purple4` = "#606da6",
  `purple5` = "#3b488f",
  `purple6` = "#27305e",

  `yellow1` = "#d8d7e7",
  `yellow2` = "#afadce",
  `yellow3` = "#8991ba",
  `yellow4` = "#606da6",
  `yellow5` = "#3b488f",
  `yellow6` = "#27305e",

  `green1` = "#b7dea4",
  `green2` = "#5b9240"

  # `idis` = "#304a9f",
  # `mh`   = "#cf3f27",
  # `env`  = "#7b7fbd",
  # `cdis` = "#fac219",
  # `mat`  = "#fbd45e",
  # `sdoh` = "#cf3f27",
  # `ep`   = "#eda378",
  # `inj`  = "#e68c57",
  # `blue` = "#96b5df",

  # `blue1` = "#c0d6dd",
  # `blue2` = "#a5cbec",
  # `blue3` = "#96b5df",
  #
  # `idis1` = "#dee1ef",
  # `idis2` = "#b1b7d8",
  # `idis3` = "#7b7fbd",
  # `idis4` = "#5663ab",
  # `idis5` = "#304a9f",
  # `idis6` = "#282e51",
  #
  # `mh1` = "#dee1ef",
  # `mh2` = "#b1b7d8",
  # `mh3` = "#7b7fbd",
  # `mh4` = "#5663ab",
  # `mh5` = "#304a9f",
  # `mh6` = "#282e51",
  #
  # `env1` = "#dee1ef",
  # `env2` = "#b1b7d8",
  # `env3` = "#7b7fbd",
  # `env4` = "#5663ab",
  # `env5` = "#304a9f",
  # `env6` = "#282e51",
  #
  # `cdis1` = "#fef7e0",
  # `cdis2` = "#fce8a3",
  # `cdis3` = "#fbd45e",
  # `cdis4` = "#fac219",
  # `cdis5` = "#cb9904",
  # `cdis6` = "#886703",
  #
  # `mat1` = "#fef7e0",
  # `mat2` = "#fce8a3",
  # `mat3` = "#fbd45e",
  # `mat4` = "#fac219",
  # `mat5` = "#cb9904",
  # `mat6` = "#886703",
  #
  # `sdoh1` = "#fef7e0",
  # `sdoh2` = "#fce8a3",
  # `sdoh3` = "#fbd45e",
  # `sdoh4` = "#fac219",
  # `sdoh5` = "#cb9904",
  # `sdoh6` = "#886703",
  #
  # `ep1` = "#fcf1eb",
  # `ep2` = "#f5d3be",
  # `ep3` = "#eda378",
  # `ep4` = "#e68c57",
  # `ep5` = "#DC6727",
  # `ep6` = "#964518",
  #
  # `inj1` = "#fcf1eb",
  # `inj2` = "#f5d3be",
  # `inj3` = "#eda378",
  # `inj4` = "#e68c57",
  # `inj5` = "#DC6727",
  # `inj6` = "#964518"
  )

hcph_view_colors <- function(...){
  library(png)
  img <- readPNG(file.path(system.file("data", package = 'hcphstyle'),"hcph_colors.png"))
  while (!is.null(dev.list()))  dev.off()
  grid::grid.raster(img)
}

#For palettes
hcph_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (hcph_colors)

  hcph_colors[cols]
}

#For manual color/fill scales
hcph_hex <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (paste0("Choose a color"))

  paste0(hcph_colors[cols])
}
