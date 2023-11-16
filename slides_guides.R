

## --------- DIMENSIONS (width, height) --------- ##
W <- 25.40
H <- 14.15
## ---------------------------------------------- ##

    # --- Rounding shortcut function
    r <- function(x,slice){round(x/slice, 2)}
    
    # --- Borders
    v.b <- c(1, W-1)
    h.b <- c(1, H-1)
    
    # --- Halves
    v.2 <- r(W, 2)
    h.2 <- r(H, 2)
    
    # --- Thirds (a = left/top, b = right/bottom)
    v.3 <- c(a=r(W,3), b=W-r(W,3))
    h.3 <- c(a=r(H,3), b=H-r(H,3))
    
    # --- Title Box (using sixths)
    h.6 <- c(r(H,6), H-r(H,6))
    h.t1 <- sort( c(h.6[1], h.6[1] + c(-1,1)*abs(h.6[1] - h.b[1])) )
    h.t2 <- sort( c(h.6[2], h.6[2] + c(-1,1)*abs(h.6[2] - h.b[2])) )
    
    v <- c(sort(c(v.b,v.2,v.3)), rep(NA,6)); rm(v.b,v.2,v.3)
    h <- sort(c(h.b,h.2,h.3,h.t1,h.t2)); rm(h.b,h.2,h.3,h.t1,h.t2)
    
    # --- Remove everything but guide values
    rm(h.6,W,H,r)

## --------- DISPLAY ------------------------------------------------------ ##
knitr::kable(data.frame("Vertical" = v, "Horizontal" = h), format = "pipe")

