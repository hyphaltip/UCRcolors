<!-- README.md is generated from README.Rmd. Please edit that file -->

# UCR Brand Color Palettes

[![Build
Status](https://travis-ci.org/stajichlab/UCcolors.png)](https://travis-ci.org/stajichlab/UCcolors)  
![CRAN Downloads](http://cranlogs.r-pkg.org/badges/UCcolors)

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

### UCR main

``` r
uc_palette("Riverside1")
#> [1] "#003DA5" "#FFB81C"
#> attr(,"class")
#> [1] "palette"
#> attr(,"name")
#> [1] "Riverside1"
```
