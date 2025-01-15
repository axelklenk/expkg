
#' `A` class
#'
#' A test class, superclass of test class `C`.
#'
#' This class is part of a pair of classes for testing an issue with S4
#' method dispatch.
#'
#' @aliases A
#' @name A-class
#' @rdname A-class
#' @exportClass A
setClass("A")


#' `C` class
#'
#' A test class, subclass of test class `A`.
#'
#' This class is part of a pair of classes for testing an issue with S4
#' method dispatch.
#'
#' @aliases C
#' @name C-class
#' @rdname C-class
#' @exportClass C
setClass("C", contains=c("A"))

