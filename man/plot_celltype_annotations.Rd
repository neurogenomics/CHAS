% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_celltype_annotations.R
\name{plot_celltype_annotations}
\alias{plot_celltype_annotations}
\title{Plot the proportions of peaks annotated to each cell type}
\usage{
plot_celltype_annotations(annotatedPeaks)
}
\arguments{
\item{annotatedPeaks}{The output list of data frames from the function CelltypeSpecificPeaks()
containing the annotated bulk peaks and the cell type-specific bulk peaks.}
}
\value{
A stacked bar plot showing the proportion of each cell type in the bulk peak set.
}
\description{
This function takes as input the output of the function CelltypeSpecificPeaks()
and uses the annotated bulk peaks to plot the proportion of each cell type.
}
