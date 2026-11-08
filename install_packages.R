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
  "zoo",          # Time series & missing value interpolation (na.approx)
  
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

# Ensure user personal library exists and is in .libPaths() (fixes non-interactive install on Windows)
user_lib <- Sys.getenv("R_LIBS_USER")
if (nzchar(user_lib)) {
  if (!dir.exists(user_lib)) {
    dir.create(user_lib, recursive = TRUE, showWarnings = FALSE)
  }
  .libPaths(c(user_lib, .libPaths()))
}

# Verify by actually loading each namespace (catches broken/missing sub-dependencies)
missing_or_broken <- required_packages[!sapply(required_packages, requireNamespace, quietly = TRUE)]

if (length(missing_or_broken) > 0) {
  cat("Installing missing or broken packages into:", .libPaths()[1], "\n")
  cat(paste(missing_or_broken, collapse = ", "), "\n")
  utils::install.packages(
    missing_or_broken,
    lib = .libPaths()[1],
    repos = "https://cloud.r-project.org",
    dependencies = c("Depends", "Imports", "LinkingTo")
  )
} else {
  cat("All required packages are already installed and verified!\n")
}

cat("\nPackage verification complete.\n")
