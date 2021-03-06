% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conv.R
\docType{methods}
\name{conv2D}
\alias{conv2D}
\title{2D onvolution}
\usage{
\S4method{conv2D}{GPR}(x, w, track = TRUE)
}
\arguments{
\item{x}{A GPR data}

\item{w}{A numeric matrix with smaller dimension than the GPR data.}
}
\value{
The convolved GPR data.
}
\description{
Convolution of the GPR data with a kernel
}
