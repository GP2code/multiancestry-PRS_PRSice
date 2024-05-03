# Power calculations for multi-ancestry PRS analysis
  ## Project: Multi-ancestry PRS
  ## Version: R/4.2
  ## Status: COMPLETE
  ## Last Updated: 2-MAY-2024

## Notebook Overview
  ## Calculates the statistical power for detecting an association between a polygenic risk score (PRS) and an outcome in a binary trait analysis, 
  ## considering the effect size specified by an odds ratio.


# Function definition
prs_power_bin <- function(n, k, alpha = 0.05, odds_ratio, rsqr) {
  # n          = sample size
  # k          = proportion of cases for the prs outcome variable
  # alpha      = P value threshold at which you are trying to detect a signal
  # odds_ratio = odds ratio that you are trying to detect
  # rsqr       = R-squared of an exposure genetic risk score on the exposure itself
  
  # PRS effect
  eff_denom <- 1 + (k * (odds_ratio - 1))
  prs_effect <- k * ((odds_ratio / eff_denom) - 1)
  
  # Variance of PRS effect
  var_num <- (k * (1 - k)) - (prs_effect^2)
  var_denom <- n * rsqr
  prs_var <- var_num / var_denom
  
  # Non-centrality parameter
  ncp <- (prs_effect^2) / prs_var
  
  # Calculate power
  beta <- pchisq(q = qchisq(1 - alpha, df = 1), df = 1, ncp = ncp, lower.tail = TRUE)
  power <- 1 - beta
  return(power)
}

# Given data
populations <- c("AAC", "AFR", "AJ", "AMR", "EAS", "EUR", "CAS")
n <- c(1060, 2548, 1459, 502, 3839, 19184, 532)
k <- c(0.25, 0.36, 0.69, 0.72, 0.40, 0.61, 0.50)  # Different k values for each population
alpha <- 0.05
odds_ratio <- rep(2.031958, length(populations))  
rsqr <- rep(0.054, length(populations))       
# Initialize results data frame
results <- data.frame(Population = character(), Power = numeric(), stringsAsFactors = FALSE)

# Loop over populations
for (i in seq_along(populations)) {
  population <- populations[i]
  sample_size <- n[i]
  prop_cases <- k[i]  # Fetch k value for the current population
  
  # Calculate power using fixed OR and R^2 values
  power <- prs_power_bin(sample_size, prop_cases, alpha, odds_ratio[i], rsqr[i])
  
  # Store results in data frame
  results <- rbind(results, data.frame(Population = population, Power = power))
}

# Print results
print(results)

# Save results to CSV
write.csv(results, "prs_power_results.csv", row.names = FALSE)