% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_Experiment.R
\name{create_Experiment}
\alias{create_Experiment}
\title{Function to create a Experiment.}
\usage{
create_Experiment(name, description, reader, material, type = NULL,
  interval = NULL)
}
\arguments{
\item{name}{\link{character}: Name of the Experiment.}

\item{description}{\link{character}: Description of the Experiment.}

\item{reader}{\code{\linkS4class{Reader}}: Reader used for the Experiment.}

\item{material}{\code{\linkS4class{Material}}: Material used for the Experiment.}

\item{type}{\link{character}: type of experiment ('TL' or 'OSL').}

\item{interval}{\link{numeric}: Temperature or wavelength on which the experiment focuses on.}
}
\value{
This function return a new Experiment.
}
\description{
This function create a new Experiment.
}
\examples{
# Create info
name <- 'example'
description <- 'example'

# Create reader components
filter <- default_Filters('example')
filterStack <- create_FilterStack(name, description, filter)
stimulation <- default_Stimulation('example')
PMT <- default_PMT('example')

# Create reader
reader <- create_Reader(name, description, stimulation, filterStack, PMT)

# Create material
material <- default_Material('example')

experiment <- create_Experiment(name, description,reader,material, 'OSL')

plot_Experiment(experiment)

}
\author{
David Strebler, University of Cologne (Germany).
}

