# ==============================================================================
# Script: install_packages.R
# Description: Installs and verifies all required R packages for the NCKH project
# ==============================================================================

required_packages <- c(
  # Data Manipulation & Tidyverse
  "tidyverse",
  "readr",
  "dplyr",
  "tidyr",
  "stringr",
  "purrr",
  
  # Econometrics & Panel Data Analysis
  "plm",          # Linear models for panel data (Pooled OLS, FEM, REM, TWFE)
  "sandwich",     # Robust covariance matrix estimators (Cluster-robust SE)
  "lmtest",       # Diagnostic testing (Wooldridge, Breusch-Pagan, Wald)
  "fixest",       # Fast and robust fixed effects estimation
  "car",          # Companion to Applied Regression (VIF, hypothesis tests)
  
  # Visualization & Reporting
  "ggplot2",
  "corrplot",     # Correlation matrix visualization
  "stargazer",    # LaTeX / ASCII / HTML regression tables
  "modelsummary", # Modern regression & summary tables
  "kableExtra",
  "scales",
  
  # Excel & Export Utilities
  "writexl",
  "readxl"
)

cat("Checking and installing required R packages...\n")

new_packages <- required_packages[!(required_packages %in% installed.packages()[, "Package"])]

if (length(new_packages) > 0) {
  cat("Installing missing packages:\n", paste(new_packages, collapse = ", "), "\n")
  install.packages(new_packages, repos = "https://cloud.r-project.org")
} else {
  cat("All required packages are already installed!\n")
}

cat("\nPackage verification complete.\n")
