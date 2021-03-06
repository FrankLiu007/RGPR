

# Georeferencing
#' @export
setMethod("georef", "matrix", 
          function(x, alpha = NULL, cloc = NULL, creg = NULL,
                   ploc = NULL, preg = NULL, FUN = mean){
  x <- .georef (x, alpha = alpha, cloc = cloc, creg = creg,
                   ploc = ploc, preg = preg, FUN = FUN)
  return(x)
})

#' @export                      
setMethod("strTensor", "matrix", 
          function(x, dxy = c(1, 1), mask = c(2, 2),
                        kBlur   = list(n = 3, m =  3, sd = 1), 
                        kEdge   = list(n = 7, m =  7, sd = 1), 
                        kTensor = list(n = 5, m = 10, sd = 2),
                        thresh=0.1, what = c("tensor", "mask"), ...){
  y <- .strucTensor(x, dxy = dxy, mask = mask,
                        kBlur   = kBlur, 
                        kEdge   = kEdge, 
                        kTensor = kTensor,
                        thresh=thresh, what = what, ...)
  return(y)
})