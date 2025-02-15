% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/osmium-extract.R
\name{uta_extract_osm}
\alias{uta_extract_osm}
\title{Extract network data with osmium, convert to \pkg{sc} format, and collate all
results into a single \pkg{osmdata} object.}
\usage{
uta_extract_osm(city, path, bbox = NULL, bbox_expand = 0.05, osm_id = NULL)
}
\arguments{
\item{city}{Name of city (used to name resultant files).}

\item{path}{Path to a local '.pbf' or '.bz2' file with OpenStreetMap data for
nominated city.}

\item{bbox}{Optional bounding box within which data are to be extracted. If
not given, result includes the entire network within the nominated OSM
file. \code{bbox} can be either a matrix obtained from the \pkg{osmdata} function,
\code{getbb} (or equivalent), or an object from which a bounding box can be
extracted. Objects currently recognised are matrices or arrays, which should
have two columns (x and y / longitude and latitude), or an \pkg{sf} object
from which a bounding box can be extracted. Alternatively, \code{bbox} can be a
local path to a 'geojson' file containing a single polygonal outline to be
used to trim the OSM data.}

\item{bbox_expand}{A proportional amount by which to extend the limits of the
bounding box defined by the \code{bbox} argument, defaulting to 5\%.}

\item{osm_id}{In lieu of a bounding box, the ID of an Open Street Map object
(generally a relation) can be used to provide the boundary to trim the OSM
file.}
}
\description{
Extract network data with osmium, convert to \pkg{sc} format, and collate all
results into a single \pkg{osmdata} object.
}
