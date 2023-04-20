## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(GLMMselect)

## -----------------------------------------------------------------------------
data("Y")
Y[1:5]

## -----------------------------------------------------------------------------
data("X")
X[1:5,]

## -----------------------------------------------------------------------------
data("Z")
Z[[1]][1:5,1:5]
Z[[2]][1:5,1:5]

## -----------------------------------------------------------------------------
data("Sigma")
Sigma[[1]][1:5,1:5]
Sigma[[2]][1:5,1:5]

## -----------------------------------------------------------------------------
Model_selection_output <- GLMMselect(Y=Y, X=X, Sigma=Sigma, Z=Z, 
                                     family="poisson", prior="AR", offset=NULL)
Model_selection_output$BestModel
Model_selection_output$PosteriorProb
Model_selection_output$FixedEffect
Model_selection_output$RandomEffect

## -----------------------------------------------------------------------------
lip_cancer_output <- GLMMselect(Y=lipcancer_Y, X=lipcancer_X, Sigma=lipcancer_Sigma, Z=lipcancer_Z,
                                family="poisson", prior="HC", offset=lipcancer_offset)
lip_cancer_output$BestModel
lip_cancer_output$PosteriorProb
lip_cancer_output$FixedEffect
lip_cancer_output$RandomEffect

