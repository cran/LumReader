% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import_PMT.R
\name{import_PMT}
\alias{import_PMT}
\title{Function to import a PMT}
\usage{
import_PMT(file.name)
}
\arguments{
\item{file.name}{\link{character} name of the .FLT file containing the PMT properties.}
}
\value{
The function creates a new \code{\linkS4class{PMT}} object.
}
\description{
This function import the properties of a PMT previously saved in a .PMT file.
}
\examples{
folder <- system.file("extdata", package="LumReader")

file.name <- 'example' # !!! no extension !!! #

file <-paste(folder, '/', file.name, sep="")

example <- import_PMT(file)

plot_PMT(example)

}
\author{
David Strebler, University of Cologne (Germany).
}

