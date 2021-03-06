\name{scale_colour_gradientn}
\alias{scale_color_gradientn}
\alias{scale_colour_gradientn}
\alias{scale_fill_gradientn}
\title{Smooth colour gradient between n colours}
\usage{
scale_colour_gradientn(..., colours, values = NULL, space = "Lab",
  na.value = "grey50", guide = "colourbar")

scale_fill_gradientn(..., colours, values = NULL, space = "Lab",
  na.value = "grey50", guide = "colourbar")

scale_color_gradientn(..., colours, values = NULL, space = "Lab",
  na.value = "grey50", guide = "colourbar")
}
\arguments{
  \item{guide}{Type of legend. Use \code{"colourbar"} for
  continuous colour bar, or \code{"legend"} for discrete
  colour legend.}

  \item{colours}{vector of colours}

  \item{values}{if colours should not be evenly positioned
  along the gradient this vector gives the position
  (between 0 and 1) for each colour in the \code{colours}
  vector. See \code{\link{rescale}} for a convience
  function to map an arbitrary range to between 0 and 1.}

  \item{space}{colour space in which to calculate gradient.
  "Lab" usually best unless gradient goes through white.}

  \item{...}{Other arguments passed on to
  \code{\link{discrete_scale}} to control name, limits,
  breaks, labels and so forth.}

  \item{na.value}{Colour to use for missing values}
}
\description{
Smooth colour gradient between n colours
}
\examples{
\donttest{
# scale_colour_gradient make it easy to use existing colour palettes

dsub <- subset(diamonds, x > 5 & x < 6 & y > 5 & y < 6)
dsub$diff <- with(dsub, sqrt(abs(x-y))* sign(x-y))
(d <- qplot(x, y, data=dsub, colour=diff))

d + scale_colour_gradientn(colours = rainbow(7))
breaks <- c(-0.5, 0, 0.5)
d + scale_colour_gradientn(colours = rainbow(7),
  breaks = breaks, labels = format(breaks))

d + scale_colour_gradientn(colours = topo.colors(10))
d + scale_colour_gradientn(colours = terrain.colors(10))

# You can force them to be symmetric by supplying a vector of
# values, and turning rescaling off
max_val <- max(abs(dsub$diff))
values <- seq(-max_val, max_val, length = 11)

d + scale_colour_gradientn(colours = topo.colors(10),
  values = values, rescaler = function(x, ...) x, oob = identity)
d + scale_colour_gradientn(colours = terrain.colors(10),
  values = values, rescaler = function(x, ...) x, oob = identity)
}
}
\seealso{
Other colour scales: \code{\link{scale_color_brewer}},
\code{\link{scale_colour_brewer}},
\code{\link{scale_fill_brewer}};
\code{\link{scale_color_continuous}},
\code{\link{scale_color_gradient}},
\code{\link{scale_colour_continuous}},
\code{\link{scale_colour_gradient}},
\code{\link{scale_fill_continuous}},
\code{\link{scale_fill_gradient}};
\code{\link{scale_color_discrete}},
\code{\link{scale_color_hue}},
\code{\link{scale_colour_discrete}},
\code{\link{scale_colour_hue}},
\code{\link{scale_fill_discrete}},
\code{\link{scale_fill_hue}};
\code{\link{scale_color_gradient2}},
\code{\link{scale_colour_gradient2}},
\code{\link{scale_fill_gradient2}};
\code{\link{scale_color_grey}},
\code{\link{scale_colour_grey}},
\code{\link{scale_fill_grey}}
}

