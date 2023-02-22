#!/usr/bin/r


# A major consideration, of course, is the nature of the individual items of
# data. The observational data may be in various forms: quantitative measures,
# colors, text strings, and so on. Prior to most analyses of data, they must be
# represented as real numbers. In some cases, they can be represented easily
# as real numbers, although there may be restrictions on the mapping into the
# reals. (For example, do the data naturally assume only integral values, or
# could any real number be mapped back to a possible observation?)
pander::add.blank.lines(0)


# The most common way of representing data is by using a two-dimensional
# array in which the rows correspond to observational units (“instances”) and
# the columns correspond to particular types of observations (“variables” or
# “features”). If the data correspond to real numbers, this representation is the
# familiar X data matrix. Much of this book is devoted to the matrix theory
# and computational methods for the analysis of data in this form. This type of
# matrix, perhaps with an adjoined vector, is the basic structure used in many

## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(warp)

## -----------------------------------------------------------------------------
before_dst <- as.POSIXct("2023-04-26 01:59:59", tz = "America/New_York")
before_dst

before_dst + 1

## -----------------------------------------------------------------------------
x <- as.POSIXct("2023-04-26 00:00:00", tz = "America/New_York") + 3600 * 0:7

data.frame(
  x = x,
  hour = warp_distance(x, "hour", every = 2)
)

## -----------------------------------------------------------------------------
y <- as.POSIXct("1970-04-26 22:00:00", tz = "America/New_York") + 3600 * 0:5

data.frame(
  y = y,
  hour = warp_distance(y, "hour", every = 2)
)

## -----------------------------------------------------------------------------
# Or call `lubridate::force_tz(x, "UTC")`
force_utc <- function(x) {
  x_lt <- as.POSIXlt(x)
  x_lt <- unclass(x_lt)
  
  attributes(x) <- NULL
  
  out <- x + x_lt$gmtoff
  
  as.POSIXct(out, tz = "UTC", origin = "1970-01-01")
}

x_utc <- force_utc(x)
y_utc <- force_utc(y)

x_utc

## -----------------------------------------------------------------------------
data.frame(
  x_utc = x_utc,
  hour = warp_distance(x_utc, "hour", every = 2)
)

data.frame(
  y_utc = y_utc,
  hour = warp_distance(y_utc, "hour", every = 2)
)

## -----------------------------------------------------------------------------
before_fallback <- as.POSIXct("2023-10-25 01:00:00", tz = "America/New_York")
before_fallback

# add 1 hour of seconds
before_fallback + 3600

## -----------------------------------------------------------------------------
x <- as.POSIXct("2023-10-25 00:00:00", tz = "America/New_York") + 3600 * 0:7
x

data.frame(
  x = x,
  hour = warp_distance(x, "hour", every = 2)
)

## -----------------------------------------------------------------------------
y <- as.POSIXct("2023-10-25 22:00:00", tz = "America/New_York") + 3600 * 0:5
y

data.frame(
  y = y,
  hour = warp_distance(y, "hour", every = 2)
)

## -----------------------------------------------------------------------------
x_utc <- force_utc(x)
x_utc

## -----------------------------------------------------------------------------
data.frame(
  x_utc = x_utc,
  hour = warp_distance(x_utc, "hour", every = 2)
)

