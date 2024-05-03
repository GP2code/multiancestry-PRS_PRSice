# Sample size calculation
  ## Project: Multi-ancestry PRS
  ## Version: R/4.2
  ## Status: COMPLETE
  ## Last Updated: 2-MAY-2024

## Notebook Overview
  ## Uses the "avengeme" package to calculate the required sample size for achieving a specified power 
  ##T his formula considers 50% rate of cases and controls, and prevalence of 1% with heritability of 22%####

install.packages("remotes")
remotes::install_github("DudbridgeLab/AVENGEME")
library("avengeme") 

# Define the parameters
targetQuantity <- "power"
targetValue <- 0.80  # 80%
nsnp <- 90  # Number of genetic markers used in the polygenic score
vg1 <- 0.22
prevalence <- 0.01

sampleSizeForGeneScore(targetQuantity, targetValue, nsnp, n2 = NA, vg1,
                       cov12 = vg1, pi0 = 0, weighted = TRUE, binary = TRUE,
                       prevalence, sampling = 0.5, lambdaS = NA,
                       shrinkage = FALSE, logrisk = TRUE, alpha = 0.05, r2gx = 0,
                       corgx = 0, r2xy = 0, adjustedEffects = FALSE)


