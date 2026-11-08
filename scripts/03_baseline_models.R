# ==============================================================================
# File: scripts/03_baseline_models.R
# Mục tiêu: Ước lượng các mô hình bảng cơ sở (Pooled OLS, FEM, REM),
#          kiểm định chọn mô hình, chẩn đoán khuyết tật và áp dụng Cluster-robust SE
# Phụ trách: Thành viên B (bàn giao nền tảng cho Thành viên C)
# Đầu vào: data/processed/panel_data.RData
# Đầu ra: reports/tables/table3_baseline_models.csv, reports/tables/table4_diagnostics.csv
# ==============================================================================

suppressPackageStartupMessages({
  library(stats)
  library(utils)
  library(readr)
  library(plm)
  library(lmtest)
  library(sandwich)
})

source("scripts/utils/export_helpers.R")

# Khai báo biến công thức hồi quy tránh cảnh báo Linter
Unemployment <- GDP_growth <- Inflation <- FDI <- Trade <- NULL
Female_LFPR <- Credit_private <- log_GDP_pc <- NULL
invisible(utils::globalVariables(c(
  "Unemployment", "GDP_growth", "Inflation", "FDI", "Trade",
  "Female_LFPR", "Credit_private", "log_GDP_pc"
)))

cat(">>> BẮT ĐẦU ƯỚC LƯỢNG MÔ HÌNH BẢNG CƠ SỞ (GIAI ĐOẠN 2) <<<\n")

data_env <- new.env()
load("data/processed/panel_data.RData", envir = data_env)
pdata <- data_env$pdata

# 1. Chuẩn bị biến: Lấy log tự nhiên của GDP_pc để chuẩn hóa phân phối
pdata$log_GDP_pc <- log(pdata$GDP_pc)

# Phương trình hồi quy cơ sở
fmla <- Unemployment ~ GDP_growth + Inflation + FDI + Trade + 
                       Female_LFPR + Credit_private + log_GDP_pc

# 2. Ước lượng 3 mô hình tĩnh cổ điển
cat("1. Đang ước lượng Pooled OLS...\n")
model_pool <- plm(fmla, data = pdata, model = "pooling")

cat("2. Đang ước lượng Fixed Effects Model (FEM - Tác động cố định quốc gia)...\n")
model_fe <- plm(fmla, data = pdata, model = "within")

cat("3. Đang ước lượng Random Effects Model (REM - Tác động ngẫu nhiên)...\n")
model_re <- plm(fmla, data = pdata, model = "random")

# 3. Các kiểm định lựa chọn mô hình chuẩn mực
cat("\n--- TIẾN HÀNH KIỂM ĐỊNH LỰA CHỌN MÔ HÌNH ---\n")

# A. Chow Test / F-test: FEM vs Pooled OLS (Kiểm tra sự tồn tại của hiệu ứng riêng lẻ quốc gia)
f_test <- pFtest(model_fe, model_pool)
cat("F-test (FEM vs Pooled OLS): p-value =", f_test$p.value, 
    ifelse(f_test$p.value < 0.05, "-> Bác bỏ Pooled OLS, chấp nhận FEM\n", "-> Chấp nhận Pooled OLS\n"))

# B. Breusch-Pagan LM Test: REM vs Pooled OLS
lm_test <- plmtest(model_pool, type = "bp")
cat("Breusch-Pagan LM Test (REM vs Pooled OLS): p-value =", lm_test$p.value, 
    ifelse(lm_test$p.value < 0.05, "-> Bác bỏ Pooled OLS, chấp nhận REM\n", "-> Chấp nhận Pooled OLS\n"))

# C. Hausman Specification Test: FEM vs REM (Kiểm tra tương quan giữa sai số riêng lẻ và biến giải thích)
hausman_test <- phtest(model_fe, model_re)
cat("Hausman Test (FEM vs REM): p-value =", hausman_test$p.value, 
    ifelse(hausman_test$p.value < 0.05, "-> Bác bỏ H0, mô hình FEM là phù hợp và nhất quán (Consistent)\n", 
           "-> Không bác bỏ H0, lựa chọn mô hình REM để tăng tính hiệu quả (Efficient)\n"))

