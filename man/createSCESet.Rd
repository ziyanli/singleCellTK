% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc_functions.R
\name{createSCESet}
\alias{createSCESet}
\title{Create a SCESet object}
\usage{
createSCESet(countfile = NULL, annotfile = NULL, featurefile = NULL,
  inputdataframes = FALSE)
}
\arguments{
\item{countfile}{The path to a text file that contains a header row of sample
names, and rows of raw counts per gene for those samples.}

\item{annotfile}{The path to a text file that contains columns of annotation
information for each sample in the countfile. This file should have the same
number of rows as there are columns in the countfile.}

\item{featurefile}{The path to a text file that contains columns of
annotation information for each gene in the count matrix. This file should
have the same genes in the same order as countfile. This is optional.}

\item{inputdataframes}{If TRUE, countfile and annotfile are read as data
frames instead of file paths. The default is FALSE.
instead of}
}
\value{
a SCESet object
}
\description{
From a file of counts and a file of annotation information, create a SCESet
object.
}
\examples{
library(scater)
data("GSE60361_subset")
GSE60361_SCESet <- createSCESet(countfile = GSE60361_subset$counts,
                                annotfile = GSE60361_subset$annot,
                                inputdataframes = TRUE)
}
