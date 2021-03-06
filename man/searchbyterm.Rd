% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/searchbyterm.R
\name{searchbyterm}
\alias{searchbyterm}
\title{Search by term}
\usage{
searchbyterm(specificepithet = NULL, genus = NULL, family = NULL,
  order = NULL, class = NULL, limit = 1000, compact = TRUE,
  year = NULL, date = NULL, mappable = NULL, error = NULL,
  continent = NULL, cntry = NULL, stateprovince = NULL, county = NULL,
  island = NULL, igroup = NULL, inst = NULL, id = NULL,
  catalognumber = NULL, collector = NULL, type = NULL,
  hastypestatus = NULL, media = NULL, rank = NULL, tissue = NULL,
  resource = NULL, query = NULL, verbose = TRUE, only_dwc = TRUE, ...)
}
\arguments{
\item{specificepithet}{(character) Taxonomic specific epithet, e.g. (sapiens 
in Homo sapiens)}

\item{genus}{(character) Taxonomic genus}

\item{family}{(character) Taxonomic family}

\item{order}{(character) Taxonomic order}

\item{class}{(character) Taxonomic class}

\item{limit}{(numeric) Limit on the number of records returned. If >1000 
results, we use a cursor internally, but you should still get up to the 
results you asked for. See also  \code{\link{bigsearch}} to get larger 
result sets in a text file via email.}

\item{compact}{Return a compact data frame (logical)}

\item{year}{Year (numeric) or range of years designated by comparison
operators "<", ">", "<=" or ">=". You can pass in more than one of these
queries, in a vector. See example below. (character)}

\item{date}{Event date associated with this occurrence record; yyyy-mm-dd
or the range yyyy-mm-dd/yyyy-mm-dd (character)}

\item{mappable}{Record includes valid coordinates in decimal latitude and
decimal longitude (logical)}

\item{error}{Coordinate uncertainty in meters (numeric) or range of 
uncertainty values designated by comparison operators "<", ">", "<=" 
or ">=" (character)}

\item{continent}{Continent to search for occurrence (character)}

\item{cntry}{Country to search for occurrence (character)}

\item{stateprovince}{State or province to search for occurrence (character)}

\item{county}{County to search for occurrence (character)}

\item{island}{Island to search for occurrence (character)}

\item{igroup}{Island group to search for occurrence (character)}

\item{inst}{Code name for the provider/institution of record (character)}

\item{id}{Provider's unique identifier for this occurrence record (character)}

\item{catalognumber}{Provider's catalog number or other ID for this record 
(character)}

\item{collector}{Collector name (character)}

\item{type}{Type of record; "specimen" or "observation" (character)}

\item{hastypestatus}{Specimen associated with this record is identified as a
holotype, paratype, neotype, etc. (character)}

\item{media}{Record also references associated media, such as a film or 
video (logical)}

\item{rank}{TBD (numeric)}

\item{tissue}{Record is likely to reference tissues (logical)}

\item{resource}{Identifier for the resource/dataset from which the record was
indexed (character)}

\item{query}{(character) full text search term(s). not tied to any specific 
field. This does the same thing as using \code{\link{vertsearch}}, where
this searches for any mention of these terms}

\item{verbose}{Print progress and information messages. Default: \code{TRUE}}

\item{only_dwc}{(logical) whether or not to return only Darwin Core term
fields. Default: \code{TRUE}}

\item{...}{Curl arguments passed on to \code{\link[httr]{GET}}}
}
\value{
A data frame of search results
}
\description{
Flexible search for records using keywords/terms
}
\details{
\code{\link{searchbyterm}} builds a query from input parameters 
based on Darwin Core (dwc) terms (for the full list of terms, see
\url{https://code.google.com/p/darwincore/wiki/DarwinCoreTerms}).
}
\examples{
\dontrun{
# Limit the number of records returned to <1000; use bigsearch() for 
# >1000 records
(out <- searchbyterm(class = "aves", state = "california", limit = 10))

# Find multiple species
(out <- searchbyterm(genus = "ochotona", 
  specificepithet = "(princeps OR collaris)", limit=10))

# Specifying a single year (no quotes) or range of years (use quotes)
(out <- searchbyterm(class = "aves", state = "california", year = 1976, 
  limit = 10))
(out <- searchbyterm(class = "aves", state = "california", year = ">=1976", 
  limit = 10))

# Specifying a range (in meters) for uncertainty in spatial location 
# (use quotes)
out <- searchbyterm(class = "aves", state = "nevada", error = "<25")
out <- searchbyterm(class = "aves", state = "california", year = 1976, 
  error = "<=1000")

# Specifying records by event date (use quotes)
out <- searchbyterm(class = "aves", state = "california", 
  date = "2009-03-25")
# ...but specifying a date range may not work
out <- searchbyterm(specificepithet = "nigripes", 
  date = "1935-09-01/1935-09-30")

# Pass in curl options for curl debugging
library("httr")
out <- searchbyterm(class = "aves", limit = 10, config=verbose())
# out <- searchbyterm(class = "aves", limit = 500, config=timeout(1))

# Use more than one year query
searchbyterm(class = "aves", year = c(">=1976", "<=1986"))

# full text search - note the URL message
searchbyterm(query = "Mustela nigripes", limit = 50)
searchbyterm(query = "bear", limit = 50)
}
}
\references{
\url{https://github.com/VertNet/webapp/wiki/The-API-search-function}
}