# 4. Chẩn đoán khuyết tật mô hình (Diagnostic Tests)
cat("\n--- TIẾN HÀNH CHẨN ĐOÁN KHUYẾT TẬT TRÊN MÔ HÌNH FEM ĐƯỢC CHỌN ---\n")

# A. Kiểm tra tự tương quan (Serial correlation) bằng kiểm định Wooldridge
wool_test <- pwartest(model_fe)
cat("Wooldridge Test (Tự tương quan chuỗi): p-value =", wool_test$p.value,
    ifelse(wool_test$p.value < 0.05, "-> CẢNH BÁO: Mô hình mắc khuyết tật Tự tương quan!\n", "-> Không có tự tương quan.\n"))

# B. Kiểm tra phương sai thay đổi (Heteroskedasticity) bằng Breusch-Pagan Test
bp_test <- bptest(fmla, data = pdata, studentize = TRUE)
cat("Breusch-Pagan Test (Phương sai sai số thay đổi): p-value =", bp_test$p.value,
    ifelse(bp_test$p.value < 0.05, "-> CẢNH BÁO: Mô hình mắc khuyết tật Phương sai thay đổi!\n", "-> Phương sai đồng nhất.\n"))

# Lưu bảng kết quả chẩn đoán
diag_table <- data.frame(
  Test_Name = c("Chow F-test (FEM vs Pool)", "Breusch-Pagan LM (REM vs Pool)", 
                "Hausman Test (FEM vs REM)", "Wooldridge Test (Serial Correlation)", 
                "Breusch-Pagan Test (Heteroskedasticity)"),
  Statistic = c(f_test$statistic, lm_test$statistic, hausman_test$statistic, wool_test$statistic, bp_test$statistic),
  p_value = c(f_test$p.value, lm_test$p.value, hausman_test$p.value, wool_test$p.value, bp_test$p.value),
  Decision = c("Ưu tiên FEM", "Ưu tiên REM", "Khẳng định chọn FEM", "Mắc khuyết tật tự tương quan", "Mắc khuyết tật phương sai thay đổi")
)
write_csv(diag_table, "reports/tables/table4_diagnostics.csv")

# 5. Khắc phục khuyết tật: Ước lượng Sai số chuẩn vững theo cụm (Cluster-robust SE cấp quốc gia)
cat("\n--- KHẮC PHỤC KHUYẾT TẬT: ÁP DỤNG CLUSTER-ROBUST SE (ARELLANO / HUBER-WHITE) ---\n")
robust_vcov <- vcovHC(model_fe, type = "HC1", cluster = "group")
fe_robust <- coeftest(model_fe, vcov. = robust_vcov)
print(fe_robust)

# 6. Tổng hợp bảng so sánh các mô hình cơ sở
res_pool <- summary(model_pool)$coefficients
res_fe_raw <- summary(model_fe)$coefficients
res_re <- summary(model_re)$coefficients

vars <- rownames(res_fe_raw)

comparison_df <- data.frame(
  Variable = vars,
  Pooled_OLS = paste0(round(res_pool[vars, 1], 4), " (", round(res_pool[vars, 2], 4), ")"),
  FEM_Standard_SE = paste0(round(res_fe_raw[vars, 1], 4), " (", round(res_fe_raw[vars, 2], 4), ")"),
  FEM_Cluster_Robust_SE = paste0(round(fe_robust[vars, 1], 4), " (", round(fe_robust[vars, 2], 4), ")", 
                                 ifelse(fe_robust[vars, 4] < 0.01, "***", 
                                 ifelse(fe_robust[vars, 4] < 0.05, "**", 
                                 ifelse(fe_robust[vars, 4] < 0.1, "*", "")))),
  REM = paste0(round(res_re[vars, 1], 4), " (", round(res_re[vars, 2], 4), ")")
)

write_csv(comparison_df, "reports/tables/table3_baseline_models.csv")
cat("\n>>> HOÀN THÀNH: Đã lưu bảng so sánh mô hình cơ sở vào reports/tables/table3_baseline_models.csv <<<\n")
