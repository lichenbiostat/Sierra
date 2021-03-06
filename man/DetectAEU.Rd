% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differential_usage.R
\name{DetectAEU}
\alias{DetectAEU}
\title{Find alternative 3' end usage between two single-cell populations}
\usage{
DetectAEU(
  peaks.object,
  gtf_gr,
  gtf_TxDb,
  population.1,
  population.2 = NULL,
  exp.thresh = 0.1,
  fc.thresh = 0.25,
  adj.pval.thresh = 0.05,
  num.splits = 6,
  seed.use = 1,
  verbose = TRUE,
  do.MAPlot = FALSE,
  ncores = 1
)
}
\arguments{
\item{peaks.object}{Either a Seurat or SCE object of peaks}

\item{gtf_gr}{GenomicRanges object from a GTF file}

\item{gtf_TxDb}{TxDb from gtf file}

\item{population.1}{a target population of cells (can be an ID/cluster label or a set of cell barcode IDs)}

\item{population.2}{comparison population of cells. If NULL (default), uses all non-population.1 cells}

\item{exp.thresh}{minimum percent expression threshold (for a population of cells) to include a peak}

\item{fc.thresh}{threshold for log2 fold-change difference for returned results}

\item{adj.pval.thresh}{threshold for adjusted P-value for returned results}

\item{num.splits}{the number of pseudo-bulk profiles to create per identity class (default: 6)}

\item{seed.use}{seed to set the randomised assignment of cells to pseudo-bulk profiles}

\item{verbose}{whether to print outputs (TRUE by default)}

\item{do.MAPlot}{make an MA plot of results (FALSE by default)}

\item{ncores}{Number of cores for multithreading}
}
\value{
a data-frame of results.
}
\description{
Wrapper function to DUTest for detecting differential 3' end use. First applies DUTest to
test for differential usage between 3'UTRs. For DU 3'UTR peaks, evaluates whether the DU peaks
fall in different 3'UTRs.
}
\examples{
\dontrun{
     DetectAEU(apa.seurat.object, population.1 = "1", population.2 = "2")
 }
}
