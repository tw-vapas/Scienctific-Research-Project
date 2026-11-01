# ==============================================================================
# File: scripts/02_eda_descriptive.R
# Mục tiêu: Thống kê mô tả (Descriptive Statistics) và Trực quan hóa dữ liệu (EDA)
# Phụ trách: Thành viên A (chuyển giao cho Thành viên B)
# Đầu vào: data/processed/panel_data_clean.csv
# Đầu ra: reports/tables/table1_summary_statistics.csv, reports/figures/*.png
# ==============================================================================

suppressPackageStartupMessages({
  library(readr)
  library(dplyr)
  library(tidyr)
  library(ggplot2)
  library(corrplot)
  library(scales)
})

cat(">>> BẮT ĐẦU THỐNG KÊ MÔ TẢ & EDA (GIAI ĐOẠN 1) <<<\n")

dir.create("reports/tables", showWarnings = FALSE, recursive = TRUE)
dir.create("reports/figures", showWarnings = FALSE, recursive = TRUE)

df <- read_csv("data/processed/panel_data_clean.csv", show_col_types = FALSE)

core_vars <- c("Unemployment", "GDP_growth", "GDP_pc", "Inflation", 
               "FDI", "Trade", "Female_LFPR", "Credit_private")

# 1. Bảng thống kê mô tả toàn diện
summary_table <- df %>%
  select(all_of(core_vars)) %>%
  pivot_longer(cols = everything(), names_to = "Variable", values_to = "Value") %>%
  group_by(Variable) %>%
  summarise(
    N = sum(!is.na(Value)),
    Mean = mean(Value, na.rm = TRUE),
    SD = sd(Value, na.rm = TRUE),
    Min = min(Value, na.rm = TRUE),
    Q25 = quantile(Value, 0.25, na.rm = TRUE),
    Median = median(Value, na.rm = TRUE),
    Q75 = quantile(Value, 0.75, na.rm = TRUE),
    Max = max(Value, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  mutate(across(where(is.numeric), ~ round(.x, 3)))

write_csv(summary_table, "reports/tables/table1_summary_statistics.csv")
cat("Đã lưu bảng thống kê mô tả vào reports/tables/table1_summary_statistics.csv\n")

# 2. Ma trận tương quan và biểu đồ Heatmap (Kiểm tra đa cộng tuyến sớm)
cor_data <- df %>%
  select(all_of(core_vars)) %>%
  drop_na()

cor_matrix <- cor(cor_data)
write.csv(round(cor_matrix, 3), "reports/tables/table2_correlation_matrix.csv")

png("reports/figures/fig1_correlation_heatmap.png", width = 800, height = 800, res = 120)
corrplot(cor_matrix, method = "color", type = "upper", 
         tl.col = "black", tl.srt = 45, addCoef.col = "black", 
         number.cex = 0.8, col = colorRampPalette(c("#2166ac", "#ffffff", "#b2182b"))(200),
         title = "Ma Trận Hệ Số Tương Quan Giữa Các Biến Vĩ Mô (88 LMICs)", mar = c(0,0,2,0))
dev.off()
cat("Đã lưu biểu đồ Heatmap tương quan vào reports/figures/fig1_correlation_heatmap.png\n")

# 3. Đồ thị phân tán kiểm tra Định luật Okun (Unemployment vs GDP Growth)
p_okun <- ggplot(df, aes(x = GDP_growth, y = Unemployment)) +
  geom_point(aes(color = income), alpha = 0.6, size = 2) +
  geom_smooth(method = "lm", color = "#d95f02", se = TRUE, linetype = "solid") +
  labs(
    title = "Quan Hệ Thực Nghiệm Giữa Tăng Trưởng GDP & Thất Nghiệp (Kiểm định Định luật Okun)",
    subtitle = "Mẫu bảng 88 quốc gia LMICs giai đoạn 2015 - 2025",
    x = "Tốc độ tăng trưởng GDP hàng năm (%)",
    y = "Tỷ lệ thất nghiệp (% lực lượng lao động)",
    color = "Nhóm thu nhập"
  ) +
  theme_minimal(base_size = 12) +
  theme(legend.position = "bottom")

ggsave("reports/figures/fig2_okun_scatter.png", p_okun, width = 8, height = 6, dpi = 300)

# 4. Đồ thị phân tán kiểm tra Đường cong Phillips (Unemployment vs Inflation)
p_phillips <- ggplot(df, aes(x = Inflation, y = Unemployment)) +
  geom_point(aes(color = income), alpha = 0.6, size = 2) +
  geom_smooth(method = "lm", color = "#7570b3", se = TRUE, linetype = "dashed") +
  scale_x_continuous(limits = c(-5, 40)) + # Giới hạn dải lạm phát tránh méo mó do ngoại lai siêu lạm phát
  labs(
    title = "Mối Quan Hệ Đánh Đổi Ngắn Hạn: Lạm Phát vs Thất Nghiệp (Đường cong Phillips)",
    subtitle = "Khảo sát tại các quốc gia thu nhập thấp và trung bình",
    x = "Tỷ lệ lạm phát CPI hàng năm (%)",
    y = "Tỷ lệ thất nghiệp (% lực lượng lao động)",
    color = "Nhóm thu nhập"
  ) +
  theme_minimal(base_size = 12) +
  theme(legend.position = "bottom")

ggsave("reports/figures/fig3_phillips_scatter.png", p_phillips, width = 8, height = 6, dpi = 300)

# 5. Xu hướng diễn biến thất nghiệp qua các năm (2015 - 2025)
p_trend <- df %>%
  group_by(year, income) %>%
  summarise(mean_unemp = mean(Unemployment, na.rm = TRUE), .groups = "drop") %>%
  ggplot(aes(x = year, y = mean_unemp, color = income, group = income)) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 3) +
  geom_vline(xintercept = 2020, linetype = "dotted", color = "red", linewidth = 0.8) +
  annotate("text", x = 2020.2, y = 8.5, label = "Cú sốc COVID-19", color = "red", hjust = 0, size = 3.5) +
  scale_x_continuous(breaks = 2015:2025) +
  labs(
    title = "Diễn Biến Tỷ Lệ Thất Nghiệp Trung Bình Theo Nhóm Thu Nhập (2015 - 2025)",
    subtitle = "Ghi nhận tác động của đại dịch COVID-19 và giai đoạn phục hồi",
    x = "Năm",
    y = "Tỷ lệ thất nghiệp trung bình (%)",
    color = "Nhóm thu nhập"
  ) +
  theme_minimal(base_size = 12) +
  theme(legend.position = "bottom")

ggsave("reports/figures/fig4_unemployment_trend.png", p_trend, width = 9, height = 5.5, dpi = 300)

cat(">>> HOÀN THÀNH: Đã xuất toàn bộ biểu đồ và bảng EDA <<<\n")
