# ==============================================================================
# File: scripts/05_subsample_analysis.R
# Mục tiêu: Phân tích tính không đồng nhất (Sub-sample Analysis): 
#          So sánh nhóm Thu nhập thấp (Low-income) vs Thu nhập trung bình (Middle-income)
# Phụ trách: Thành viên C
# Đầu vào: data/processed/panel_data.RData
# Đầu ra: reports/tables/table6_subsample_comparison.csv
# ==============================================================================

suppressPackageStartupMessages({
  library(readr)
  library(dplyr)
  library(tidyr)
  library(plm)
  library(lmtest)
  library(sandwich)
})

source("scripts/utils/export_helpers.R")

cat(">>> BẮT ĐẦU PHÂN TÍCH PHÂN NHÓM THU NHẬP (GIAI ĐOẠN 3) <<<\n")

load("data/processed/panel_data.RData")

pdata$log_GDP_pc <- log(pdata$GDP_pc)

# 1. Tách mẫu dữ liệu thành 2 phân nhóm
# Nhóm 1: Thu nhập thấp (Low Income - khoảng 13 quốc gia)
# Nhóm 2: Thu nhập trung bình (Lower-middle & Upper-middle Income - khoảng 75 quốc gia)
pdata_low <- pdata[pdata$income == "Low income", ]
pdata_mid <- pdata[pdata$income %in% c("Lower middle income", "Upper middle income"), ]

cat("Số quan sát nhóm Thu nhập thấp:", nrow(pdata_low), "(khoảng", length(unique(pdata_low$country)), "quốc gia)\n")
cat("Số quan sát nhóm Thu nhập trung bình:", nrow(pdata_mid), "(khoảng", length(unique(pdata_mid$country)), "quốc gia)\n")

# Phương trình hồi quy với biến trễ
fmla_lagged <- Unemployment ~ lag(GDP_growth, 1) + lag(Inflation, 1) + lag(FDI, 1) + 
                             lag(Trade, 1) + lag(Female_LFPR, 1) + lag(Credit_private, 1) + 
                             lag(log_GDP_pc, 1)

# 2. Ước lượng mô hình TWFE cho toàn bộ mẫu (Full Sample)
model_full <- plm(fmla_lagged, data = pdata, model = "within", effect = "twoways")
se_full <- vcovHC(model_full, type = "HC1", cluster = "group")

# 3. Ước lượng mô hình TWFE cho phân nhóm Thu nhập thấp (Low Income)
model_low <- plm(fmla_lagged, data = pdata_low, model = "within", effect = "twoways")
se_low <- tryCatch({
  vcovHC(model_low, type = "HC1", cluster = "group")
}, error = function(e) {
  # Dự phòng nếu số cụm quá nhỏ gây ma trận suy biến
  vcovHC(model_low, type = "HC1")
})

# 4. Ước lượng mô hình TWFE cho phân nhóm Thu nhập trung bình (Middle Income)
model_mid <- plm(fmla_lagged, data = pdata_mid, model = "within", effect = "twoways")
se_mid <- vcovHC(model_mid, type = "HC1", cluster = "group")

# 5. Lập bảng so sánh Sub-sample
vars_lag <- names(coef(model_full))

format_coef <- function(model, vcov_mat, var_name) {
  cf <- coeftest(model, vcov. = vcov_mat)
  if (!var_name %in% rownames(cf)) return("-")
  est <- round(cf[var_name, 1], 4)
  se  <- round(cf[var_name, 2], 4)
  pval <- cf[var_name, 4]
  stars <- ifelse(pval < 0.01, "***", ifelse(pval < 0.05, "**", ifelse(pval < 0.1, "*", "")))
  return(paste0(est, stars, " (", se, ")"))
}

subsample_table <- data.frame(
  Variable = c(
    "Độ trễ Tăng trưởng GDP (Okun)",
    "Độ trễ Lạm phát CPI (Phillips)",
    "Độ trễ Đầu tư FDI ròng",
    "Độ trễ Độ mở thương mại",
    "Độ trễ Tham gia LĐ nữ",
    "Độ trễ Tín dụng tư nhân",
    "Độ trễ Quy mô kinh tế (log GDP/người)"
  ),
  Full_Sample_88_LMICs = sapply(vars_lag, function(v) format_coef(model_full, se_full, v)),
  Low_Income_Group = sapply(vars_lag, function(v) format_coef(model_low, se_low, v)),
  Middle_Income_Group = sapply(vars_lag, function(v) format_coef(model_mid, se_mid, v))
)

write_csv(subsample_table, "reports/tables/table6_subsample_comparison.csv")
cat("\n>>> HOÀN THÀNH: Đã lưu bảng so sánh phân nhóm vào reports/tables/table6_subsample_comparison.csv <<<\n")
