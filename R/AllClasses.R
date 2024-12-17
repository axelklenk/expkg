
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
