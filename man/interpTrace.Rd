% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ClassGPR.R
\docType{methods}
\name{interpTrace}
\alias{interpTrace}
\title{Interpolate (vertically) trace at regular interval or given position}
\usage{
\S4method{interpTrace}{GPR}(x, z, method = c("pchip", "linear",
  "nearest", "spline", "cubic"), crop = TRUE, track = TRUE)
}
\arguments{
\item{x}{[\code{GPR class}] An object of the class \code{GPR}}

\item{z}{[\code{numeric}] Either an interval (e.g., time interval)
to interpolate the traces at regular interval or a vector
of \eqn{m} elements (\eqn{m} is equal to the number of traces)
Amount of time (or depth, depending on the
trace unit) to shift the traces. 
\code{ts} is eiter a single value (all the traces are shifted by 
the same amount \code{ts}) or a vector with \eqn{m} elements 
(\eqn{m} is equal to the number of traces).}

\item{method}{[\code{character(1)}] Interpolation method to be applied
(one of \code{pchip} \code{linear}, \code{nearest}, 
\code{spline}, \code{cubic}, \code{none}, 
see also \code{\link[signal]{interp1}}). 
 \code{"none"} means that the trace is shifted by the
amount of trace samples the closest to \code{ts} without
interpolation.}

\item{crop}{[\code{logical(1)}] 
If \code{TRUE} (default), remove the rows containing only 
zero's (no data).}
}
\value{
[\code{GPR class}] An object of the class GPR.
}
\description{
Interpolate every trace at regular interval or at given positions
}
\details{
Modified slots
\itemize{
  \item \code{data}: trace interpolated The number of rows of data may 
        be smaller if \code{crop = TRUE}.
  \item \code{dz}: new value depending on argument \code{z}.
  \item \code{depth}: adapted to code{z}.
  \item \code{proc}: updated with function name and arguments.
}
}
