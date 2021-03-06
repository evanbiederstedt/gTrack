% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gTrack.R
\name{tack.straw}
\alias{tack.straw}
\alias{track.straw}
\title{track.straw}
\usage{
track.straw(hic, gr, norm = "KR", type = "BP", res = 10000,
  mc.cores = 1, colormap = c("white", "red", "black"), ...)
}
\arguments{
\item{hic}{path to .hic file}

\item{gr}{granges to query}

\item{norm}{string specifying normalization to apply ("KR" (default), "NONE", VC")}

\item{type}{"BP" vs "FRAG"}

\item{res}{resolution to query (default 10kb)}

\item{mc.cores}{parallelization to apply for query (useful when length(gr)>2)}
}
\value{
gTrack gt of output with mdata(gt)[[1]] is the matrix of contact info and dat(gt)[[1]] is the granges
}
\description{
queries .hic object via straw API https://github.com/theaidenlab/straw/tree/master/R
to extract all of the data in length n query gr (note will do n choose 2 queries since
straw only supports pairwise queries)
}
\author{
Marcin Imielinski
Tuesday, Nov 07, 2017 04:43:52 PM - Julie: adding as.character()
}
\keyword{straw}
