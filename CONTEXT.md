# BỐI CẢNH DỰ ÁN NGHIÊN CỨU KHOA HỌC (CONTEXT.MD)

> **Tên đề tài chính thức:** Phân tích các yếu tố kinh tế vĩ mô liên quan đến tỷ lệ thất nghiệp tại các quốc gia thu nhập thấp và trung bình: Tiếp cận từ thực nghiệm tương quan và định hướng suy luận nhân quả.  
> **Cấp quản lý:** Đề tài Nghiên cứu Khoa học Sinh viên (NCKH 2026 – 2027)  
> **Khung thời gian thực hiện:** 19/10/2026 – 10/01/2027 (12 tuần)  
> **Quy mô nhân sự:** 03 thành viên phối hợp liên chức năng  
> **Cơ sở dữ liệu trung tâm:** World Bank – World Development Indicators (WDI), giai đoạn 2015 – 2025

---

## 1. Tính Cấp Thiết & Lý Do Nghiên Cứu

### 1.1. Bối cảnh thực tiễn kinh tế vĩ mô toàn cầu
Thất nghiệp là một trong những chỉ báo nhạy cảm và quan trọng nhất đối với sức khỏe của một nền kinh tế. Đối với các quốc gia thu nhập thấp và trung bình (Low- and Middle-Income Countries - LMICs), vấn đề việc làm càng trở nên nan giải và phức tạp do:
1. **Quy mô khu vực kinh tế phi chính thức khổng lồ:** Phần lớn lực lượng lao động hoạt động trong điều kiện bấp bênh, năng suất thấp và không có hợp đồng lao động ràng buộc.
2. **Lưới an sinh xã hội mỏng manh:** Khi mất việc làm hoặc thu nhập giảm, người lao động dễ dàng rơi vào bẫy nghèo đói.
3. **Hiện tượng "Tăng trưởng không tạo ra việc làm" (Jobless Growth):** Tăng trưởng GDP tăng cao nhưng số lượng việc làm chất lượng tạo ra lại không tương xứng do thâm dụng vốn hoặc cơ cấu ngành méo mó.
4. **Các cú sốc ngoại sinh toàn cầu liên hoàn (2015 – 2025):** Giai đoạn này chứng kiến căng thẳng thương mại địa chính trị, tái cấu trúc chuỗi cung ứng toàn cầu, cú sốc đóng cửa kinh tế lịch sử do đại dịch COVID-19 và làn sóng lạm phát kỷ lục buộc các ngân hàng trung ương thắt chặt chính sách tiền tệ.

### 1.2. Khoảng trống nghiên cứu & Đóng góp về mặt phương pháp luận
- **Giới hạn của các nghiên cứu trước đây:** Phần lớn các nghiên cứu kinh tế lượng thực nghiệm truyền thống tại các nước đang phát triển dừng lại ở các mô hình bảng tĩnh cổ điển (Pooled OLS, Fixed Effects - FE, Random Effects - RE). Các mô hình này chỉ phản ánh mối tương quan thống kê đơn thuần (*correlation*).
- **Vấn đề Nội sinh (Endogeneity):**
  - *Tác động hai chiều (Simultaneity / Reverse Causality):* Tăng trưởng kinh tế, đầu tư và tín dụng hỗ trợ tạo việc làm làm giảm thất nghiệp; tuy nhiên, tỷ lệ thất nghiệp cao kéo giảm tổng cầu, gây bất ổn tiêu dùng và làm suy giảm tốc độ tăng trưởng kinh tế.
  - *Biến trễ và tính dai dẳng (Hysteresis / Persistence):* Thất nghiệp kỳ hiện tại phụ thuộc chặt chẽ vào tình trạng việc làm và kỹ năng lao động của kỳ trước.
  - *Yếu tố nhiễu không quan sát được (Unobserved Confounders):* Đặc thù thể chế, văn hóa lao động và các cú sốc vĩ mô toàn cầu qua các năm.
- **Giải pháp của đề tài:** Kết hợp phân tích thực nghiệm tương quan chuẩn mực (Pooled OLS, FEM, REM với kiểm định chọn mô hình và kỹ thuật sửa sai số chuẩn vững theo cụm - Cluster-robust SE) và **bước đầu định hướng suy luận nhân quả** thông qua mô hình Hai chiều Tác động cố định (Two-Way Fixed Effects - TWFE) kết hợp biến trễ ($t-1$) và phân tích tính không đồng nhất giữa các phân nhóm quốc gia (Sub-sample Analysis: Low Income vs Middle Income).

