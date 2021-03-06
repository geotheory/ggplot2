\name{coord_flip}
\alias{coord_flip}
\title{Flipped cartesian coordinates.}
\usage{
coord_flip(...)
}
\arguments{
  \item{...}{Other arguments passed onto
  \code{\link{coord_cartesian}}}
}
\description{
Flipped cartesian coordinates so that horizontal becomes
vertical, and vertical, horizontal. This is primarily
useful for converting geoms and statistics which display y
conditional on x, to x conditional on y.
}
\examples{
\donttest{
# Very useful for creating boxplots, and other interval
# geoms in the horizontal instead of vertical position.
qplot(cut, price, data=diamonds, geom="boxplot")
last_plot() + coord_flip()

qplot(cut, data=diamonds, geom="bar")
last_plot() + coord_flip()

h <- qplot(carat, data=diamonds, geom="histogram")
h
h + coord_flip()
h + coord_flip() + scale_x_reverse()

# You can also use it to flip lines and area plots:
qplot(1:5, (1:5)^2, geom="area")
last_plot() + coord_flip()
}
}

