\name{assignifnotcached}
\alias{assignifnotcached}
\title{Assign value to variable if it is not cached}
\usage{
  assignifnotcached(object, expression, create = TRUE)
}
\arguments{
  \item{object}{a string given the name of the variable to
  be assigned to}

  \item{expression}{the expression evaluating into the
  value to be assigned}

  \item{create}{shall a cache file be created (default
  TRUE)}
}
\value{
  nothing, invoked for side effects (assigning a value to a
  variable)
}
\description{
  Assign value to variable if the value is not cached
}
\details{
  For saving time, objects can be cached under their object
  name with the ".RData" extension in a cache directory
  "/cache" under the current working directory. If a cached
  version of the variable exists, do not recalculate the
  assigned part of the expression, but rather use the
  cache. This differs from memoization as a permanently
  cached version is used.
}
\examples{
\dontrun{assignifnotcached("a_big_sum", sum(1:1020))}
}
\author{
  Christian Zang
}

