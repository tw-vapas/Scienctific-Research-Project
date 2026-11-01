# Từ Điển Dữ Liệu & Hướng Dẫn Quản Lý Dữ Liệu (Data Dictionary)

## 1. Nguồn Gốc Dữ Liệu
Dữ liệu sử dụng trong nghiên cứu được trích xuất trực tiếp từ Cơ sở dữ liệu **World Development Indicators (WDI)** của Ngân hàng Thế giới (World Bank), kết hợp phân loại nhóm thu nhập và khu vực địa lý.

- **Tệp dữ liệu thô ban đầu:** `data/raw/WDI_RAW_2015_2025.csv` (2,926 quan sát, 20 trường thông tin).
- **Phạm vi thời gian:** 2015 – 2025 (11 năm liên tục).
- **Đối tượng chọn mẫu:** 88 quốc gia thuộc nhóm Thu nhập thấp và trung bình (Low- and Middle-Income Countries - LMICs).

---

## 2. Cấu Trúc Thư Mục Dữ Liệu

```
data/
├── raw/                      # Dữ liệu gốc tải về từ World Bank (Read-only, không sửa trực tiếp)
│   └── WDI_RAW_2015_2025.csv
├── processed/                # Dữ liệu bảng sau khi làm sạch, lọc 88 LMICs, xử lý missing
│   ├── panel_data_clean.csv  # Định dạng CSV tiêu chuẩn
│   └── panel_data.RData      # Định dạng binary của R chứa panel dataframe (`pdata.frame`)
└── README.md                 # Tài liệu này
```

---

## 3. Bảng Mã Biến (Codebook & Variable Dictionary)

| Tên biến trong Data | Tên biến học thuật | Định nghĩa & Thước đo (World Bank Indicator) | Đơn vị tính | Kỳ vọng dấu tương quan ($\beta$) | Lý thuyết nền tảng |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Unemployment** | $U_{it}$ *(Biến phụ thuộc)* | Tỷ lệ thất nghiệp (% tổng lực lượng lao động) theo mô hình ước lượng ILO | % | - | - |
| **GDP_growth** | $GDPG_{it}$ | Tốc độ tăng trưởng GDP hàng năm | %/năm | Âm ($-$) | Định luật Okun (Okun's Law) |
| **GDP_pc** | $GDPPC_{it}$ | GDP bình quân đầu người (theo giá hiện hành) | USD | Âm ($-$) | Trình độ phát triển kinh tế |
| **Inflation** | $INF_{it}$ | Tỷ lệ lạm phát đo lường bằng chỉ số giá tiêu dùng CPI (annual %) | % | Âm ($-$) / Dương ($+$) | Đường cong Phillips ngắn hạn / Bất ổn vĩ mô |
| **FDI** | $FDI_{it}$ | Đầu tư trực tiếp nước ngoài, dòng vốn ròng (% GDP) | % GDP | Âm ($-$) | Lý thuyết chuyển giao công nghệ & tạo việc làm |
| **Trade** | $OPEN_{it}$ | Độ mở thương mại = (Xuất khẩu + Nhập khẩu) / GDP | % GDP | Âm ($-$) | Lý thuyết thương mại quốc tế Heckscher-Ohlin |
| **Female_LFPR** | $FLFP_{it}$ | Tỷ lệ tham gia lực lượng lao động của nữ giới (% phụ nữ 15+) | % | Không xác định ($\pm$) | Cơ cấu lao động & giới tính |
| **Credit_private**| $CREDIT_{it}$ | Tín dụng trong nước cung ứng cho khu vực tư nhân (% GDP) | % GDP | Âm ($-$) | Phát triển tài chính & chiều sâu tài chính (Financial Depth) |

### Biến phân loại và định danh
- `country`: Tên quốc gia.
- `iso2c` / `iso3c`: Mã chuẩn hóa quốc tế 2 chữ cái và 3 chữ cái theo ISO.
- `year`: Năm quan sát (2015 - 2025).
- `region`: Khu vực địa lý (Sub-Saharan Africa, Latin America & Caribbean, East Asia & Pacific, South Asia, Europe & Central Asia, Middle East & North Africa).
- `income`: Phân loại thu nhập của World Bank (`Low income`, `Lower middle income`, `Upper middle income`).

---

## 4. Quy Trình Lọc Mẫu Nghiên Cứu (88 Quốc Gia LMICs)

1. **Bước 1 (Lọc nhóm thu nhập):** Loại bỏ các nhóm quốc gia thuộc `High income` và các dòng tổng hợp khu vực (`Aggregates`).
2. **Bước 2 (Kiểm tra tính liên tục):** Lựa chọn các quốc gia có dữ liệu đầy đủ liên tục trong giai đoạn 2015–2025 đối với 8 biến nghiên cứu cốt lõi.
3. **Bước 3 (Cấu trúc dữ liệu bảng):** Thiết lập cấu trúc Balanced Panel Data $N = 88$ quốc gia, $T = 11$ năm $\rightarrow$ Tổng số quan sát thực nghiệm $N \times T = 968$ quan sát.
