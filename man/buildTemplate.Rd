% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/antsRegistration.R
\name{buildTemplate}
\alias{buildTemplate}
\title{ANTs template building.}
\usage{
buildTemplate(initialTemplate, imgList, typeofTransform, iterations = 3,
  gradientStep = 0.25)
}
\arguments{
\item{initialTemplate}{fixed image to which we register the population.}

\item{imgList}{moving image list from which template will be built.}

\item{typeofTransform}{A linear or non-linear registration type.  Mutual
information metric by default. See \code{antsRegistration.}}

\item{iterations}{should be greater than 1 less than 10.}

\item{gradientStep}{should be less than 1, speed of shape update step.}
}
\value{
template antsImage
}
\description{
Iteratively estimate a population shape and intensity average image.  This
can be computationally intensive and currently is not parallelized.  Perhaps
better to use official \code{antsMultivariateTemplateConstruction*} in ANTs.
However, this code can be useful for smaller problems/populations.
}
\examples{
\dontrun{
pop = getANTsRData( "population" )
avg = antsAverageImages( pop ) # this is in ANTsR
template = buildTemplate( avg, pop, 'SyN' )
}
}
\author{
Avants BB
}
