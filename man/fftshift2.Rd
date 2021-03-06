% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fftshift2.R
\name{fftshift2}
\alias{fftshift2}
\title{Rearranges FFT output to put zero-distance in center of image}
\usage{
fftshift2(x)
}
\arguments{
\item{x}{A matrix returned from \code{fft()}}
}
\value{
The transformed matrix
}
\description{
Rearranges outputs from fft to move the zero-frequency component to the center of the matrix.  This is useful to visualize a Fourier transform with the zero-frequency component in the center of the image.
}
\references{
Adapted from GNU Octave's fftshift function (\url{http://octave.sourceforge.net/octave/function/fftshift.html} \url{http://hg.savannah.gnu.org/hgweb/octave/file/914c0b103a3d/scripts/signal/fftshift.m#l76})

\url{http://www.mathworks.com/help/matlab/ref/fftshift.html}

\url{http://stackoverflow.com/questions/5735720/effcient-way-to-do-fft-shift-in-matlab-without-using-fftshift-function}

The waved package (\url{http://cran.r-project.org/web/packages/waved/index.html}) has a 1-dimensional fftshift function.
}

