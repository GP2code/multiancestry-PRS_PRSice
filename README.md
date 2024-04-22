# Insights into Ancestral Diversity in Parkinson’s Disease Risk: A Comparative Assessment of Polygenic Risk Scores

`GP2 ❤️ Open Science 😍`

*DOI PENDING*

**Last Updated:** April 2024 

## Summary
This is the online repository for the research project titled ***"Insights into Ancestral Diversity in Parkinson’s Disease Risk: A Comparative Assessment of Polygenic Risk Scores"***. Our study evaluates polygenic risk scores (PRS) across multiple ancestries by comparing different PRS models in predicting Parkinson's disease (PD), focusing on identifying the most suitable approach for each population and contributing to equitable advancements in precision medicine.

### Data Statement 
* All GP2 data are hosted in collaboration with the Accelerating Medicines Partnership in Parkinson's Disease and are available via application on the website. The GP2 PD case and control data are available via the GP2 website (https://gp2.org; release 6: https://doi.org/10.5281/zenodo.10472143). 
    * Genotyping imputation, quality control, ancestry prediction, and processing were performed using GenoTools (v1.0.0), publicly available on GitHub

### Helpful Links 
- [GP2 Website](https://gp2.org/)
    - [GP2 Cohort Dashboard](https://gp2.org/cohort-dashboard-advanced/)
- [Introduction to GP2](https://movementdisorders.onlinelibrary.wiley.com/doi/10.1002/mds.28494)
    - [Other GP2 Manuscripts (PubMed)](https://pubmed.ncbi.nlm.nih.gov/?term=%22global+parkinson%27s+genetics+program%22)

# Repository Orientation 
This repository's `analyses/` directory holds all the Jupyter notebooks used in the analyses described in our study. Here’s the structure:

```
THIS_REPO
├── README.md
└── analyses
    ├── 00_PRS_release6_relatedness_1.ipynb
    ├── 01_PRS_summary_stats_meta.ipynb
    ├── 02_PRS_release6_scores.ipynb
    ├── 03_PCs_PRS_release6_regression_risk.ipynb
    ├── 04_data_visualization_density_1.ipynb
    ├── 05_data_visualization_ROC.ipynb
    ├── 06_data_visualization_forest_plots.ipynb
    ├── 07_PRS_release6_regression_age_at_onset.ipynb
    ├── 08_Specificity_Sensitivity_1.ipynb
    ├── 09_admixture_PRS_release6_regression_risk.ipynb
    ├── 10_Multi_ancestry_heatmap_1.ipynb
    ├── 11_PRS_release6_upsetplot.ipynb
    └── 12_SNPs_contributing_most.ipynb
```

---
### Analysis Notebooks
* Languages: Python, R, bash

| **Notebook File**                     | Description                                                                                       |
|---------------------------------------|---------------------------------------------------------------------------------------------------|
| 00_PRS_release6_relatedness_1.ipynb   | Estimate relatedness and remove related individuals                                               |
| 01_PRS_summary_stats_meta.ipynb       | Extract SNPs and keep SNPs found across summary statistics                                        |
| 02_PRS_release6_scores.ipynb          | Extract 90 SNPs per ancestry and estimate PRS on PLINK                                            |
| 03_PCs_PRS_release6_regression_risk.ipynb | Logistic regression models for PD risk association adjusted by covariates for all ancestries      |
| 04_data_visualization_density_1.ipynb | Plot density PRS plots                                                                             |
| 05_data_visualization_ROC.ipynb       | Plot the ROC curves                                                                                |
| 06_data_visualization_forest_plots.ipynb | Forest plot visualizations                                                                         |
| 07_PRS_release6_regression_age_at_onset.ipynb | Linear regression models for PD age at onset association adjusted by covariates for all ancestries |
| 08_Specificity_Sensitivity_1.ipynb    | Estimating sensitivity and specificity                                                             |
| 09_admixture_PRS_release6_regression_risk.ipynb | PRS versus PD Risk across ancestries, accounting for % ancestry admixture                          |
| 10_Multi_ancestry_heatmap_1.ipynb     | Visualizing the multi-ancestry results using a heatmap                                             |
| 11_PRS_release6_upsetplot.ipynb       | Visualizing the multi-ancestry results using an UpSet plot                                         |
| 12_SNPs_contributing_most.ipynb       | Identifying key SNPs driving PRS prediction                                                        |

---

# Software 
|               Software              |  Version(s) |                              Resource URL                              |       RRID      |                                               Notes                                               |
|:-----------------------------------:|:-----------:|:----------------------------------------------------------------------:|:---------------:|:-------------------------------------------------------------------------------------------------:|
|     Python Programming Language     | 3.8 and 3.9 |                         http://www.python.org/                         | RRID:SCR_008394 | pandas; numpy; seaborn; matplotlib; statsmodel; used for general data wrangling/plotting/analyses |
| R Project for Statistical Computing |     4.2 |                        http://www.r-project.org/                       | RRID:SCR_001905 |   tidyverse; dplyr; tidyr; ggplot; data.table; used for general data wrangling/plotting/analyses  |
|                PLINK                |     2.0     |                   http://www.nitrc.org/projects/plink                  | RRID:SCR_001757 |                                     used for genetic analyses                                     |
| PRSice | 2.0 | https://choishingwan.github.io/PRSice/ | RRID:SCR_017057 | Estimating PRS in R 


