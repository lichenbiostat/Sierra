% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataset_merging.R
\name{generate_similarity_table}
\alias{generate_similarity_table}
\title{Generates a table of similarity measures between two sets of peaks}
\usage{
generate_similarity_table(peaks.1, peaks.2, ncores = 1)
}
\arguments{
\item{peaks.1}{first set of peaks - used as a reference point}

\item{peaks.2}{second set of peaks being compared}

\item{ncores}{number of cores for multithreading (default 1)}
}
\value{
a data-frame with peaks from peaks.1 mapped to the closest corresponding peak in peaks.2.
}
\description{
Goes through the set of genes contained in peaks.1. For each gene-specific peak,
calculate the amount of overlapping nucleotides to the nearest peak in peaks.2. If the gene
is not available in peaks.2, ditance is set to -1e7.
}
\examples{
\dontrun{
extdata_path <- system.file("extdata",package = "Sierra")
peak.sites.file <- paste0(extdata_path,"/TIP_merged_peaks.txt")
peak.table <- read.table(peak.sites.file, sep="\t", header = TRUE, stringsAsFactors = FALSE)

generate_similarity_table(peak.table, peak.table)
}
}
