% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encoding.R
\name{native_encode}
\alias{native_encode}
\title{Try to use the system native encoding to represent a character vector}
\usage{
native_encode(x, windows_only = is_windows())
}
\arguments{
\item{x}{A character vector.}

\item{windows_only}{Whether to make the attempt on Windows only. On Unix,
characters are typically encoded in the native encoding (UTF-8), so there
is no need to do the conversion.}
}
\description{
Apply \code{enc2native()} to the character vector, and check if
\code{enc2utf8()} can convert it back without a loss. If it does, return
\code{enc2native(x)}, otherwise return the original vector with a warning.
}
\examples{
library(xfun)
s = intToUtf8(c(20320, 22909))
Encoding(s)

s2 = native_encode(s)
Encoding(s2)
}