---

## 2. Mục Tiêu & Câu Hỏi Nghiên Cứu

### 2.1. Mục tiêu nghiên cứu
1. **Mục tiêu 1:** Đo lường mức độ và chiều hướng tương quan giữa hệ thống 8 chỉ báo vĩ mô/tài chính then chốt với tỷ lệ thất nghiệp trên mẫu bảng 88 quốc gia LMICs giai đoạn 2015–2025.
2. **Mục tiêu 2:** Thực hiện đầy đủ quy trình chẩn đoán khuyết tật mô hình bảng (đa cộng tuyến, phương sai thay đổi, tự tương quan chuỗi) và áp dụng kỹ thuật hiệu chỉnh sai số chuẩn vững theo cụm cấp quốc gia (*Cluster-robust Standard Errors*).
3. **Mục tiêu 3:** Tiếp cận định hướng suy luận nhân quả bằng mô hình TWFE (kiểm soát đặc thù bất biến theo thời gian của từng quốc gia và các cú sốc chung theo năm như COVID-19) kết hợp độ trễ 1 kỳ của biến giải thích ($X_{i, t-1}$) nhằm giảm thiểu sai lệch tác động ngược.
4. **Mục tiêu 4:** Phân tích tính không đồng nhất (Sub-sample Analysis) giữa 13 quốc gia thu nhập thấp (*Low-income*) và các quốc gia thu nhập trung bình (*Middle-income*) để nhận diện đặc thù cấu trúc.
5. **Mục tiêu 5:** Đề xuất các hàm ý chính sách vĩ mô thực tiễn cho các nhà hoạch định chính sách tại các nền kinh tế đang phát triển (bao gồm Việt Nam).

### 2.2. Các câu hỏi nghiên cứu cốt lõi
1. Tăng trưởng GDP có thực sự làm giảm tỷ lệ thất nghiệp tại các quốc gia LMICs trong giai đoạn 2015–2025 hay nền kinh tế đang rơi vào nghịch lý tăng trưởng không tạo việc làm (Định luật Okun có đúng không)?
2. Mối quan hệ giữa lạm phát và thất nghiệp tại các nước LMICs thể hiện sự đánh đổi ngắn hạn (Đường cong Phillips) hay tương quan đồng biến do bất ổn vĩ mô kéo dài?
3. Dòng vốn FDI ròng và độ mở thương mại quốc tế đóng vai trò hỗ trợ tạo việc làm mới hay chèn ép khu vực sản xuất nội địa?
4. Tiếp cận tín dụng tư nhân và tỷ lệ tham gia của lao động nữ tác động như thế nào đến tỷ lệ thất nghiệp?
5. Khi kiểm soát các cú sốc năm và nội sinh bằng biến trễ TWFE, các hệ số tương quan có duy trì tính bền vững không?
6. Cơ chế tác động này có sự khác biệt bản chất nào giữa nhóm nước thu nhập thấp và nhóm nước thu nhập trung bình?

---

## 3. Khung Khái Niệm & Giả Thuyết Nghiên Cứu

```
+---------------------------------------------------------------------------------+
|                                CÁC YẾU TỐ VĨ MÔ & TÀI CHÍNH                      |
|                                                                                 |
|  [Tăng trưởng GDP] ----------------(-) Okun's Law ------------+                 |
|  [GDP bình quân đầu người] -------(-) Trình độ phát triển ----|                 |
|  [Lạm phát (CPI)] ----------------(+/-) Phillips / Bất ổn ----|                 |
|  [Dòng vốn FDI ròng] -------------(-) Chuyển giao công nghệ --+---> [TỶ LỆ       |
|  [Độ mở thương mại] --------------(-) Hội nhập Heckscher-Ohlin|     THẤT NGHIỆP] |
|  [Tín dụng khu vực tư nhân] ------(-) Chiều sâu tài chính ----|     (Unemployment|
|  [Tỷ lệ lao động nữ (FLFP)] ------(+/-) Cấu trúc việc làm ----+                  |
|                                                                                 |
|  KIỂM SOÁT BẰNG TWFE & BIẾN TRỄ:                                               |
|  * Cố định quốc gia (alpha_i): Văn hóa, thể chế địa lý                          |
|  * Cố định năm (lambda_t): Cú sốc COVID-19, lạm phát toàn cầu                   |
|  * Biến giải thích trễ (X_{i, t-1}): Xử lý tác động ngược                       |
+---------------------------------------------------------------------------------+
```

