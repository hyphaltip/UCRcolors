<!-- README.md is generated from README.Rmd. Please edit that file -->

# UC Brand Color Palettes

<!-- badges: start -->

[![Build
Status](https://travis-ci.org/stajichlab/UCcolors.png)](https://travis-ci.org/stajichlab/UCcolors)  
![CRAN Downloads](http://cranlogs.r-pkg.org/badges/UCcolors)
[![R-CMD-check](https://github.com/stajichlab/UCcolors/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/stajichlab/UCcolors/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Want to make plots in color schemes of various University of California
campus brand colors?

## Installation

``` r
install.packages("UCcolors")
```

**Or the development version**

``` r
devtools::install_github("stajichlab/UCcolors")
```

## Usage

``` r
library("UCcolors")

# See all palettes
names(UC_palettes)
#>  [1] "Berkeley1"    "Berkeley2"    "Davis1"       "Davis2"       "Irvine1"     
#>  [6] "Irvine2"      "IrvineHealth" "UCLA1"        "UCLA2"        "Merced1"     
#> [11] "Merced2"      "Merced3"      "Riverside1"   "Riverside2"   "UCSB1"       
#> [16] "UCSB2"        "UCSC1"        "UCSC2"        "UCSD1"        "UCSD2"       
#> [21] "UCOP1"        "UCOP2"        "UCOP3"
```

## Palettes

``` r
uc_palette("Riverside1")
#> [1] "#003DA5" "#FFB81C"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Riverside1"
uc_palette("UCLA1")
#> [1] "#2774AE" "#FFD100"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCLA1"
```

### secondary color set

``` r
uc_palette("Riverside2")
#> [1] "#C1C6C8" "#919D9D" "#009CDE" "#FED141" "#A9C47F" "#78BE20" "#FF671F"
#> [8] "#E4002B"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Riverside2"
uc_palette("UCLA2")
#> [1] "##FFFF00" "#00FF87"  "#FF00A5"  "#00FFFF"  "#8237FF"  "#000000" 
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCLA2"
```

### test all

``` r
lapply(names(UC_palettes),uc_palette)
#> [[1]]
#> [1] "#003262" "#3B7EA1" "#FDB515" "#C4820E"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Berkeley1"
#> 
#> [[2]]
#>  [1] "#D9661F" "#EE1F60" "#ED4E33" "#6C3302" "#DDD5C7" "#00B0DA" "#00A598"
#>  [8] "#46535E" "#B9D3B6" "#CFDD45" "#859438" "#584F29"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Berkeley2"
#> 
#> [[3]]
#> [1] "#022851" "FFBF00" 
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Davis1"
#> 
#> [[4]]
#>  [1] "#6FCFEB"  "#00B2E3"  "#0047BA"  "#003A5D"  "#03F9E6"  "#00C4B3" 
#>  [7] "#008EAA"  "#00524C"  "#AADA91"  "#6CCA98"  "#3DAE2B"  "#266041" 
#> [13] "#FFFF3B"  "#FFDC00"  " #F18A00" "#8A532F"  "#FF8189"  "#F93549" 
#> [19] "#C10230"  "#79242F"  "#F095CD"  "#C6007E"  "#76236C"  "#481268" 
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Davis2"
#> 
#> [[5]]
#> [1] "#0064A4" "#FFD200"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Irvine1"
#> 
#> [[6]]
#> [1] "#6aa2b8" "#c6beb5" "#1b3d6d" "#f78d2d" "#f7eb5f" "#555759" "#7ab800"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Irvine2"
#> 
#> [[7]]
#> [1] "#b71234" "#7c109a" "#00b0ca" "#7ab800" "#fecb00"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "IrvineHealth"
#> 
#> [[8]]
#> [1] "#2774AE" "#FFD100"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCLA1"
#> 
#> [[9]]
#> [1] "##FFFF00" "#00FF87"  "#FF00A5"  "#00FFFF"  "#8237FF"  "#000000" 
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCLA2"
#> 
#> [[10]]
#> [1] "#002856" "#DAA900"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Merced1"
#> 
#> [[11]]
#> [1] "#0091b3" "#ffbf3c" "#005487" "#5b5b5b" "#E5E5E5" "#EFEFEF"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Merced2"
#> 
#> [[12]]
#> [1] "#6ba43a" "#f18a00" "#99d9d9"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Merced3"
#> 
#> [[13]]
#> [1] "#003DA5" "#FFB81C"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Riverside1"
#> 
#> [[14]]
#> [1] "#C1C6C8" "#919D9D" "#009CDE" "#FED141" "#A9C47F" "#78BE20" "#FF671F"
#> [8] "#E4002B"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Riverside2"
#> 
#> [[15]]
#> [1] "#003660"  "#FEBC11"  "##111517" "#DCE1E5"  "#09847A" 
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCSB1"
#> 
#> [[16]]
#> [1] "#047C91" "#6D7D33" "#EF5645" "#DCD6CC" "#C9BF9D" "#9CBEBE"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCSB2"
#> 
#> [[17]]
#> [1] "#003c6c" "#fdc700"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCSC1"
#> 
#> [[18]]
#> [1] "#006aad" "#13a5dc" "#007988" "#f29813" "#ffbf00" "#93c02d" "#da216d"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCSC2"
#> 
#> [[19]]
#> [1] "#182B49" "#00629B" "#C69214" "#FFCD00"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCSD1"
#> 
#> [[20]]
#> [1] "#00C6D7" "#6E963B" "#F3E500" "#FC8900"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCSD2"
#> 
#> [[21]]
#> [1] "#1295D8" "#FFB511"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCOP1"
#> 
#> [[22]]
#> [1] "#005581" "#72CDF4" "#FFD200" "#FFE552"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCOP2"
#> 
#> [[23]]
#>  [1] "#FF6E1B" "#FF8F28" "#E44C9A" "#FEB2E0" "#00778B" "#00A3AD" "#7C7E7F"
#>  [8] "#8F8884" "#BEB6AF" "#DBDSCD"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "UCOP3"
```

### continuous colors

``` r
#pal = uc_palette("UCLA2",21,type="continuous")
#image(volcano,col=pal)
```

## Sources for colors

# Berkeley: <https://brand.berkeley.edu/colors/>

# Davis: <https://marketingtoolbox.ucdavis.edu/brand-guide/colors>

# Irvine: <https://brand.uci.edu/master-branding/color-palette/>

# Los Angeles: <https://brand.ucla.edu/identity/colors>

# Merced: <https://brand.ucmerced.edu/logos-elements/colors>

# Riverside: <https://brand.ucr.edu/ucr-colors>

# Santa Barbara: <https://brand.ucsb.edu/visual-identity/color>

# Santa Cruz: <https://communications.ucsc.edu/visual-design/color/>

# San Diego: <https://brand.ucsd.edu/logos-and-brand-elements/color-palette/index.html>

# Office of President: <https://brand.universityofcalifornia.edu/guidelines/color.html>
