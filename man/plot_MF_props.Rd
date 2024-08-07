% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_MF_props.R
\name{plot_MF_props}
\alias{plot_MF_props}
\title{Plot matrix-factorisation-predicted cell type proportions in bulk samples}
\usage{
plot_MF_props(celltypeProportion, sampleLabel = FALSE)
}
\arguments{
\item{celltypeProportion}{The output list from the function CelltypeProportion()}

\item{sampleLabel}{Whether or not to add sample labels to the plot. The default is FALSE.}
}
\value{
A bar plot showing the predicted cell type proportions for each sample.
}
\description{
This function creates a stacked bar plot containing the predicted cell-type proportions
for each bulk sample.
}
