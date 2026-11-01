# ==============================================================================
# File: scripts/utils/export_helpers.R
# Description: Helper functions for econometric table extraction and formatting
# ==============================================================================

suppressPackageStartupMessages({
  library(lmtest)
  library(sandwich)
})

#' Extract tidy coefficients with Cluster-Robust Standard Errors
#'
#' @param model A plm or lm model object
#' @param vcov_type Type of robust covariance (default "HC1")
#' @param cluster_by Cluster variable (default "group" for country cluster in plm)
#' @return A data.frame containing variables, estimates, robust SE, t-stats, and p-values
get_cluster_robust_results <- function(model, vcov_type = "HC1", cluster_by = "group") {
  robust_vcov <- vcovHC(model, type = vcov_type, cluster = cluster_by)
  test_res <- coeftest(model, vcov. = robust_vcov)
  
  df_res <- data.frame(
    Variable = rownames(test_res),
    Estimate = round(test_res[, 1], 4),
    Cluster_Robust_SE = round(test_res[, 2], 4),
    t_stat = round(test_res[, 3], 3),
    p_value = round(test_res[, 4], 4),
    Significance = ifelse(test_res[, 4] < 0.01, "***",
                   ifelse(test_res[, 4] < 0.05, "**",
                   ifelse(test_res[, 4] < 0.1, "*", "")))
  )
  rownames(df_res) <- NULL
  return(df_res)
}

#' Format number to 3 decimal places with comma separator
format_num <- function(x, digits = 3) {
  format(round(x, digits), nsmall = digits, big.mark = ",")
}