- **H1 (Định luật Okun):** Tốc độ tăng trưởng GDP có mối quan hệ nghịch biến đáng kể với tỷ lệ thất nghiệp.
- **H2 (Đường cong Phillips / Bất ổn vĩ mô):** Trong ngắn hạn, lạm phát có thể có tương quan nghịch biến (đánh đổi Phillips), nhưng nếu vượt ngưỡng bất ổn, lạm phát làm tăng chi phí doanh nghiệp và gia tăng thất nghiệp.
- **H3 (Đầu tư FDI & Hội nhập quốc tế):** FDI ròng và Độ mở thương mại có mối quan hệ nghịch biến với tỷ lệ thất nghiệp nhờ hiệu ứng mở rộng quy mô sản xuất và gia nhập chuỗi giá trị.
- **H4 (Tín dụng tư nhân):** Chiều sâu tài chính hỗ trợ vốn lưu động cho doanh nghiệp tư nhân, giúp mở rộng việc làm (tương quan nghịch biến).
- **H5 (Tính không đồng nhất):** Tác động của các yếu tố vĩ mô tại nhóm quốc gia thu nhập thấp mờ nhạt hơn hoặc khác biệt so với nhóm quốc gia thu nhập trung bình do tỷ trọng phi chính thức quá cao.

---

## 4. Dữ Liệu & Phạm Vi Nghiên Cứu

- **Nguồn dữ liệu:** World Bank - World Development Indicators (WDI).
- **Số lượng quốc gia:** 88 quốc gia LMICs được chọn lọc kỹ lưỡng, đảm bảo tính liên tục (Balanced Panel).
  - *Thu nhập thấp (Low Income):* ~13 quốc gia.
  - *Thu nhập trung bình thấp & trung bình cao (Lower-middle & Upper-middle):* ~75 quốc gia.
- **Chuỗi thời gian:** 2015 – 2025 (11 năm, bao quát cả trước, trong và sau đại dịch COVID-19).
- **Tổng số quan sát:** $88 \times 11 = 968$ quan sát.

---

## 5. Quy Trình Kinh Tế Lượng Thực Nghiệm (15 Bước Chuẩn Mực)

Dự án tuân thủ nghiêm ngặt lộ trình 15 bước (được ghi chép trực quan trong *Nhật ký thánh Nô*):

```
[Thu thập dữ liệu WDI thô]
           │
           ▼
[Làm sạch & Khóa mẫu 88 LMICs (2015-2025)]
           │
           ▼
[Thống kê mô tả (Mean, SD, Min, Max)]
           │
           ▼
[Phân tích tương quan & Kiểm tra Đa cộng tuyến (VIF, Heatmap)]
           │
           ▼
[Ước lượng 3 mô hình tĩnh: Pooled OLS, FEM (Entity), REM]
           │
           ▼
[Kiểm định F-test (Poolability) & Breusch-Pagan LM]
           │
           ▼
[Kiểm định Hausman Specification Test (Lựa chọn FEM vs REM)]
           │
           ▼
[Chẩn đoán khuyết tật: Breusch-Pagan / Wald (Phương sai thay đổi) & Wooldridge (Tự tương quan)]
           │
           ▼
[Khắc phục khuyết tật: Ước lượng với Cluster-robust Standard Errors (Arellano / Huber-White)]
           │
           ▼
[Bàn luận vấn đề Nội sinh & Tác động hai chiều]
           │
           ▼
[Xây dựng mô hình TWFE (Two-Way Fixed Effects): Cố định quốc gia + Cố định năm]
           │
           ▼
[Đưa biến trễ 1 kỳ X_{i, t-1} vào mô hình TWFE để giải quyết độ trễ chính sách & tác động ngược]
           │
           ▼
[Sub-sample Analysis: Chạy riêng biệt Low-income (13 nước) vs Middle-income (75 nước)]
           │
           ▼
[Đối chiếu kết quả, Kiểm định độ bền vững (Robustness Checks)]
           │
           ▼
[Hàm ý chính sách & Viết báo cáo hoàn thiện 5 Chương]
```

---

## 6. Phân Công Trách Nhiệm Nhóm Nghiên Cứu (3 Thành Viên)

