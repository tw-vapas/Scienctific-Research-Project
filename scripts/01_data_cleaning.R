# ==============================================================================
# File: scripts/01_data_cleaning.R
# Mục tiêu: Lọc và làm sạch dữ liệu bảng WDI cho 88 quốc gia LMICs (2015 - 2025)
# Phụ trách: Thành viên A
# Đầu vào: data/raw/WDI_RAW_2015_2025.csv
# Đầu ra: data/processed/panel_data_clean.csv, data/processed/panel_data.RData
# ==============================================================================

suppressPackageStartupMessages({
  library(stats)
  library(utils)
  library(readr)
  library(dplyr)
  library(tidyr)
  library(plm)
  library(zoo)
})

# Khai báo biến cột phục vụ Non-Standard Evaluation (NSE) tránh cảnh báo Linter
country <- income <- region <- year <- valid_core_obs <- total_years <- NULL
invisible(utils::globalVariables(c(
  "country", "income", "region", "year", "valid_core_obs", "total_years"
)))

cat(">>> BẮT ĐẦU QUY TRÌNH LÀM SẠCH DỮ LIỆU BẢNG (GIAI ĐOẠN 1) <<<\n")

# 1. Đọc dữ liệu thô
raw_path <- "data/raw/WDI_RAW_2015_2025.csv"
if (!file.exists(raw_path)) {
  stop("Lỗi: Không tìm thấy tệp dữ liệu thô tại ", raw_path)
}

df_raw <- read_csv(raw_path, show_col_types = FALSE)
cat("Tổng số quan sát ban đầu:", nrow(df_raw), "dòng,", ncol(df_raw), "cột.\n")

# 2. Định nghĩa danh sách các biến cốt lõi
core_vars <- c("Unemployment", "GDP_growth", "GDP_pc", "Inflation", 
               "FDI", "Trade", "Female_LFPR", "Credit_private")
meta_vars <- c("country", "iso2c", "iso3c", "year", "region", "income")

# 3. Lọc nhóm quốc gia LMICs (Loại High Income và Aggregates)
lmic_incomes <- c("Low income", "Lower middle income", "Upper middle income")

df_filtered <- df_raw %>%
  filter(income %in% lmic_incomes) %>%
  filter(!is.na(country) & country != "") %>%
  filter(year >= 2015 & year <= 2025)

cat("Số quan sát sau khi lọc nhóm LMICs:", nrow(df_filtered), "\n")

# 4. Kiểm tra tính liên tục của dữ liệu theo từng quốc gia
# Đếm số năm quan sát đầy đủ 8 biến cốt lõi cho mỗi quốc gia
country_summary <- df_filtered %>%
  group_by(country, income, region) %>%
  summarise(
    total_years = n_distinct(year),
    valid_core_obs = sum(stats::complete.cases(across(all_of(core_vars)))),
    .groups = "drop"
  )

cat("Số quốc gia LMICs xuất hiện trong tập dữ liệu:", nrow(country_summary), "\n")

# Chọn các quốc gia có dữ liệu đầy đủ nhất để đạt mẫu 88 LMICs
# Tiêu chí: Có đủ 11 năm và tỷ lệ khuyết tật tối thiểu
selected_countries <- country_summary %>%
  arrange(desc(valid_core_obs), desc(total_years)) %>%
  slice_head(n = 88) %>%
  pull(country)

cat("Đã khóa danh sách 88 quốc gia LMICs đại diện cho nghiên cứu.\n")

df_panel <- df_filtered %>%
  filter(country %in% selected_countries) %>%
  select(all_of(meta_vars), all_of(core_vars)) %>%
  arrange(country, year)

# 5. Kiểm tra và bổ sung nội suy tuyến tính cục bộ nếu có năm khuyết tật nhỏ lẻ
interpolate_series <- function(x) {
  if (all(is.na(x))) x else zoo::na.approx(x, na.rm = FALSE, rule = 2)
}

df_clean <- df_panel %>%
  group_by(country) %>%
  arrange(year) %>%
  mutate(across(all_of(core_vars), interpolate_series)) %>%
  ungroup()

# 6. Thiết lập và kiểm tra cấu trúc Panel Data với gói plm
pdata <- pdata.frame(df_clean, index = c("country", "year"))

cat("Kiểm tra tính cân bằng của dữ liệu bảng (is.pbalanced):\n")
print(is.pbalanced(pdata))
cat("Kích thước bảng:", pdim(pdata)$nT$n, "quốc gia x", pdim(pdata)$nT$T, "năm =", pdim(pdata)$nT$N, "quan sát.\n")

# 7. Xuất dữ liệu sạch
dir.create("data/processed", showWarnings = FALSE, recursive = TRUE)

write_csv(df_clean, "data/processed/panel_data_clean.csv")
save(df_clean, pdata, file = "data/processed/panel_data.RData")

cat(">>> HOÀN THÀNH: Đã lưu dữ liệu sạch vào data/processed/panel_data_clean.csv và panel_data.RData <<<\n")
