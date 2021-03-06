% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/acorr.R
\name{acorr}
\alias{acorr}
\title{Calculates the full spatial autocorrelation on a raster using fft.}
\usage{
acorr(x, padlongitude = T, verbose = T, ...)
}
\arguments{
\item{x}{A raster* object. Missing values are indicated by NA.}

\item{file}{File to write results to as in writeRaster.  If NULL a temporary file is written as in the raster package.}
}
\value{
The spatial autocorrelation matrix
}
\description{
Applies the Wiener-Khinchin theorem to extract spatial autocorrelation using Fast Fourier Transform techniques.  This results in an extremely fast way to calculate a complete correlogram (correlation as a function of distance) for a raster image.
}
\examples{
# packages used for the data generation
require(raster)
require(fields)
library(dplyr)

## first show the examples in Marcotte, Denis. 1996. "Fast Variogram Computation with FFT." Computers & Geosciences 22 (10): 1175–86. doi:10.1016/S0098-3004(96)00026-X.
m1=raster(matrix(c(3,6,5,7,2,2,4,NA,0),ncol=3,byrow=T))
m2=raster(matrix(c(10,NA,5,NA,8,7,5,9,11),ncol=3,byrow=T))

ac=acorr(m1,padlongitude=T,verbose=T)

## confirm nobs == nh11 on top of page 1179
10^as.matrix(ac[["nobs"]])

## comfirm acor= gh11 on top of page 1179
round(as.matrix(ac[["acor"]])/10,3)

}
\references{
\url{en.wikipedia.org/wiki/WienerKhinchin_theorem}

Xianlin Ma, Tingting Yao, A program for 2D modeling (cross) correlogram tables using fast Fourier transform, Computers & Geosciences, Volume 27, Issue 7, August 2001, Pages 763-774, ISSN 0098-3004, \url{http://dx.doi.org/10.1016/S0098-3004(01)00007-3}.

\url{http://www.johnloomis.org/ece563/notes/freq/autoself/autoself.htm}

\url{http://www.seas.upenn.edu/~ese502/NOTEBOOK/Part_II/4_Variograms.pdf}
}

