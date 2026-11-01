# ==============================================================================
# File: scripts/04_causal_twfe_lags.R
# Mục tiêu: Định hướng suy luận nhân quả bằng mô hình Two-Way Fixed Effects (TWFE)
#          kết hợp biến trễ 1 kỳ (X_{i, t-1}) nhằm kiểm soát cú sốc năm và tác động ngược
# Phụ trách: Thành viên C
# Đầu vào: data/processed/panel_data.RData
# Đầu ra: reports/tables/table5_twfe_causal_comparison.csv
# ==============================================================================

suppressPackageStartupMessages({
  library(tidyverse)
  library(plm)
  library(lmtest)
  library(sandwich)
})

source("scripts/utils/export_helpers.R")

cat(">>> BẮT ĐẦU ƯỚC LƯỢNG MÔ HÌNH SUY LUẬN NHÂN QUẢ TWFE & BIẾN TRỄ (GIAI ĐOẠN 3) <<<\n")

load("data/processed/panel_data.RData")

pdata$log_GDP_pc <- log(pdata$GDP_pc)

# 1. Tạo biến trễ 1 kỳ (Lagged Explanatory Variables: X_{i, t-1})
# Biến trễ giúp giải quyết vấn đề nội sinh do tác động đồng thời (Simultaneity / Reverse Causality)
# và phản ánh độ trễ truyền dẫn của chính sách kinh tế vĩ mô vào thị trường lao động.
pdata$lag_GDP_growth     <- lag(pdata$GDP_growth, 1)
pdata$lag_Inflation      <- lag(pdata$Inflation, 1)
pdata$lag_FDI            <- lag(pdata$FDI, 1)
pdata$lag_Trade          <- lag(pdata$Trade, 1)
pdata$lag_Female_LFPR    <- lag(pdata$Female_LFPR, 1)
pdata$lag_Credit_private <- lag(pdata$Credit_private, 1)
pdata$lag_log_GDP_pc     <- lag(pdata$log_GDP_pc, 1)

# 2. Ước lượng Mô hình FEM 1 chiều (Baseline từ Thành viên B)
fmla_baseline <- Unemployment ~ GDP_growth + Inflation + FDI + Trade + 
                                Female_LFPR + Credit_private + log_GDP_pc
model_fe_base <- plm(fmla_baseline, data = pdata, model = "within", effect = "individual")
se_fe_base <- vcovHC(model_fe_base, type = "HC1", cluster = "group")

# 3. Ước lượng Mô hình TWFE biến đồng thời (Two-Way Fixed Effects: Country FE + Year FE)
# Kiểm soát các cú sốc vĩ mô toàn cầu xảy ra đồng loạt qua các năm (ví dụ: Đại dịch COVID-19 2020-2021)
model_twfe_contemp <- plm(fmla_baseline, data = pdata, model = "within", effect = "twoways")
se_twfe_contemp <- vcovHC(model_twfe_contemp, type = "HC1", cluster = "group")

# 4. Ước lượng Mô hình Trọng tâm: TWFE với Biến Trễ 1 kỳ (Lagged TWFE)
fmla_lagged <- Unemployment ~ lag_GDP_growth + lag_Inflation + lag_FDI + lag_Trade + 
                             lag_Female_LFPR + lag_Credit_private + lag_log_GDP_pc
model_twfe_lagged <- plm(fmla_lagged, data = pdata, model = "within", effect = "twoways")
se_twfe_lagged <- vcovHC(model_twfe_lagged, type = "HC1", cluster = "group")

# 5. Chiết xuất kết quả hồi quy kèm Cluster-Robust SE
cat("\n--- KẾT QUẢ MÔ HÌNH TRỌNG TÂM: TWFE KÈM BIẾN TRỄ (CLUSTERING SE) ---\n")
test_twfe_lagged <- coeftest(model_twfe_lagged, vcov. = se_twfe_lagged)
print(test_twfe_lagged)

# 6. Lập bảng so sánh đối chiếu quá trình tiến hóa của mô hình
vars_base <- names(coef(model_fe_base))
vars_lag  <- names(coef(model_twfe_lagged))

format_coef <- function(model, vcov_mat, var_name) {
  cf <- coeftest(model, vcov. = vcov_mat)
  if (!var_name %in% rownames(cf)) return("-")
  est <- round(cf[var_name, 1], 4)
  se  <- round(cf[var_name, 2], 4)
  pval <- cf[var_name, 4]
  stars <- ifelse(pval < 0.01, "***", ifelse(pval < 0.05, "**", ifelse(pval < 0.1, "*", "")))
  return(paste0(est, stars, " (", se, ")"))
}

comparison_table <- data.frame(
  Variable_Role = c(
    "Tốc độ tăng trưởng GDP (Okun)",
    "Tỷ lệ lạm phát CPI (Phillips)",
    "Đầu tư trực tiếp nước ngoài (FDI)",
    "Độ mở thương mại (Trade)",
    "Tỷ lệ tham gia LĐ nữ (FLFP)",
    "Tín dụng tư nhân (Credit)",
    "Quy mô kinh tế (log GDP/người)"
  ),
  Model_1_OneWay_FE = sapply(vars_base, function(v) format_coef(model_fe_base, se_fe_base, v)),
  Model_2_TWFE_Contemporaneous = sapply(vars_base, function(v) format_coef(model_twfe_contemp, se_twfe_contemp, v)),
  Model_3_TWFE_Lagged_Causal = sapply(vars_lag, function(v) format_coef(model_twfe_lagged, se_twfe_lagged, v))
)

write_csv(comparison_table, "reports/tables/table5_twfe_causal_comparison.csv")
cat("\n>>> HOÀN THÀNH: Đã lưu bảng so sánh suy luận nhân quả vào reports/tables/table5_twfe_causal_comparison.csv <<<\n")
