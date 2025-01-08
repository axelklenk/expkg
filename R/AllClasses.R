
#' `ExpData` class
#'
#' Virtual superclass of data classes.
#'
#' This class union allows to store any of these in a slot
#' of another class as well as defining common methods for all of them.
#'
#' @seealso
#' [`matrix`],
#' [`dgCMatrix-class`],
#' [`ExpressionSet-class`],
#' [`SummarizedExperiment-class`],
#' [`SingleCellExperiment-class`],
#' [`SpatialExperiment-class`]
#'
#' @importClassesFrom Matrix dgCMatrix
#' @importClassesFrom Biobase ExpressionSet
#' @importClassesFrom SummarizedExperiment SummarizedExperiment
#' @importClassesFrom SingleCellExperiment SingleCellExperiment
#' @importClassesFrom SpatialExperiment SpatialExperiment
#' @importClassesFrom DelayedArray DelayedArray
#' @importClassesFrom HDF5Array HDF5Array
#'
#' @aliases ExpData
#' @name ExpData-class
#' @rdname ExpData-class
#' @exportClass ExpData
setClassUnion("ExpData",
              c("matrix", "dgCMatrix", "ExpressionSet",
                "SummarizedExperiment", "HDF5Array"))


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

