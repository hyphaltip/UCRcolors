#' Complete list of palettes
#'
#' Use \code{\link{wes_palette}} to construct palettes of desired length.
#'
#' @export
UC_palettes <- list(
    Berkeley1 = c("#003262", "#3B7EA1", "#FDB515", "#C4820E"),
    Berkeley2 = c("#D9661F", "#EE1F60", "#ED4E33", "#6C3302", "#DDD5C7", "#00B0DA", "#00A598", "#46535E", "#B9D3B6", "#CFDD45", "#859438", "#584F29"),
    Davis1    = c("#022851", "#FFBF00"),
    Davis2    = c("#6FCFEB", "#00B2E3", "#0047BA", "#003A5D", "#03F9E6", "#00C4B3", "#008EAA", "#00524C", "#AADA91", "#6CCA98", "#3DAE2B", "#266041",
                  "#FFFF3B", "#FFDC00", "#F18A00", "#8A532F", "#FF8189", "#F93549", "#C10230", "#79242F", "#F095CD", "#C6007E", "#76236C", "#481268"),
    Irvine1   = c("#0064A4", "#FFD200"),
    Irvine2   = c("#6aa2b8", "#c6beb5", "#1b3d6d", "#f78d2d", "#f7eb5f", "#555759", "#7ab800"),
    IrvineHealth = c("#b71234", "#7c109a", "#00b0ca", "#7ab800", "#fecb00"),
    UCLA1 = c("#2774AE", "#FFD100"),
    UCLA2 = c("#FFFF00", "#00FF87", "#FF00A5", "#00FFFF", "#8237FF", "#000000"),
    Merced1 = c("#002856", "#DAA900"),
    Merced2 = c("#0091b3", "#ffbf3c", "#005487", "#5b5b5b", "#E5E5E5", "#EFEFEF"),
    Merced3 = c("#6ba43a", "#f18a00", "#99d9d9"),
    Riverside1 = c("#003DA5", "#FFB81C"),
    Riverside2 = c("#C1C6C8", "#919D9D", "#009CDE","#FED141", "#A9C47F", "#78BE20","#FF671F","#E4002B"),
    UCSB1  = c("#003660","#FEBC11", "#111517", "#DCE1E5", "#09847A"),
    UCSB2  = c("#047C91","#6D7D33", "#EF5645", "#DCD6CC", "#C9BF9D", "#9CBEBE"),
    UCSC1  = c("#003c6c", "#fdc700"),
    UCSC2  = c("#006aad", "#13a5dc","#007988", "#f29813", "#ffbf00", "#93c02d", "#da216d"),
    UCSD1 = c("#182B49", "#00629B", "#C69214", "#FFCD00"),
    UCSD2 = c("#00C6D7", "#6E963B", "#F3E500", "#FC8900"),
    UCOP1  = c("#1295D8", "#FFB511"),
    UCOP2  = c("#005581","#72CDF4","#FFD200", "#FFE552"),
    UCOP3  = c("#FF6E1B","#FF8F28","#E44C9A", "#FEB2E0", "#00778B", "#00A3AD","#7C7E7F","#8F8884","#BEB6AF","#DBD5CD")
)

#' A University of California palette generator
#'
#' These are color palettes based on Univ of California defined brand colors. 
#' The XX1 palettes are the primary colors while XX2 palettes are secondary or alternative colors used in accents.
#' This is probably not really a true palette source for all graphics but simplifies access to these color schemes.
#'
#' @param n Number of colors desired. Primary palettes now only
#'   have 2 colors as they are usually the blue and gold variants defined. 
#' @param name Name of desired palette. Choices are:
#'   \code{Berkeley1}, \code{Berkeley2},  
#'   \code{Davis1}, \code{Davis2}, 
#'   \code{Irvine1},  \code{Irvine2}, \code{IrvineHealth}, 
#'   \code{UCLA1}, \code{UCLA2},  
#'   \code{Merced1} , \code{Merced2}, \code{Merced3}, 
#'   \code{Riverside1}, \code{Riverside2}, 
#'   \code{UCSB1}, \code{UCSB2}, 
#'   \code{UCSC1}, \code{UCSC2}, 
#'   \code{UCSD1}, \code{UCSC1}, 
#'   \code{UCOP1}, \code{UCOP2}, \code{UCOP3},
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' uc_palette("UCOP1")
#' uc_palette("UCLA2", 3)

uc_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)
  
  pal <- UC_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")
  
  if (missing(n)) {
    n <- length(pal)
  }
  
  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }
  
  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb

print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))
  
  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
  
  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif", col = "#32373D")
}
