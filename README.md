# Insights into Ancestral Diversity in Parkinson’s Disease Risk: A Comparative Assessment of Polygenic Risk Scores

`GP2 ❤️ Open Science 😍`

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[![DOI](https://zenodo.org/badge/790425028.svg)](https://zenodo.org/doi/10.5281/zenodo.11110943)

**Last Updated:** April 2025

## Summary
This is the online repository for the research project titled ***"Insights into Ancestral Diversity in Parkinson’s Disease Risk: A Comparative Assessment of Polygenic Risk Scores"***. Our study evaluates polygenic risk scores (PRS) across multiple ancestries by comparing different PRS models in predicting Parkinson's disease (PD), focusing on identifying the most suitable approach for each population and contributing to equitable advancements in precision medicine.

### Data Statement 
* All GP2 data are hosted in collaboration with the Accelerating Medicines Partnership in Parkinson's Disease and are available via application on the website. The GP2 PD case and control data are available via the GP2 website (https://gp2.org; release 9: https://doi.org/10.5281/zenodo.14510099). 
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
└── prs_release9.ipynb
```

---
### Analysis Notebooks
* Languages: Python, R, bash

| **Notebook File**                     | Description                                                                                       |
|---------------------------------------|---------------------------------------------------------------------------------------------------|
| prs_release9.ipynb   | Extracts and analyzes SNPs across ancestries to estimate polygenic risk scores, evaluates their association with Parkinson's Disease risk and onset, and visualizes these relationships through density plots, ROC curves, forest plots, and multi-ancestry heatmaps                                           |


---

# Software 
|               Software              |  Version(s) |                              Resource URL                              |       RRID      |                                               Notes                                               |
|:-----------------------------------:|:-----------:|:----------------------------------------------------------------------:|:---------------:|:-------------------------------------------------------------------------------------------------:|
|     Python Programming Language     | 3.8 and 3.9 |                         http://www.python.org/                         | RRID:SCR_008394 | pandas; numpy; seaborn; matplotlib; statsmodel; used for general data wrangling/plotting/analyses |
| R Project for Statistical Computing |     4.2 |                        http://www.r-project.org/                       | RRID:SCR_001905 |   tidyverse; dplyr; tidyr; ggplot; data.table; used for general data wrangling/plotting/analyses // avengeme; for power calculations |
|                PLINK                |     2.0     |                   http://www.nitrc.org/projects/plink                  | RRID:SCR_001757 |                                     used for genetic analyses                                     |
| PRSice | 2.0 | https://choishingwan.github.io/PRSice/ | RRID:SCR_017057 | Estimating PRS in R |