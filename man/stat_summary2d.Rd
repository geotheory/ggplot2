\name{stat_summary2d}
\alias{stat_summary2d}
\title{Apply funciton for 2D rectangular bins.}
\usage{
stat_summary2d(mapping = NULL, data = NULL, geom = NULL,
  position = "identity", bins = 30, drop = TRUE, fun = mean, ...)
}
\arguments{
  \item{bins}{see \code{\link{stat_bin2d}}}

  \item{drop}{drop if the output of \code{fun} is
  \code{NA}.}

  \item{fun}{function for summary.}

  \item{...}{parameters passed to \code{fun}}

  \item{mapping}{The aesthetic mapping, usually constructed
  with \code{\link{aes}} or \code{\link{aes_string}}. Only
  needs to be set at the layer level if you are overriding
  the plot defaults.}

  \item{data}{A layer specific dataset - only needed if you
  want to override the plot defaults.}

  \item{geom}{The geometric object to use display the data}

  \item{position}{The position adjustment to use for
  overlappling points on this layer}
}
\description{
Apply function for 2D rectangular bins.
}
\section{Aesthetics}{
  \Sexpr[results=rd,stage=build]{ggplot2:::rd_aesthetics("stat",
  "summary2d")}

  \code{stat_summary2d} is 2D version of
  \code{\link{stat_summary}}. The data are devided by
  \code{x} and \code{y}. \code{z} in each cell is passed to
  arbitral summary function.

  \code{stat_summary2d} requires the following aesthetics:

  \itemize{ \item \code{x}: horizontal position \item
  \code{y}: vertical position \item \code{z}: value passed
  to the summary function }
}
\examples{
\donttest{
d <- ggplot(diamonds, aes(carat, depth, z = price))
d + stat_summary2d()

# Specifying function
d + stat_summary2d(fun = function(x) sum(x^2))
d + stat_summary2d(fun = var)
}
}
\seealso{
\code{\link{stat_summary_hex}} for hexagonal summarization.
\code{\link{stat_bin2d}} for the binning options.
}

