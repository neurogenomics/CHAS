% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CelltypeProportion.R
\name{CelltypeProportion}
\alias{CelltypeProportion}
\title{Calculate cell type proportions}
\usage{
CelltypeProportion(
  newBulkCounts,
  newRefCounts,
  newPeaks,
  refSamples,
  signature
)
}
\arguments{
\item{newBulkCounts}{The new counts matrix for bulk samples
rows represent peaks, which should be the exact same peaks with exact same order as newRefCounts;
columns represent bulk samples.}

\item{newRefCounts}{The new counts matrix for reference samples
rows represent peaks, which should be the exact same peaks with exact same order as newBulkCounts;
columns represent reference samples.}

\item{refSamples}{A data frame containing cell type annotations for reference samples
the first column contains the sample ID used in newRefCounts,in the same order
the second column contains the corresponding cell type for each sample}

\item{signature}{A list of peak ID that will be used as signature peaks for matrix fatorisation.
When there is no bam files to be used for re-counting reads for consensus peaks (MF Route B), no signature peaks
need to be provided (i.e., signature = NULL). The function will automatically select signature peaks based on the
read counts in different reference cells. Only keep the peaks whose maximum counts in all cell types is >= 5
times higher than the second largest.}
}
\value{
A list containing the following:
\link{1} a list: numbers of signature peaks for each cell type
\link{2} data frame: EPIC-predicted cell-type proportions
}
\description{
This function calculates cell type proportions using matrix factorisation
}
\details{
This function takes three inputs:
(1) a new counts matrix for bulk samples
(2) a new counts matrix for ref samples
(3) cell type annotations for reference samples

This function has four steps:
(1) calculate length-normalised cpm from raw counts
(2) calculate the median and variability for reference data
(3) optional - select cell-type-specific signature peaks
For a given peak, compare the median counts among cell types.
Only keep the peaks whose maximum counts in all cell types is >= 5 times higher than the second largest.
This ensures that the selected peaks have high signal in only one cell type, hence a 'signature' for that cell type.
(4) run matrix factorisation with EPIC
}