| Thành viên | Trách nhiệm chuyên môn chính | Phụ trách chương báo cáo | Điểm chạm phối hợp chính |
| :--- | :--- | :--- | :--- |
| **Thành viên A** | **Dữ liệu, EDA & Cơ sở Lý thuyết:** Thu thập WDI, lọc 88 LMICs, làm sạch bảng dữ liệu, kiểm tra tính cân bằng, vẽ đồ thị phân tán Okun/Phillips, Heatmap tương quan, kiểm tra VIF. | Chương 1 (Mở đầu), Chương 2 (Tổng quan lý thuyết), Phần Dữ liệu Chương 3 | Bàn giao file dữ liệu sạch `panel_data_clean.csv` và kết quả ma trận tương quan cho B vào cuối Tuần 3 (08/11/2026). |
| **Thành viên B** | **Mô hình cơ sở & Chẩn đoán khuyết tật:** Chạy Pooled OLS, FEM, REM; chạy kiểm định F, LM, Hausman; kiểm tra phương sai thay đổi & tự tương quan (Wooldridge test); khắc phục bằng Cluster-robust Standard Errors. | Phần Phương pháp nghiên cứu cơ sở (Chương 3), Phần Kết quả mô hình cơ sở (Chương 4) | Bàn giao mô hình chuẩn và hàm Cluster-robust SE cho C vào cuối Tuần 6 (29/11/2026). |
| **Thành viên C** | **Suy luận nhân quả, Phân tích phân nhóm & Chính sách:** Xây dựng mô hình TWFE (kiểm soát cú sốc năm/COVID-19), tạo biến trễ $X_{i, t-1}$, thực hiện Sub-sample Analysis (Low vs Middle Income), đánh giá cơ chế tác động. | Phần Phương pháp TWFE biến trễ (Chương 3), Phân tích kết quả nâng cao (Chương 4), Toàn bộ Chương 5 (Kết luận & Kiến nghị) | Tiếp nhận code từ B, thống nhất cấu trúc bảng so sánh mô hình cơ sở vs TWFE; cùng A đối chiếu lý thuyết để viết hàm ý chính sách. |

---

## 7. Cấu Trúc Báo Cáo Nghiên Cứu (5 Chương Chuẩn Mực)

- **Chương 1: Mở đầu** (Bối cảnh, tính cấp thiết, mục tiêu, đối tượng, phạm vi không gian/thời gian, đóng góp của đề tài).
- **Chương 2: Cơ sở lý thuyết và Tổng quan nghiên cứu** (Định luật Okun, Đường cong Phillips, Lý thuyết Heckscher-Ohlin, Lý thuyết dòng vốn FDI, Cơ sở kinh tế học về thị trường lao động phi chính thức tại LMICs).
- **Chương 3: Phương pháp nghiên cứu và Dữ liệu** (Nguồn gốc dữ liệu 88 LMICs, định nghĩa 8 biến số, phương pháp Pooled OLS, FEM, REM, TWFE biến trễ, kiểm định khuyết tật và sai số chuẩn vững).
- **Chương 4: Kết quả thực nghiệm và Thảo luận** (Thống kê mô tả, ma trận tương quan, kết quả hồi quy mô hình cơ sở, kiểm định khuyết tật, kết quả mô hình TWFE biến trễ, kết quả phân nhóm Low vs Middle income, thảo luận cơ chế).
- **Chương 5: Kết luận và Hàm ý chính sách** (Tóm tắt phát hiện chính, khuyến nghị chính sách kinh tế vĩ mô cho các nước đang phát triển và Việt Nam, hạn chế của đề tài và hướng phát triển tiếp theo).

---

## 8. Tài Liệu Tham Khảo Nền Tảng

1. **World Bank (2026):** *World Development Indicators (WDI) Database*.
2. **Wooldridge, J. M. (2010):** *Econometric Analysis of Cross Section and Panel Data*. MIT Press.
3. **Stock, J. H., & Watson, M. W. (2020):** *Introduction to Econometrics*. Pearson.
4. **Okun, A. M. (1962):** *Potential GNP: Its Measurement and Significance*. American Statistical Association.
5. **Phillips, A. W. (1958):** *The Relation Between Unemployment and the Rate of Change of Money Wage Rates in the United Kingdom, 1861–1957*. Economica.
6. **Angrist, J. D., & Pischke, J.-S. (2009):** *Mostly Harmless Econometrics: An Empiricist's Companion*. Princeton University Press.
