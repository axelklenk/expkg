
## ----- show component objects without overriding their show() method -----

setMethod("expShow",
          signature=signature(object="ExpData"),
          function(object) {
              show(object)
          })
