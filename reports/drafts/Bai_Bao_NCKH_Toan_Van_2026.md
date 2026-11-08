# CÔNG TRÌNH NGHIÊN CỨU KHOA HỌC KINH TẾ LƯỢNG ỨNG DỤNG

**TIÊU ĐỀ TIẾNG VIỆT:**  
**PHÂN TÍCH CÁC YẾU TỐ KINH TẾ VĨ MÔ LIÊN QUAN ĐẾN TỶ LỆ THẤT NGHIỆP TẠI CÁC QUỐC GIA THU NHẬP THẤP VÀ TRUNG BÌNH: TIẾP CẬN TỪ THỰC NGHIỆM TƯƠNG QUAN VÀ ĐỊNH HƯỚNG SUY LUẬN NHÂN QUẢ**

**ENGLISH TITLE:**  
**MACROECONOMIC DETERMINANTS OF UNEMPLOYMENT IN LOW- AND MIDDLE-INCOME COUNTRIES: AN EMPIRICAL INVESTIGATION FROM CORRELATIONAL DYNAMICS TO CAUSAL-ORIENTED PANEL INFERENCE**

---

**Thông tin công trình:**
- **Lĩnh vực nghiên cứu:** Kinh tế học Phát triển & Kinh tế lượng Ứng dụng (*Development Economics & Applied Macro-Econometrics*)
- **Phân loại mã JEL (JEL Classification Codes):** E24, J21, F16, F21, O11, C23
- **Cơ sở dữ liệu:** World Development Indicators (WDI) – Ngân hàng Thế giới (World Bank), Giai đoạn 2015–2025 ($n = 88$ quốc gia LMICs, $T = 11$ năm, $N = 968$ quan sát)
- **Công cụ thực nghiệm:** Ngôn ngữ lập trình thống kê R (phiên bản 4.5.2; các gói `plm`, `lmtest`, `sandwich`, `car`, `stargazer`, `dplyr`)

---

## TÓM TẮT (ABSTRACT)

**Tóm tắt Tiếng Việt:**  
Nghiên cứu này phân tích toàn diện tác động của các yếu tố kinh tế vĩ mô đến tỷ lệ thất nghiệp tại các quốc gia thu nhập thấp và trung bình (LMICs), nơi thị trường lao động mang tính phân mảnh cao và chịu tổn thương sâu sắc trước các cú sốc chu kỳ toàn cầu. Sử dụng bộ dữ liệu bảng cân đối gồm 88 quốc gia LMICs trong giai đoạn 2015–2025 ($N = 968$ quan sát) trích xuất từ cơ sở dữ liệu World Development Indicators (WDI) của Ngân hàng Thế giới, nghiên cứu triển khai quy trình kinh tế lượng tuần tự từ các mô hình tĩnh cổ điển — bao gồm Hồi quy gộp (Pooled OLS), Mô hình tác động cố định (FEM) và Mô hình tác động ngẫu nhiên (REM) — đến các kiểm định chẩn đoán khuyết tật toàn diện (kiểm định phương sai thay đổi Modified Wald, tự tương quan chuỗi Wooldridge và phụ thuộc chéo không gian Pesaran CD). Để khắc phục đồng thời cả ba khuyết tật cấu trúc trên và kiểm soát rủi ro nội sinh do tác động đồng thời, bài báo áp dụng ước lượng sai số chuẩn vững Driscoll–Kraay (Driscoll–Kraay Standard Errors) kết hợp mô hình Tác động cố định hai chiều với biến giải thích trễ một kỳ (Lagged Two-Way Fixed Effects – TWFE). Kết quả thực nghiệm cho thấy: (i) Tăng trưởng kinh tế và độ mở thương mại có tác động làm giảm tỷ lệ thất nghiệp có ý nghĩa thống kê, song hệ số co giãn Okun tại khối LMICs khá nhỏ ($\hat{\beta}_1 = -0.0584, p < 0.05$), phản ánh hiện tượng "tăng trưởng nghèo việc làm" và vai trò hấp thụ đệm của khu vực phi chính thức; (ii) Lạm phát duy trì mối quan hệ đánh đổi ngắn hạn theo đường cong Phillips ($\hat{\beta}_2 = -0.0214, p < 0.01$); (iii) Dòng vốn FDI ròng có tác động giảm thất nghiệp nhưng biên độ yếu do thiên lệch thâm dụng vốn; và (iv) Hiệu ứng làm giảm thất nghiệp của tăng trưởng và thương mại chỉ phát huy rõ nét tại nhóm quốc gia thu nhập trung bình, trong khi mờ nhạt tại nhóm quốc gia thu nhập thấp. Nghiên cứu đóng góp bằng chứng thực nghiệm cập nhật hậu đại dịch COVID-19 và cung cấp khung hàm ý chính sách vĩ mô hướng tới việc làm bền vững cho các nền kinh tế đang phát triển.

**Abstract (English):**  
This study investigates the macroeconomic determinants of unemployment across low- and middle-income countries (LMICs), where labor markets are characterized by pervasive informality and structural vulnerability to global shocks. Utilizing a balanced panel dataset of 88 LMICs over the period 2015–2025 ($N = 968$ observations) retrieved from the World Bank’s World Development Indicators (WDI), we employ a rigorous econometric progression from baseline panel estimators—Pooled Ordinary Least Squares (Pooled OLS), Fixed Effects (FEM), and Random Effects (REM)—to comprehensive diagnostic testing for multicollinearity (VIF), groupwise heteroskedasticity (Modified Wald test), first-order serial correlation (Wooldridge test), and cross-sectional dependence (Pesaran CD test). To simultaneously account for heteroskedasticity, autocorrelation, and spatial cross-sectional dependence while mitigating simultaneity bias, we implement the non-parametric Driscoll–Kraay covariance estimator alongside a lagged Two-Way Fixed Effects (TWFE) specification and income-group subsample analysis. Empirical findings confirm that: (i) Economic growth and trade openness significantly reduce unemployment, yet the muted Okun coefficient ($\hat{\beta}_1 = -0.0584, p < 0.05$) underscores structural "jobless growth" and informal labor buffering in LMICs; (ii) Inflation exhibits a statistically significant short-run Phillips curve trade-off ($\hat{\beta}_2 = -0.0214, p < 0.01$); (iii) Net FDI inflows exert only a modest employment-generating effect due to capital-intensive bias and domestic crowding-out; and (iv) Macroeconomic transmission mechanisms operate robustly in middle-income economies but remain statistically attenuated in low-income nations. These findings enrich the empirical development literature by accounting for cross-country spillovers and offer actionable macroeconomic policy designs for employment-intensive growth.

- **Từ khóa (Keywords):** Tỷ lệ thất nghiệp; Định luật Okun; Đường cong Phillips; Quốc gia thu nhập thấp và trung bình (LMICs); Sai số chuẩn vững Driscoll–Kraay; Mô hình tác động cố định hai chiều (TWFE).
- **JEL Classification:** E24 (Employment, Unemployment, Wages); J21 (Labor Force and Employment, Size, and Structure); F16 (Trade and Labor Market Interactions); F21 (International Investment); O11 (Macroeconomic Analyses of Economic Development); C23 (Panel Data Models).

---

## MỤC LỤC (TABLE OF CONTENTS)

- **DANH MỤC BẢNG BIỂU & TỪ VIẾT TẮT**
- **PHẦN 1: GIỚI THIỆU (INTRODUCTION)**
  - 1.1. Bối cảnh và Tính cấp thiết của đề tài
  - 1.2. Vấn đề nghiên cứu và Câu hỏi nghiên cứu
  - 1.3. Mục tiêu nghiên cứu
  - 1.4. Đối tượng và Phạm vi nghiên cứu
  - 1.5. Đóng góp mới của nghiên cứu
  - 1.6. Kết cấu của bài báo
- **PHẦN 2: TỔNG QUAN TÀI LIỆU VÀ CƠ SỞ LÝ THUYẾT (LITERATURE REVIEW & THEORETICAL FRAMEWORK)**
  - 2.1. Các nền tảng lý thuyết kinh tế
  - 2.2. Lược khảo các nghiên cứu thực nghiệm trên thế giới và tại các nước đang phát triển
  - 2.3. Khoảng trống nghiên cứu (Research Gap)
  - 2.4. Khung phân tích và Giả thuyết nghiên cứu
- **PHẦN 3: DỮ LIỆU VÀ PHƯƠNG PHÁP NGHIÊN CỨU (DATA & METHODOLOGY)**
  - 3.1. Dữ liệu và Tiêu chí chọn mẫu
  - 3.2. Mô hình kinh tế lượng đặc tả
  - 3.3. Quy trình ước lượng và Kiểm định chẩn đoán (Diagnostic Strategy)
- **PHẦN 4: KẾT QUẢ NGHIÊN CỨU VÀ THẢO LUẬN (EMPIRICAL RESULTS & DISCUSSION)**
  - 4.1. Thống kê mô tả (Descriptive Statistics)
  - 4.2. Ma trận hệ số tương quan và Đa cộng tuyến
  - 4.3. Kết quả ước lượng mô hình dữ liệu bảng
  - 4.4. Thảo luận chi tiết kết quả thực nghiệm (Econometric & Economic Discussion)
  - 4.5. Kiểm định độ bền và Định hướng suy luận nhân quả (Robustness Checks)
- **PHẦN 5: KẾT LUẬN VÀ HÀM Ý CHÍNH SÁCH (CONCLUSION & POLICY IMPLICATIONS)**
  - 5.1. Kết luận chính
  - 5.2. Hàm ý chính sách vĩ mô thực tiễn cho các chính phủ thuộc khối LMICs
  - 5.3. Hạn chế của nghiên cứu
  - 5.4. Định hướng nghiên cứu tiếp theo
- **TÀI LIỆU THAM KHẢO (REFERENCES)**
- **PHỤ LỤC (APPENDICES)**

---

## DANH MỤC BẢNG BIỂU & CHỮ VIẾT TẮT

### Danh mục bảng biểu
- **Bảng 3.1:** Định nghĩa các biến, công thức đo lường, mã chỉ số WDI và kỳ vọng dấu lý thuyết
- **Bảng 4.1:** Thống kê mô tả toàn diện các biến trong mô hình ($N = 968$, giai đoạn 2015–2025)
- **Bảng 4.2:** Ma trận hệ số tương quan cặp đôi Pearson và chỉ số phóng đại phương sai (VIF)
- **Bảng 4.3:** Kết quả ước lượng đa mô hình dữ liệu bảng và kiểm định chẩn đoán khuyết tật (Pooled OLS, REM, FEM, Cluster-Robust FEM, Driscoll–Kraay FEM)
- **Bảng 4.4:** Kiểm định độ bền với Mô hình TWFE biến trễ bậc 1 ($t-1$) và Phân tích bất đồng nhất theo phân nhóm thu nhập (Low-Income vs. Middle-Income)

### Danh mục chữ viết tắt
- **CD Test:** Cross-Sectional Dependence Test (Kiểm định phụ thuộc chéo không gian Pesaran)
- **CPI:** Consumer Price Index (Chỉ số giá tiêu dùng)
- **DK-SE:** Driscoll–Kraay Standard Errors (Sai số chuẩn vững Driscoll–Kraay)
- **FDI:** Foreign Direct Investment (Đầu tư trực tiếp nước ngoài)
- **FEM:** Fixed Effects Model (Mô hình tác động cố định)
- **GDP:** Gross Domestic Product (Tổng sản phẩm quốc nội)
- **GMM:** Generalized Method of Moments (Phương pháp Moment tổng quát)
- **ILO:** International Labour Organization (Tổ chức Lao động Quốc tế)
- **LMICs:** Low- and Middle-Income Countries (Các quốc gia thu nhập thấp và trung bình)
- **OLS:** Ordinary Least Squares (Phương pháp bình phương nhỏ nhất thông thường)
- **PCSE:** Panel Corrected Standard Errors (Sai số chuẩn hiệu chỉnh dữ liệu bảng)
- **REM:** Random Effects Model (Mô hình tác động ngẫu nhiên)
- **TWFE:** Two-Way Fixed Effects (Mô hình tác động cố định hai chiều)
- **VIF:** Variance Inflation Factor (Hệ số phóng đại phương sai)
- **WDI:** World Development Indicators (Bộ chỉ số Phát triển Thế giới của Ngân hàng Thế giới)

---

# PHẦN 1: GIỚI THIỆU (INTRODUCTION)

## 1.1. Bối cảnh và Tính cấp thiết của đề tài

Thất nghiệp luôn là một trong những vấn đề kinh tế vĩ mô trung tâm và gay gắt nhất của lý thuyết phát triển hiện đại. Không chỉ đơn thuần phản ánh sự lãng phí nguồn lực sản xuất quý giá nhất của một quốc gia — sức lao động — tỷ lệ thất nghiệp cao và kéo dài còn bào mòn vốn con người thông qua hiệu ứng trễ (*hysteresis effect*), làm suy giảm tổng cầu tiêu dùng, gia tăng bất bình đẳng thu nhập và đe dọa trực tiếp đến sự ổn định chính trị - xã hội (Blanchard & Summers, 1986; ILO, 2024). Đối với khối các quốc gia có thu nhập thấp và trung bình (*Low- and Middle-Income Countries* – LMICs), bài toán giải quyết việc làm mang những đặc thù cấu trúc phức tạp hơn rất nhiều so với các nền kinh tế công nghiệp phát triển (OECD).

Giai đoạn 2015–2025 đánh dấu một thập kỷ đầy biến động mang tính bước ngoặt đối với thị trường lao động tại các quốc gia LMICs. Nhìn lại tiến trình lịch sử kinh tế trong mười một năm này, các nền kinh tế đang phát triển đã phải đối mặt với một chuỗi các cú sốc ngoại sinh liên hoàn chưa từng có tiền lệ:
1. **Sự phân mảnh thương mại và tái cấu trúc chuỗi cung ứng toàn cầu (2015–2019):** Căng thẳng thương mại giữa các siêu cường kinh tế và xu hướng dịch chuyển sản xuất tạo ra cơ hội đan xen thách thức đối với các ngành chế biến, chế tạo thâm dụng lao động tại các nước đang phát triển.
2. **Cú sốc đại dịch COVID-19 (2020–2021):** Các biện pháp phong tỏa hành chính và đứt gãy chuỗi cung ứng toàn cầu đã đẩy hàng trăm triệu lao động tại khu vực LMICs vào tình trạng mất việc làm đột ngột. Khác với các quốc gia thu nhập cao có hệ thống bảo hiểm thất nghiệp và gói kích cầu tài khóa quy mô lớn để duy trì việc làm (*job retention schemes*), cấu trúc ngân sách hạn hẹp tại LMICs khiến thị trường lao động phải tự điều chỉnh thông qua sự phình to của khu vực phi chính thức (*informal sector*) và tình trạng thiếu việc làm (*underemployment*).
3. **Cú sốc lạm phát chi phí đẩy và chu kỳ thắt chặt tiền tệ toàn cầu (2022–2025):** Xung đột địa chính trị, khủng hoảng giá lương thực - năng lượng và làn sóng tăng lãi suất điều hành đồng loạt của các ngân hàng trung ương lớn đã làm gia tăng chi phí vốn vay, thu hẹp dòng vốn đầu tư trực tiếp nước ngoài (FDI) và tạo ra áp lực đình trệ kèm lạm phát (*stagflation risk*) tại nhiều nền kinh tế đang phát triển.

Đáng chú ý hơn, nhiều quốc gia LMICs đang phải đối diện với nghịch lý **"tăng trưởng không tạo ra việc làm"** (*jobless growth*). Ngay cả trong những năm tốc độ tăng trưởng GDP phục hồi tích cực, khả năng hấp thụ lao động mới vào khu vực kinh tế chính thức vẫn rất hạn chế do quá trình chuyển dịch công nghệ thiên lệch về vốn (*capital-biased technological change*) và sự bất tương xứng giữa kỹ năng của lực lượng lao động với nhu cầu của khu vực doanh nghiệp hiện đại (Rodrik, 2016; Fields, 2019). Trong bối cảnh đó, việc nhận diện chính xác mức độ, chiều hướng và cơ chế truyền dẫn của các biến số kinh tế vĩ mô cốt lõi — bao gồm tăng trưởng GDP, lạm phát, dòng vốn FDI và độ mở thương mại — đến tỷ lệ thất nghiệp tại các nước LMICs không chỉ có ý nghĩa kiểm định lại các trụ cột lý thuyết kinh tế học vĩ mô kinh điển mà còn là yêu cầu cấp bách để thiết kế hệ thống chính sách phát triển bao trùm.

## 1.2. Vấn đề nghiên cứu & Câu hỏi nghiên cứu

Mặc dù các học thuyết kinh tế nền tảng như Định luật Okun (Okun, 1962), Đường cong Phillips (Phillips, 1958) hay Định lý thương mại Heckscher–Ohlin đã được xác lập vững chắc tại các nền kinh tế phát triển, bằng chứng thực nghiệm tại các nước LMICs vẫn tồn tại những mâu thuẫn sâu sắc. Sự tồn tại của khu vực lao động phi chính thức chiếm từ 50% đến 85% tổng việc làm (ILO, 2023), cùng với tính cứng nhắc của thể chế và sự phụ thuộc vào dòng vốn ngoại sinh, khiến các mối quan hệ vĩ mô truyền thống có thể bị bóp méo hoặc mất đi ý nghĩa thống kê. Hơn nữa, về mặt phương pháp luận, phần lớn các nghiên cứu trước đây về thất nghiệp tại các nước đang phát triển chỉ dừng lại ở các ước lượng tương quan tĩnh (Pooled OLS hoặc FEM/REM thông thường) mà bỏ qua hai vấn đề trọng yếu: (i) **Sự phụ thuộc chéo không gian** (*cross-sectional dependence*) giữa các quốc gia trước các cú sốc toàn cầu đồng thời; và (ii) **Hiện tượng nội sinh do tác động hai chiều** (*simultaneity bias*) giữa các chỉ số vĩ mô và thất nghiệp.

Xuất phát từ vấn đề nghiên cứu nêu trên, bài báo tập trung giải quyết **4 câu hỏi nghiên cứu cốt lõi** sau đây:
1. **Câu hỏi 1 (Kiểm định Định luật Okun):** Tăng trưởng kinh tế (GDPG) có thực sự làm giảm tỷ lệ thất nghiệp tại các quốc gia LMICs trong giai đoạn 2015–2025 hay không, và độ lớn của hệ số Okun phản ánh đặc trưng cấu trúc gì của thị trường lao động các nước đang phát triển?
2. **Câu hỏi 2 (Kiểm định Đường cong Phillips):** Giữa tỷ lệ lạm phát (INF) và tỷ lệ thất nghiệp tại khối LMICs tồn tại sự đánh đổi ngắn hạn theo lý thuyết đường cong Phillips truyền thống hay mối quan hệ cộng hưởng tiêu cực do rủi ro lạm phát đình đốn?
3. **Câu hỏi 3 (Tác động của Hội nhập Đầu tư và Thương mại):** Dòng vốn đầu tư trực tiếp nước ngoài ròng (FDI) và độ mở thương mại quốc tế (TRADE) đóng vai trò là động lực tạo việc làm mới hay gây ra hiệu ứng chèn ép, đào thải lao động giản đơn nội địa?
4. **Câu hỏi 4 (Định hướng Nhân quả và Tính bất đồng nhất cấu trúc):** Khi kiểm soát đồng thời khuyết tật phụ thuộc chéo không gian bằng sai số chuẩn vững Driscoll–Kraay, kiểm soát cú sốc thời gian vĩ mô và độ trễ truyền dẫn bằng mô hình Tác động cố định hai chiều biến trễ (Lagged TWFE), cũng như phân tách mẫu theo ngưỡng thu nhập (Thu nhập thấp so với Thu nhập trung bình), các mối quan hệ vĩ mô nêu trên thay đổi như thế nào?

## 1.3. Mục tiêu nghiên cứu

### Mục tiêu tổng quát
Xây dựng khung phân tích kinh tế lượng dữ liệu bảng chuẩn mực nhằm lượng hóa tác động của các yếu tố kinh tế vĩ mô trọng yếu (tăng trưởng GDP, lạm phát, dòng vốn FDI, độ mở thương mại) cùng các biến kiểm soát cấu trúc (tăng trưởng lực lượng lao động, chi tiêu chính phủ, vốn con người) đến tỷ lệ thất nghiệp tại 88 quốc gia thu nhập thấp và trung bình giai đoạn 2015–2025; từ đó thiết lập cơ sở khoa học cho việc hoạch định chính sách ổn định vĩ mô gắn với tạo việc làm bền vững.

### Mục tiêu cụ thể
1. **Mục tiêu 1:** Hệ thống hóa cơ sở lý thuyết và tổng quan nghiên cứu thực nghiệm về các yếu tố vĩ mô tác động đến thất nghiệp, làm rõ cơ chế biến dạng của Định luật Okun, Đường cong Phillips và lý thuyết hội nhập kinh tế trong điều kiện thị trường lao động nhị nguyên tại LMICs.
2. **Mục tiêu 2:** Thực hiện ước lượng đối chứng chuỗi mô hình dữ liệu bảng tĩnh (Pooled OLS, FEM, REM), kết hợp hệ thống kiểm định lựa chọn mô hình (Chow F-test, Breusch–Pagan LM, Hausman test) và kiểm định chẩn đoán khuyết tật toàn diện (VIF, Modified Wald, Wooldridge, Pesaran CD).
3. **Mục tiêu 3:** Khắc phục triệt để các khuyết tật phương sai thay đổi, tự tương quan chuỗi và phụ thuộc chéo không gian thông qua phương pháp ước lượng sai số chuẩn vững phi tham số Driscoll–Kraay (Driscoll–Kraay FE) để thu được kết quả suy luận thống kê đáng tin cậy nhất.
4. **Mục tiêu 4:** Tiếp cận định hướng suy luận nhân quả bằng mô hình Tác động cố định hai chiều với biến giải thích trễ một kỳ ($\text{TWFE}_{t-1}$) và phân tích tính không đồng nhất cấu trúc giữa nhóm quốc gia thu nhập thấp (*Low-Income*) và nhóm quốc gia thu nhập trung bình (*Middle-Income*), từ đó đề xuất các hàm ý chính sách đặc thù.

## 1.4. Đối tượng và Phạm vi nghiên cứu

- **Đối tượng nghiên cứu:** Mối quan hệ thực nghiệm (tương quan có điều kiện và định hướng nhân quả) giữa các biến số kinh tế vĩ mô (tăng trưởng GDP, lạm phát CPI, FDI ròng, độ mở thương mại, tăng trưởng lực lượng lao động, chi tiêu chính phủ, vốn con người) và tỷ lệ thất nghiệp tổng thể.
- **Phạm vi không gian:** Nghiên cứu khảo sát **88 quốc gia có thu nhập thấp và thu nhập trung bình (LMICs)** theo bảng phân loại thu nhập quốc gia (GNI per capita theo phương pháp Atlas) của Ngân hàng Thế giới, bao gồm 13 quốc gia thu nhập thấp (*Low-Income Countries* – LICs) và 75 quốc gia thu nhập trung bình thấp và trung bình cao (*Lower-Middle and Upper-Middle-Income Countries* – MICs) trải rộng trên 6 khu vực địa lý toàn cầu (Đông Á & Thái Bình Dương, Nam Á, Châu Phi hạ Sahara, Trung Đông & Bắc Phi, Mỹ Latinh & vùng Caribe, Đông Âu & Trung Á). Các quốc gia thu nhập cao (*High-Income Countries*) và các vùng lãnh thổ tổng hợp được loại bỏ hoàn toàn nhằm đảm bảo tính thuần nhất về trình độ phát triển thể chế.
- **Phạm vi thời gian:** Dữ liệu bảng cân đối (*balanced panel data*) kéo dài **11 năm từ năm 2015 đến năm 2025**, cung cấp tổng cộng $N = 88 \times 11 = 968$ quan sát quốc gia – năm (*country-year observations*). Khung thời gian này đủ dài để bao quát cả chu kỳ tăng trưởng trước đại dịch (2015–2019), giai đoạn suy thoái đại dịch COVID-19 (2020–2021) và giai đoạn phục hồi kèm biến động lạm phát toàn cầu (2022–2025).

## 1.5. Đóng góp mới của nghiên cứu

Công trình này mang lại ba đóng góp học thuật và thực tiễn rõ rệt so với các nghiên cứu hiện hành:
1. **Đóng góp về mặt dữ liệu thực nghiệm:** Cập nhật bộ dữ liệu bảng cân đối mới nhất giai đoạn 2015–2025 từ WDI cho 88 quốc gia LMICs, cho phép đánh giá toàn diện sự thay đổi cấu trúc thị trường lao động xuyên suốt một thập kỷ biến động lịch sử, bao gồm cả tác động trễ hậu đại dịch COVID-19 và cú sốc thắt chặt tiền tệ toàn cầu 2022–2025 mà các nghiên cứu sử dụng dữ liệu trước năm 2020 chưa thể phản ánh.
2. **Đóng góp về mặt địa hạt nghiên cứu:** Thay vì gộp chung các nền kinh tế phát triển và đang phát triển vào cùng một mẫu hồi quy (dẫn đến sai lệch tổng hợp *aggregation bias*), nghiên cứu tập trung thuần túy vào khối LMICs và tiến xa hơn thông qua việc bóc tách sự khác biệt cấu trúc giữa nhóm thu nhập thấp (LICs) và thu nhập trung bình (MICs).
3. **Đóng góp về mặt phương pháp luận kinh tế lượng:** Nghiên cứu vượt qua giới hạn của các ước lượng FEM/REM cổ điển bằng cách kiểm định tường minh hiện tượng **phụ thuộc chéo không gian** (*Pesaran CD test*) — một khuyết tật phổ biến nhưng thường bị bỏ sót khi các quốc gia cùng chịu chung các cú sốc vĩ mô toàn cầu — và áp dụng bộ ước lượng **sai số chuẩn vững Driscoll–Kraay (1998)** kết hợp mô hình **TWFE biến trễ ($t-1$)** để vừa bảo đảm tính vững của suy luận thống kê, vừa giảm thiểu sai lệch nội sinh do nhân quả ngược.

## 1.6. Kết cấu của bài báo

Ngoài phần Tóm tắt, Mục lục và Danh mục tài liệu tham khảo, nội dung chính của bài báo được cấu trúc thành 5 phần chặt chẽ:
- **Phần 1 (Giới thiệu):** Trình bày bối cảnh thực tiễn, vấn đề nghiên cứu, câu hỏi, mục tiêu, phạm vi và những đóng góp mới của công trình.
- **Phần 2 (Tổng quan tài liệu và Cơ sở lý thuyết):** Phân tích sâu các trụ cột lý thuyết kinh tế học vĩ mô, lược khảo các bằng chứng thực nghiệm quốc tế, xác định khoảng trống nghiên cứu và xây dựng hệ thống giả thuyết.
- **Phần 3 (Dữ liệu và Phương pháp nghiên cứu):** Mô tả quy trình thu thập, xử lý dữ liệu bảng, định nghĩa biến số, thiết lập phương trình kinh tế lượng và trình bày chiến lược kiểm định chẩn đoán cùng phương pháp ước lượng Driscoll–Kraay và TWFE biến trễ.
- **Phần 4 (Kết quả nghiên cứu và Thảo luận):** Trình bày thống kê mô tả, phân tích tương quan, đối chiếu kết quả hồi quy qua 5 mô hình, luận giải kinh tế học sâu sắc cho từng biến số và kiểm định độ bền qua biến trễ cùng phân nhóm thu nhập.
- **Phần 5 (Kết luận và Hàm ý chính sách):** Đúc kết các phát hiện cốt lõi, đề xuất hệ thống khuyến nghị chính sách vĩ mô cho các nước LMICs, chỉ ra hạn chế và định hướng nghiên cứu tiếp theo.

---

# PHẦN 2: TỔNG QUAN TÀI LIỆU VÀ CƠ SỞ LÝ THUYẾT (LITERATURE REVIEW & THEORETICAL FRAMEWORK)

## 2.1. Các nền tảng lý thuyết kinh tế

### 2.1.1. Lý thuyết thị trường lao động cổ điển, Keynesian và cấu trúc nhị nguyên tại các nước đang phát triển

Trong lịch sử tư tưởng kinh tế học, trường phái Cổ điển (*Classical Economics*) với đại diện là Pigou (1933) quan niệm rằng thị trường lao động luôn tự điều chỉnh về trạng thái toàn dụng nhân công thông qua cơ chế linh hoạt hoàn hảo của tiền lương thực tế ($W/P$). Theo đó, mọi sự gia tăng thất nghiệp chỉ mang tính chất tự nguyện (*voluntary unemployment*) hoặc ma sát tạm thời, trừ khi có sự can thiệp làm cứng nhắc tiền lương từ công đoàn hoặc quy định lương tối thiểu. Ngược lại, cuộc cách mạng kinh tế học của Keynes (1936) trong tác phẩm *The General Theory of Employment, Interest and Money* đã chứng minh rằng do tính cứng nhắc danh nghĩa của tiền lương và giá cả (*nominal rigidities*), sự suy giảm của tổng cầu hiệu quả (*effective aggregate demand*) tất yếu dẫn đến thất nghiệp không tự nguyện (*involuntary cyclical unemployment*). Các mô hình Keynesian mới (*New Keynesian*) và lý thuyết tìm kiếm - kết hợp việc làm (*Search and Matching Theory*) của Mortensen và Pissarides (1994) tiếp tục bổ sung rằng sự bất cân xứng thông tin, chi phí tuyển dụng và sự lệch pha kỹ năng (*skill mismatch*) tạo ra tỷ lệ thất nghiệp cấu trúc ngay cả ở trạng thái cân bằng dài hạn.

Tuy nhiên, khi áp dụng vào các quốc gia thu nhập thấp và trung bình (LMICs), mô hình thị trường lao động đơn nhất của phương Tây bộc lộ hạn chế lớn. Lý thuyết nền kinh tế nhị nguyên (*Dual Economy Model*) của Lewis (1954) và mô hình dịch chuyển lao động của Harris và Todaro (1970) chỉ ra rằng thị trường lao động tại các nước đang phát triển bị phân cắt thành hai khu vực rõ rệt: **khu vực hiện đại/chính thức** (*formal sector*) có năng suất cao, tiền lương quy định nhưng quy mô việc làm hạn chế, và **khu vực truyền thống/phi chính thức** (*informal sector*) có năng suất thấp, thu nhập bấp bênh nhưng rào cản gia nhập gần như bằng không. Khi nền kinh tế suy thoái, người lao động tại LMICs thường không thể "ngồi chờ" hưởng trợ cấp thất nghiệp mà buộc phải chuyển dịch sang tự tạo việc làm hoặc lao động thời vụ trong khu vực phi chính thức. Đặc điểm cấu trúc này đóng vai trò là chiếc chìa khóa lý thuyết để lý giải vì sao biên độ phản ứng của tỷ lệ thất nghiệp thống kê trước các cú sốc vĩ mô tại LMICs lại khác biệt sâu sắc so với các nước phát triển.

### 2.1.2. Định luật Okun (Okun's Law) và tính bất đối xứng tại các nền kinh tế đang phát triển

Năm 1962, nhà kinh tế học Arthur M. Okun đã phát hiện ra mối quan hệ thực nghiệm nghịch biến mang tính quy luật giữa tốc độ tăng trưởng sản lượng thực tế và sự thay đổi của tỷ lệ thất nghiệp tại Hoa Kỳ. Về mặt toán học, phiên bản sai phân bậc nhất (*first-difference version*) của Định luật Okun được biểu diễn dưới dạng:

$$\Delta U_t = \alpha + \beta \cdot g_{Y,t} + \omega_t, \quad (\beta < 0)$$

trong đó $\Delta U_t$ là mức thay đổi của tỷ lệ thất nghiệp, $g_{Y,t}$ là tốc độ tăng trưởng GDP thực tế, và $\beta$ được gọi là **hệ số Okun** (*Okun's coefficient*), phản ánh độ nhạy của thất nghiệp đối với biến động sản lượng. Về mặt cơ chế kinh tế, khi tốc độ tăng trưởng GDP vượt qua mức sản lượng tiềm năng, các doanh nghiệp mở rộng quy mô sản xuất, gia tăng nhu cầu tuyển dụng mới, từ đó kéo giảm tỷ lệ thất nghiệp.

Tại các nền kinh tế phát triển, hệ số Okun thường dao động trong khoảng từ $-0.30$ đến $-0.50$ (Ball, Leigh, & Loungani, 2017). Thế nhưng, tại các quốc gia LMICs, nhiều nghiên cứu lý thuyết chỉ ra rằng độ lớn tuyệt đối của $|\beta|$ thường nhỏ hơn đáng kể (chỉ từ $-0.01$ đến $-0.15$) hoặc mang tính bất đối xứng mạnh giữa pha tăng trưởng và pha suy thoái (An, Ghazi, & Prieto, 2019). Nguyên nhân xuất phát từ ba cơ chế: (i) Tăng trưởng GDP tại nhiều nước đang phát triển dựa vào khai thác tài nguyên khoáng sản hoặc các ngành công nghiệp thâm dụng vốn (*capital-intensive growth*), tạo ra rất ít việc làm mới trên mỗi điểm phần trăm tăng trưởng GDP; (ii) Hiệu ứng tích trữ lao động (*labor hoarding*) và chi phí sa thải tại khu vực nhà nước; và (iii) Sự dịch chuyển ngược xuôi của lao động giữa khu vực chính thức và phi chính thức làm che mờ biến động của tỷ lệ thất nghiệp chính thức.

### 2.1.3. Lý thuyết Đường cong Phillips (Phillips Curve)

Khởi nguồn từ nghiên cứu thực nghiệm của A. W. Phillips (1958) tại Vương quốc Anh giai đoạn 1861–1957 và được Samuelson cùng Solow (1960) phát triển thành công cụ phân tích chính sách, Đường cong Phillips truyền thống mô tả mối quan hệ đánh đổi nghịch biến trong ngắn hạn giữa tỷ lệ lạm phát và tỷ lệ thất nghiệp. Khi chính phủ hoặc ngân hàng trung ương thực hiện chính sách kích cầu mở rộng, mức giá chung tăng lên nhanh hơn tiền lương danh nghĩa (do hợp đồng lao động cố định theo kỳ hoặc do người lao động chịu "ảo giác tiền tệ" – *money illusion*), làm giảm chi phí tiền lương thực tế ($W/P$) của doanh nghiệp. Lợi nhuận biên gia tăng thúc đẩy doanh nghiệp mở rộng sản xuất và tuyển thêm lao động, qua đó làm giảm tỷ lệ thất nghiệp.

Tuy nhiên, Friedman (1968) và Phelps (1967) đã bổ sung kỳ vọng lạm phát vào mô hình để hình thành **Đường cong Phillips mở rộng kỳ vọng** (*Expectations-Augmented Phillips Curve*):

$$\pi_t = \pi_t^e - \phi (U_t - U_t^*) + \nu_t, \quad (\phi > 0)$$

trong đó $\pi_t$ là lạm phát thực tế, $\pi_t^e$ là lạm phát kỳ vọng, $U_t^*$ là tỷ lệ thất nghiệp tự nhiên (*NAIRU*), và $\nu_t$ là cú sốc cung. Theo Friedman và Phelps, sự đánh đổi nghịch biến chỉ tồn tại trong ngắn hạn khi $\pi_t \neq \pi_t^e$. Trong dài hạn, hoặc khi nền kinh tế hứng chịu các cú sốc chi phí đẩy nghiêm trọng (như giá năng lượng, đứt gãy chuỗi cung ứng và mất giá đồng nội tệ thường gặp tại LMICs), kỳ vọng lạm phát tăng vọt làm triệt tiêu hiệu ứng kích thích sản xuất, thậm chí đẩy nền kinh tế vào trạng thái **lạm phát đình đốn** (*stagflation*) — nơi lạm phát cao đi kèm với thất nghiệp gia tăng.

### 2.1.4. Lý thuyết dòng vốn FDI và việc làm

Theo Mô hình chiết trung OLI (*Ownership, Location, Internalization*) của Dunning (1988) và lý thuyết tăng trưởng nội sinh (Romer, 1990), dòng vốn đầu tư trực tiếp nước ngoài (FDI) tác động đến thị trường lao động nước sở tại thông qua hai kênh đối lập:
- **Kênh tạo việc làm tích cực (*Employment Creation Effect*):** Đầu tư mới (*Greenfield FDI*) trực tiếp xây dựng nhà máy, khu công nghiệp, hấp thụ lượng lớn lao động phổ thông và bán lành nghề tại các quốc gia dư thừa lao động. Đồng thời, thông qua liên kết dọc (*backward and forward linkages*) với các nhà cung ứng nội địa và hiệu ứng số nhân thu nhập, FDI kích thích tạo việc làm gián tiếp trong khu vực dịch vụ và công nghiệp phụ trợ (Javorcik, 2015).
- **Kênh chèn ép và thay thế lao động (*Crowding-out & Automation Effect*):** Khi dòng vốn FDI chủ yếu đi vào hoạt động mua bán - sáp nhập (*Cross-border M&A*) kèm theo quá trình tái cơ cấu cắt giảm nhân sự, hoặc khi các tập đoàn đa quốc gia (MNCs) du nhập dây chuyền công nghệ tự động hóa thâm dụng vốn để đảm bảo tiêu chuẩn toàn cầu, FDI không những tạo ra ít việc làm mới mà còn dùng ưu thế năng suất để chèn ép các doanh nghiệp vừa và nhỏ nội địa (*SMEs* – vốn là khu vực sử dụng nhiều lao động nhất) phải thu hẹp sản xuất hoặc phá sản (Aitken & Harrison, 1999; Jude & Silaghi, 2016). Do đó, tác động ròng của FDI đến thất nghiệp tại LMICs là một câu hỏi thực nghiệm mở.

### 2.1.5. Lý thuyết thương mại quốc tế và độ mở thương mại đối với phân bổ lao động

Lý thuyết thương mại cổ điển và tân cổ điển, đặc biệt là **Mô hình Heckscher–Ohlin (H–O)** và **Định lý Stolper–Samuelson**, cung cấp nền tảng cốt lõi để giải thích mối quan hệ giữa độ mở thương mại và thất nghiệp tại các nước đang phát triển. Theo mô hình H–O, một quốc gia sẽ chuyên môn hóa sản xuất và xuất khẩu mặt hàng sử dụng thâm dụng yếu tố sản xuất mà quốc gia đó dồi dào tương đối. Vì các quốc gia LMICs có lợi thế so sánh nổi trội về nguồn cung lao động dồi dào và chi phí nhân công thấp so với các nước phát triển (dồi dào vốn và công nghệ), tự do hóa thương mại và gia tăng độ mở thương mại sẽ thúc đẩy sự mở rộng mạnh mẽ của các ngành chế biến xuất khẩu, dệt may, da giày, lắp ráp điện tử và nông nghiệp thương mại — qua đó làm tăng tổng cầu lao động và kéo giảm tỷ lệ thất nghiệp (Helpman & Itskhoki, 2010).

Tuy nhiên, lý thuyết thương mại mới với doanh nghiệp bất đồng nhất của Melitz (2003) cảnh báo rằng hội nhập thương mại đồng thời mở cửa thị trường nội địa cho hàng nhập khẩu giá rẻ từ nước ngoài. Quá trình tái phân bổ nguồn lực giữa các ngành (*inter-industry reallocation*) khiến các doanh nghiệp nội địa kém năng suất bị đào thải. Nếu thị trường lao động tại LMICs có mức độ ma sát cao hoặc người lao động thiếu kỹ năng để chuyển đổi nghề nghiệp sang khu vực xuất khẩu, độ mở thương mại có thể làm gia tăng thất nghiệp cấu trúc trong ngắn hạn (Dutt, Mitra, & Ranjan, 2009).

## 2.2. Lược khảo các nghiên cứu thực nghiệm trên thế giới và tại các nước đang phát triển

### 2.2.1. Các nghiên cứu thực nghiệm về Định luật Okun và Đường cong Phillips tại LMICs

Các công trình thực nghiệm đa quốc gia trong thập kỷ qua đã ghi nhận sự phân hóa sâu sắc của hệ số Okun theo trình độ phát triển kinh tế. Ball, Leigh và Loungani (2017) khi kiểm định Định luật Okun trên 20 nền kinh tế phát triển đã khẳng định mối quan hệ nghịch biến ổn định và mạnh mẽ ($\beta \approx -0.40$). Ngược lại, khi mở rộng phạm vi sang hơn 70 quốc gia đang phát triển và thị trường mới nổi, Bartolucci, Choudhry, Marelli và Signorelli (2018) cùng An, Ghazi và Prieto (2019) phát hiện rằng hệ số Okun tại các nước thu nhập thấp và trung bình thấp chỉ bằng chưa đầy một phần tư so với các nước thu nhập cao, thậm chí không có ý nghĩa thống kê tại nhiều quốc gia Châu Phi hạ Sahara nơi khu vực nông nghiệp tự cung tự cấp và kinh tế phi chính thức đóng vai trò bộ đệm hấp thụ lao động. Tương tự, nghiên cứu của Aguiar-Conraria, Martins và Soares (2020) và Dankumo et al. (2021) chỉ ra rằng tại các nền kinh tế phụ thuộc vào xuất khẩu hàng hóa sơ cấp (*commodity-exporting LMICs*), tăng trưởng GDP thường không đi kèm với mở rộng việc làm chính thức.

Đối với Đường cong Phillips, các nghiên cứu thực nghiệm hiện đại tại các nước đang phát triển cũng cho thấy những kết quả đa chiều. Một mặt, nghiên cứu của Vermeulen (2017) tại Nam Phi và Wulandari et al. (2019) tại các nền kinh tế mới nổi Đông Nam Á tìm thấy bằng chứng ủng hộ sự đánh đổi ngắn hạn giữa lạm phát và thất nghiệp khi lạm phát nằm trong biên độ kiểm soát vừa phải, nhờ hiệu ứng kích thích tổng cầu và giảm chi phí lương thực tế. Mặt khác, nghiên cứu của Behera và Mishra (2020) tại Ấn Độ và Orji, Anthony-Orji và Okafor (2015) tại Nigeria lại lập luận rằng đường cong Phillips có xu hướng phẳng đi hoặc đảo chiều dương trong các giai đoạn cú sốc cung năng lượng và mất giá tỷ giá hối đoái.

### 2.2.2. Bằng chứng thực nghiệm về FDI, Độ mở thương mại và các biến kiểm soát cấu trúc

Về tác động của dòng vốn FDI và thương mại quốc tế, bức tranh thực nghiệm tại khối LMICs thể hiện sự đối lập rõ nét giữa các khu vực:
- **Về dòng vốn FDI:** Jude và Silaghi (2016) khi phân tích dữ liệu bảng tại 20 quốc gia chuyển đổi Đông Âu nhận thấy FDI gây ra hiện tượng "phá hủy việc làm sáng tạo" (*creative destruction*) trong ngắn hạn do tái cấu trúc lao động sau M&A, và chỉ tạo ra hiệu ứng việc làm tích cực trong dài hạn đối với đầu tư Greenfield. Tại Châu Phi và Nam Á, Johnny et al. (2018) và Zdravkovic et al. (2017) phát hiện tác động của FDI lên giảm thất nghiệp là rất yếu hoặc không có ý nghĩa thống kê do dòng vốn ngoại tập trung vào khai khoáng, viễn thông và tài chính — những ngành đòi hỏi vốn lớn nhưng sử dụng rất ít lao động bản địa.
- **Về độ mở thương mại:** Công trình kinh điển của Dutt, Mitra và Ranjan (2009) sử dụng dữ liệu bảng đa quốc gia chứng minh rằng hiệu ứng Heckscher–Ohlin chiếm ưu thế trong dài hạn, giúp độ mở thương mại làm giảm tỷ lệ thất nghiệp tại các quốc gia dồi dào lao động. Kết quả này được củng cố bởi nghiên cứu của Felbermayr, Prat và Schmerer (2011) cũng như Awad và Yussof (2016), nhưng bị thách thức bởi Ranjan (2012) và Fugazza et al. (2014) khi chỉ ra rằng ở những quốc gia có thị trường lao động phi chính thức lớn và hạ tầng yếu kém, tự do hóa thương mại có thể làm suy giảm việc làm khu vực chính thức.
- **Về các biến kiểm soát vĩ mô và nhân khẩu học:** Baumann và Brzozowski (2021) cùng Baah-Boateng (2016) nhấn mạnh rằng áp lực tăng trưởng dân số và lực lượng lao động trẻ nhanh chóng (*demographic bulge*) tại LMICs tạo ra sức ép cung lao động vượt quá khả năng hấp thụ của nền kinh tế, làm gia tăng tỷ lệ thất nghiệp. Trong khi đó, chi tiêu chính phủ (Holden & Sparrman, 2018; Saraireh, 2020) và đầu tư vốn con người qua giáo dục trung học/đại học (Psacharopoulos & Patrinos, 2018; Lavrinovicha et al., 2015) đóng vai trò điều tiết quan trọng từ cả phía tổng cầu lẫn chất lượng nguồn cung lao động.

## 2.3. Khoảng trống nghiên cứu (Research Gap)

Từ việc tổng hợp lý thuyết và lược khảo các công trình thực nghiệm quốc tế, nghiên cứu xác định **ba khoảng trống học thuật trọng tâm** cần được lấp đầy:

1. **Khoảng trống về phương pháp xử lý phụ thuộc chéo không gian (Cross-Sectional Dependence Gap):** Phần lớn các nghiên cứu trước đây về thất nghiệp tại các nước đang phát triển sử dụng các bộ ước lượng dữ liệu bảng thế hệ thứ nhất (*first-generation panel estimators* như Pooled OLS, FEM, REM hoặc sai số chuẩn Huber–White thông thường) dựa trên giả định ngầm định rằng sai số giữa các quốc gia là độc lập với nhau ($\text{Cov}(\varepsilon_{i,t}, \varepsilon_{j,t}) = 0, \forall i \neq j$). Trong kỷ nguyên toàn cầu hóa sâu rộng giai đoạn 2015–2025, khi cả 88 quốc gia LMICs cùng chịu tác động đồng thời từ đại dịch COVID-19, biến động giá hàng hóa thế giới và chu kỳ lãi suất của Cục Dự trữ Liên bang Mỹ (Fed), giả định độc lập chéo bị vi phạm nghiêm trọng. Việc bỏ qua phụ thuộc chéo không gian làm chệch ma trận phương sai – hiệp phương sai, dẫn đến hiện tượng phóng đại thống kê $t$ và kết luận sai lầm (*spurious statistical significance*) (Pesaran, 2004, 2021; Hoechle, 2007).
2. **Khoảng trống về định hướng nhân quả và kiểm soát tác động đồng thời (Endogeneity & Simultaneity Gap):** Hầu hết các nghiên cứu đi trước chỉ ước lượng các biến vĩ mô ở cùng thời điểm $t$ ($X_{i,t} \rightarrow \text{UNEMP}_{i,t}$). Trong thực tế kinh tế vĩ mô, tỷ lệ thất nghiệp cao cũng tác động ngược trở lại làm suy giảm tăng trưởng GDP và kéo giảm lạm phát qua kênh cầu tiêu dùng (*reverse causality*). Ngoài ra, các chính sách tài khóa, dòng vốn FDI và thương mại luôn cần một độ trễ thời gian (*transmission lag*) để chuyển hóa thành quyết định tuyển dụng của doanh nghiệp.
3. **Khoảng trống về tính cập nhật thời gian và tính bất đồng nhất nội khối LMICs (Temporal & Structural Heterogeneity Gap):** Rất ít nghiên cứu bao quát trọn vẹn giai đoạn 2015–2025 để đánh giá cấu trúc việc làm sau cú sốc kép đại dịch – lạm phát toàn cầu, đồng thời đối chiếu tách biệt giữa nhóm nước thu nhập thấp (nơi nông nghiệp và phi chính thức chiếm tuyệt đối) và nhóm nước thu nhập trung bình (nơi công nghiệp hóa và hội nhập chuỗi giá trị đã định hình rõ nét).

## 2.4. Khung phân tích và Giả thuyết nghiên cứu

Trên cơ sở các lý thuyết nền tảng và khoảng trống nghiên cứu vừa xác lập, bài báo xây dựng khung phân tích tích hợp các động lực vĩ mô truyền dẫn vào thị trường lao động LMICs và phát biểu **4 giả thuyết nghiên cứu chính** như sau:

- **Giả thuyết $H_1$ (Kiểm định Định luật Okun):** *Tốc độ tăng trưởng kinh tế (GDPG) có tác động nghịch biến (dấu âm: $-$) và có ý nghĩa thống kê đến tỷ lệ thất nghiệp tại các quốc gia thu nhập thấp và trung bình; tuy nhiên, độ lớn tuyệt đối của hệ số Okun dự kiến ở mức khiêm tốn do đặc trưng tăng trưởng thâm dụng vốn và bộ đệm lao động phi chính thức.*
- **Giả thuyết $H_2$ (Kiểm định Đường cong Phillips ngắn hạn):** *Tỷ lệ lạm phát giá tiêu dùng (INF) có mối quan hệ nghịch biến (dấu âm: $-$) và có ý nghĩa thống kê với tỷ lệ thất nghiệp trong ngắn hạn tại khối LMICs, phản ánh cơ chế đánh đổi Phillips thông qua sự suy giảm chi phí tiền lương thực tế và kích thích tổng cầu sản xuất.*
- **Giả thuyết $H_3$ (Giả thuyết dòng vốn FDI):** *Dòng vốn đầu tư trực tiếp nước ngoài ròng (FDI) có tác động nghịch biến (dấu âm: $-$) đến tỷ lệ thất nghiệp nhờ hiệu ứng bổ sung vốn đầu tư và mở rộng năng lực sản xuất, song mức độ tác động có thể bị kiềm chế bởi hiệu ứng chèn ép công nghệ.*
- **Giả thuyết $H_4$ (Giả thuyết hội nhập thương mại Heckscher–Ohlin):** *Độ mở thương mại quốc tế (TRADE) có tác động nghịch biến (dấu âm: $-$) và có ý nghĩa thống kê đến tỷ lệ thất nghiệp tại các quốc gia LMICs nhờ việc khai thác lợi thế so sánh trong các ngành xuất khẩu thâm dụng lao động.*

---

# PHẦN 3: DỮ LIỆU VÀ PHƯƠNG PHÁP NGHIÊN CỨU (DATA & METHODOLOGY)

## 3.1. Dữ liệu và Tiêu chí chọn mẫu

### 3.1.1. Nguồn dữ liệu và quy trình thiết lập bảng cân đối 88 quốc gia LMICs

Toàn bộ dữ liệu thứ cấp phục vụ nghiên cứu được trích xuất trực tiếp từ cơ sở dữ liệu **World Development Indicators (WDI)** do Ngân hàng Thế giới (World Bank) công bố và chuẩn hóa theo tiêu chuẩn thống kê của Tổ chức Lao động Quốc tế (ILO Modelled Estimates) và Quỹ Tiền tệ Quốc tế (IMF). Quy trình lọc mẫu gồm 4 bước trên R:
1. **Bước 1 (Lọc theo phân nhóm thu nhập chuẩn World Bank):** Loại bỏ hoàn toàn các mã vùng tổng hợp (*Aggregates*) và các quốc gia thuộc nhóm Thu nhập cao (*High-income economies*). Chỉ giữ lại các quốc gia có chủ quyền thuộc 3 phân nhóm: Thu nhập thấp (*Low income*), Thu nhập trung bình thấp (*Lower middle income*), và Thu nhập trung bình cao (*Upper middle income*).
2. **Bước 2 (Chuẩn hóa khung thời gian 2015–2025):** Cố định cửa sổ quan sát trong 11 năm liên tiếp từ năm 2015 đến năm 2025 ($T = 11$).
3. **Bước 3 (Kiểm định mật độ dữ liệu và khóa mẫu 88 quốc gia):** Loại bỏ các quốc gia mất chuỗi thống kê vĩ mô liên tục trên 20% số kỳ quan sát. Kết quả thu được **88 quốc gia LMICs đại diện** (13 quốc gia thu nhập thấp và 75 quốc gia thu nhập trung bình).
4. **Bước 4 (Xử lý dữ liệu khuyết cục bộ và định dạng `pdata.frame`):** Áp dụng nội suy tuyến tính cục bộ theo chuỗi thời gian nội bộ từng quốc gia (`zoo::na.approx`) cho dưới 2.5% điểm khuyết đơn lẻ để bảo toàn cấu trúc **dữ liệu bảng cân đối hoàn toàn** (*Strictly Balanced Panel*) với $n = 88$ quốc gia, $T = 11$ năm và tổng số quan sát $N = 968$.

### 3.1.2. Định nghĩa và đo lường các biến số trong mô hình

**Bảng 3.1: Định nghĩa các biến, công thức tính, mã chỉ số WDI và dấu kỳ vọng lý thuyết**

| Nhóm biến | Tên biến & Ký hiệu | Định nghĩa và Công thức đo lường | Mã chỉ số WDI (World Bank) | Đơn vị | Kỳ vọng dấu | Cơ sở lý thuyết & Nghiên cứu tham chiếu |
| :--- | :--- | :--- | :--- | :---: | :---: | :--- |
| **Biến phụ thuộc** | Tỷ lệ thất nghiệp ($\text{UNEMP}_{i,t}$) | Tỷ lệ phần trăm lực lượng lao động hiện không có việc làm nhưng sẵn sàng làm việc và đang tích cực tìm kiếm việc làm (ước lượng chuẩn hóa ILO). | `SL.UEM.TOTL.ZS` | % lực lượng lao động | — | ILO (2024); Blanchard & Summers (1986) |
| **Biến giải thích chính** | Tăng trưởng kinh tế ($\text{GDPG}_{i,t}$) | Tốc độ tăng trưởng hàng năm của Tổng sản phẩm quốc nội (GDP) tính theo giá cố định đồng nội tệ: $\frac{\text{GDP}_t - \text{GDP}_{t-1}}{\text{GDP}_{t-1}} \times 100$. | `NY.GDP.MKTP.KD.ZG` | % / năm | $-$ (Âm) | Định luật Okun (Okun, 1962; Ball et al., 2017; An et al., 2019) |
| **Biến giải thích chính** | Tỷ lệ lạm phát ($\text{INF}_{i,t}$) | Tốc độ thay đổi phần trăm hàng năm của Chỉ số giá tiêu dùng (CPI), phản ánh mức độ trượt giá giỏ hàng hóa tiêu dùng đại diện. | `FP.CPI.TOTL.ZG` | % / năm | $-$ (Ngắn hạn) / $+$ (Đình đốn) | Đường cong Phillips (Phillips, 1958; Friedman, 1968; Vermeulen, 2017) |
| **Biến giải thích chính** | Đầu tư trực tiếp nước ngoài ròng ($\text{FDI}_{i,t}$) | Dòng vốn đầu tư trực tiếp nước ngoài ròng chảy vào nền kinh tế (vốn cổ phần, tái đầu tư lợi nhuận, nợ nội bộ) chia cho quy mô GDP danh nghĩa. | `BX.KLT.DINV.WD.GD.ZS` | % GDP | $-$ (Âm) | Lý thuyết OLI & Chuyển giao công nghệ (Dunning, 1988; Jude & Silaghi, 2016) |
| **Biến giải thích chính** | Độ mở thương mại ($\text{TRADE}_{i,t}$) | Tổng kim ngạch xuất khẩu ($X$) và nhập khẩu ($M$) hàng hóa và dịch vụ chia cho tổng GDP: $\text{TRADE} = \frac{X + M}{\text{GDP}} \times 100$. | `NE.TRD.GNFS.ZS` | % GDP | $-$ (Âm) | Mô hình Heckscher–Ohlin (Dutt et al., 2009; Felbermayr et al., 2011) |
| **Biến kiểm soát** | Tăng trưởng lực lượng lao động ($\text{LFG}_{i,t}$) | Tốc độ tăng trưởng hàng năm của quy mô dân số trong độ tuổi lao động tham gia thị trường lao động (cung lao động). | `SL.TLF.TOTL.IN` / `SP.POP.GROW` | % / năm | $+$ (Dương) | Lý thuyết áp lực cung nhân khẩu học (Baah-Boateng, 2016; Baumann & Brzozowski, 2021) |
| **Biến kiểm soát** | Chi tiêu chính phủ ($\text{GOV}_{i,t}$) | Chi tiêu tiêu dùng cuối cùng của khu vực chính phủ chung (mua sắm hàng hóa, dịch vụ công và trả lương khu vực công) tính theo tỷ trọng GDP. | `NE.CON.GOVT.ZS` | % GDP | $-$ (Âm) | Lý thuyết kích cầu tài khóa Keynesian (Keynes, 1936; Holden & Sparrman, 2018) |
| **Biến kiểm soát** | Vốn con người ($\text{EDU}_{i,t}$) | Tỷ lệ nhập học chung cấp trung học/đại học (*Gross enrollment ratio*), đại diện cho trình độ kỹ năng và chất lượng nguồn nhân lực. | `SE.SEC.ENRR` / `SE.TER.ENRR` | % nhóm tuổi | $-$ (Âm) | Lý thuyết Vốn con người (Becker, 1964; Psacharopoulos & Patrinos, 2018) |

---

## 3.2. Mô hình kinh tế lượng đặc tả

Phương trình hồi quy dữ liệu bảng tổng quát được thiết lập dưới dạng đại số chỉ số kép như sau:

$$\text{UNEMP}_{i,t} = \beta_0 + \beta_1 \text{GDPG}_{i,t} + \beta_2 \text{INF}_{i,t} + \beta_3 \text{FDI}_{i,t} + \beta_4 \text{TRADE}_{i,t} + \sum_{k=1}^{3} \gamma_k \text{CONTROL}_{k,i,t} + \alpha_i + \lambda_t + \varepsilon_{i,t} \quad (3.1)$$

Khi khai triển tường minh các biến kiểm soát $\text{CONTROL}_{k,i,t} = \{\text{LFG}_{i,t}, \text{GOV}_{i,t}, \text{EDU}_{i,t}\}$, Phương trình (3.1) được viết đầy đủ là:

$$\text{UNEMP}_{i,t} = \beta_0 + \beta_1 \text{GDPG}_{i,t} + \beta_2 \text{INF}_{i,t} + \beta_3 \text{FDI}_{i,t} + \beta_4 \text{TRADE}_{i,t} + \gamma_1 \text{LFG}_{i,t} + \gamma_2 \text{GOV}_{i,t} + \gamma_3 \text{EDU}_{i,t} + \alpha_i + \lambda_t + \varepsilon_{i,t} \quad (3.2)$$

---

## 3.3. Quy trình ước lượng và Kiểm định chẩn đoán (Diagnostic Strategy)

Quy trình kinh tế lượng 5 bước:
- **Bước 1:** Ước lượng Pooled OLS, Fixed Effects (FEM - Within Estimator), Random Effects (REM - Swamy–Arora GLS Estimator).
- **Bước 2:** Kiểm định lựa chọn mô hình: Chow $F$-test (FEM vs. OLS), Breusch–Pagan LM test (REM vs. OLS), Hausman Specification Test (FEM vs. REM).
- **Bước 3:** Kiểm định chẩn đoán khuyết tật: Hệ số phóng đại phương sai ($\text{VIF}$), Kiểm định Modified Wald & Breusch–Pagan (Phương sai thay đổi), Kiểm định Wooldridge (Tự tương quan chuỗi bậc 1), Kiểm định Pesaran CD (Phụ thuộc chéo không gian).
- **Bước 4:** Ước lượng **Sai số chuẩn vững Driscoll–Kraay (Driscoll & Kraay, 1998)** khắc phục đồng thời phương sai thay đổi, tự tương quan và phụ thuộc chéo không gian, đối sánh cùng Cluster-Robust SE (Arellano, 1987).
- **Bước 5:** Định hướng suy luận nhân quả và kiểm định độ bền với mô hình **Two-Way Fixed Effects biến trễ 1 kỳ ($\text{TWFE}_{t-1}$)** và phân tích phân nhóm thu nhập (LICs vs. MICs).

---

# PHẦN 4: KẾT QUẢ NGHIÊN CỨU VÀ THẢO LUẬN (EMPIRICAL RESULTS & DISCUSSION)

## 4.1. Thống kê mô tả (Descriptive Statistics)

**Bảng 4.1: Thống kê mô tả toàn diện các biến số trong mô hình (88 quốc gia LMICs, 2015–2025)**

| Biến số | Ký hiệu | Số quan sát ($N$) | Trung bình (Mean) | Độ lệch chuẩn tổng thể (Overall SD) | Độ lệch chuẩn giữa các nước (Between SD) | Độ lệch chuẩn theo thời gian (Within SD) | Giá trị nhỏ nhất (Min) | Giá trị lớn nhất (Max) | Độ lệch (Skewness) | Độ nhọn (Kurtosis) |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Tỷ lệ thất nghiệp (%)** | $\text{UNEMP}$ | $968$ | $7.793$ | $6.357$ | $6.184$ | $1.562$ | $0.119$ | $34.007$ | $1.385$ | $4.612$ |
| **Tăng trưởng GDP (%)** | $\text{GDPG}$ | $968$ | $3.316$ | $4.896$ | $2.104$ | $4.426$ | $-32.909$ | $37.508$ | $-1.142$ | $11.835$ |
| **Lạm phát CPI (%)** | $\text{INF}$ | $968$ | $6.882$ | $16.740$ | $11.892$ | $11.815$ | $-4.455$ | $359.093$ | $12.418$ | $214.650$ |
| **FDI ròng (% GDP)** | $\text{FDI}$ | $968$ | $3.123$ | $4.566$ | $3.412$ | $3.048$ | $-37.173$ | $34.418$ | $0.894$ | $18.240$ |
| **Độ mở thương mại (% GDP)** | $\text{TRADE}$ | $968$ | $75.245$ | $38.785$ | $36.910$ | $12.304$ | $1.995$ | $320.939$ | $1.276$ | $5.894$ |
| **Tăng trưởng lực lượng LĐ (%)** | $\text{LFG}$ | $968$ | $1.842$ | $1.415$ | $1.186$ | $0.774$ | $-4.820$ | $6.940$ | $0.215$ | $3.842$ |
| **Chi tiêu chính phủ (% GDP)** | $\text{GOV}$ | $968$ | $14.864$ | $5.912$ | $5.540$ | $2.095$ | $3.580$ | $38.450$ | $0.918$ | $4.125$ |
| **Vốn con người – Giáo dục (%)** | $\text{EDU}$ | $968$ | $74.620$ | $24.185$ | $23.410$ | $6.280$ | $15.420$ | $126.840$ | $-0.462$ | $2.518$ |

---

## 4.2. Ma trận hệ số tương quan và Đa cộng tuyến

**Bảng 4.2: Ma trận hệ số tương quan Pearson và Kiểm định đa cộng tuyến (VIF)**

| Biến số | (1) $\text{UNEMP}$ | (2) $\text{GDPG}$ | (3) $\text{INF}$ | (4) $\text{FDI}$ | (5) $\text{TRADE}$ | (6) $\text{LFG}$ | (7) $\text{GOV}$ | (8) $\text{EDU}$ | $\text{VIF}$ | $1/\text{VIF}$ |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **(1) $\text{UNEMP}$** | $1.000$ | | | | | | | | — | — |
| **(2) $\text{GDPG}$** | $-0.174^{***}$ | $1.000$ | | | | | | | $1.06$ | $0.943$ |
| **(3) $\text{INF}$** | $0.037$ | $-0.153^{***}$ | $1.000$ | | | | | | $1.09$ | $0.917$ |
| **(4) $\text{FDI}$** | $-0.052^{*}$ | $0.064^{**}$ | $-0.037$ | $1.000$ | | | | | $1.12$ | $0.893$ |
| **(5) $\text{TRADE}$** | $0.245^{***}$ | $0.080^{**}$ | $-0.200^{***}$ | $0.291^{***}$ | $1.000$ | | | | $1.34$ | $0.746$ |
| **(6) $\text{LFG}$** | $-0.182^{***}$ | $0.114^{***}$ | $0.042$ | $0.028$ | $-0.195^{***}$ | $1.000$ | | | $1.28$ | $0.781$ |
| **(7) $\text{GOV}$** | $0.312^{***}$ | $-0.128^{***}$ | $-0.085^{***}$ | $0.092^{***}$ | $0.318^{***}$ | $-0.210^{***}$ | $1.000$ | | $1.26$ | $0.794$ |
| **(8) $\text{EDU}$** | $0.218^{***}$ | $-0.065^{**}$ | $-0.094^{***}$ | $0.054^{*}$ | $0.264^{***}$ | $-0.384^{***}$ | $0.275^{***}$ | $1.000$ | $1.31$ | $0.763$ |
| **Mean VIF** | | | | | | | | | **$1.21$** | |

---

## 4.3. Kết quả ước lượng mô hình dữ liệu bảng

**Bảng 4.3: Kết quả ước lượng đa mô hình dữ liệu bảng về các yếu tố tác động đến tỷ lệ thất nghiệp tại 88 quốc gia LMICs (2015–2025)**

| Biến giải thích \ Mô hình | (1) Pooled OLS | (2) Random Effects (REM) | (3) Fixed Effects (FEM) | (4) Robust FEM (Cluster SE) | (5) Driscoll–Kraay FEM (DK-SE) |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **Tăng trưởng kinh tế ($\text{GDPG}_{i,t}$)** | $-0.2084^{***}$ | $-0.0612^{***}$ | $-0.0584^{***}$ | $-0.0584^{**}$ | $-0.0584^{**}$ |
| | $(0.0371)$ | $(0.0112)$ | $(0.0108)$ | $(0.0246)$ | $(0.0218)$ |
| **Tỷ lệ lạm phát ($\text{INF}_{i,t}$)** | $0.0086$ | $-0.0205^{***}$ | $-0.0214^{***}$ | $-0.0214^{***}$ | $-0.0214^{***}$ |
| | $(0.0115)$ | $(0.0040)$ | $(0.0038)$ | $(0.0042)$ | $(0.0036)$ |
| **Đầu tư trực tiếp nước ngoài ($\text{FDI}_{i,t}$)** | $-0.1315^{***}$ | $-0.0189$ | $-0.0196^{*}$ | $-0.0196$ | $-0.0196^{*}$ |
| | $(0.0418)$ | $(0.0135)$ | $(0.0114)$ | $(0.0145)$ | $(0.0109)$ |
| **Độ mở thương mại ($\text{TRADE}_{i,t}$)** | $0.0368^{***}$ | $-0.0194^{***}$ | $-0.0235^{***}$ | $-0.0235^{***}$ | $-0.0235^{***}$ |
| | $(0.0054)$ | $(0.0045)$ | $(0.0046)$ | $(0.0078)$ | $(0.0064)$ |
| **Tăng trưởng lực lượng LĐ ($\text{LFG}_{i,t}$)** | $-0.3910^{***}$ | $0.1842^{**}$ | $0.2415^{***}$ | $0.2415^{**}$ | $0.2415^{***}$ |
| | $(0.1420)$ | $(0.0765)$ | $(0.0782)$ | $(0.1084)$ | $(0.0812)$ |
| **Chi tiêu chính phủ ($\text{GOV}_{i,t}$)** | $0.2485^{***}$ | $-0.0540^{**}$ | $-0.0718^{***}$ | $-0.0718^{**}$ | $-0.0718^{***}$ |
| | $(0.0342)$ | $(0.0248)$ | $(0.0261)$ | $(0.0352)$ | $(0.0245)$ |
| **Vốn con người – Giáo dục ($\text{EDU}_{i,t}$)** | $0.0312^{***}$ | $-0.0385^{***}$ | $-0.0462^{***}$ | $-0.0462^{**}$ | $-0.0462^{***}$ |
| | $(0.0086)$ | $(0.0104)$ | $(0.0112)$ | $(0.0215)$ | $(0.0148)$ |
| **Hằng số ($\text{Constant}$)** | $2.8410^{***}$ | $12.6420^{***}$ | $13.5840^{***}$ | $13.5840^{***}$ | $13.5840^{***}$ |
| | $(0.8920)$ | $(1.0840)$ | $(0.9460)$ | $(1.8420)$ | $(1.4150)$ |
| **Hiệu ứng cố định quốc gia ($\alpha_i$)** | Không | Ngẫu nhiên | Có | Có | Có |
| **Số quan sát ($N$)** | $968$ | $968$ | $968$ | $968$ | $968$ |
| **Số quốc gia ($n$) / Số năm ($T$)** | $88 / 11$ | $88 / 11$ | $88 / 11$ | $88 / 11$ | $88 / 11$ |
| **$R^2$ nội tại ($R^2 \text{ within}$)** | — | $0.1482$ | $0.1645$ | $0.1645$ | $0.1645$ |
| **$R^2$ giữa các nước ($R^2 \text{ between}$)** | — | $0.0845$ | $0.0612$ | $0.0612$ | $0.0612$ |
| **$R^2$ tổng thể ($R^2 \text{ overall}$)** | $0.1894$ | $0.1120$ | $0.0984$ | $0.0984$ | $0.0984$ |
| **Thống kê $F$ / Wald $\chi^2$ của mô hình** | $32.04^{***}$ | $138.65^{***}$ | $24.68^{***}$ | $19.42^{***}$ | $41.85^{***}$ |
| **Kiểm định Chow $F$-test (FEM vs. OLS)** | | | $180.58^{***}$ $[0.0000]$ | | |
| **Kiểm định Breusch–Pagan LM (REM vs. OLS)** | | $3827.00^{***}$ $[0.0000]$ | | | |
| **Kiểm định Hausman $\chi^2(7)$ (FEM vs. REM)** | | | $89.68^{***}$ $[0.0000]$ | | |
| **Kiểm định Modified Wald $\chi^2(88)$ (PS Thay đổi)** | | | $14825.40^{***}$ $[0.0000]$ | | |
| **Kiểm định Breusch–Pagan $\chi^2(7)$ (PS Thay đổi)** | | | $63.80^{***}$ $[0.0000]$ | | |
| **Kiểm định Wooldridge $F(1, 87)$ (Tự tương quan)** | | | $734.44^{***}$ $[0.0000]$ | | |
| **Kiểm định Pesaran CD (Phụ thuộc chéo)** | | | $11.84^{***}$ $[0.0000]$ | | |

---

## 4.5. Kiểm định độ bền và Định hướng suy luận nhân quả (Robustness Checks & Causal Orientation)

**Bảng 4.4: Kiểm định độ bền với Mô hình TWFE biến trễ bậc 1 ($t-1$) và Phân tích bất đồng nhất theo nhóm thu nhập**

| Biến giải thích trễ 1 kỳ ($t-1$) \ Mô hình | (1) Toàn mẫu 88 LMICs (Lagged TWFE + DK-SE) | (2) Nhóm Thu nhập thấp – LICs ($n = 13$, Lagged TWFE) | (3) Nhóm Thu nhập trung bình – MICs ($n = 75$, Lagged TWFE) |
| :--- | :---: | :---: | :---: |
| **Độ trễ Tăng trưởng kinh tế ($\text{GDPG}_{i,t-1}$)** | $-0.0492^{**}$ | $0.0385$ | $-0.0648^{***}$ |
| | $(0.0205)$ | $(0.0392)$ | $(0.0212)$ |
| **Độ trễ Tỷ lệ lạm phát ($\text{INF}_{i,t-1}$)** | $-0.0232^{***}$ | $-0.0201^{***}$ | $-0.0352^{***}$ |
| | $(0.0035)$ | $(0.0032)$ | $(0.0118)$ |
| **Độ trễ FDI ròng ($\text{FDI}_{i,t-1}$)** | $-0.0148$ | $0.0164$ | $-0.0182^{*}$ |
| | $(0.0112)$ | $(0.0440)$ | $(0.0104)$ |
| **Độ trễ Độ mở thương mại ($\text{TRADE}_{i,t-1}$)** | $-0.0217^{***}$ | $0.0053$ | $-0.0246^{***}$ |
| | $(0.0076)$ | $(0.0165)$ | $(0.0079)$ |
| **Độ trễ Tăng trưởng lực lượng LĐ ($\text{LFG}_{i,t-1}$)** | $0.2180^{***}$ | $0.3120^{**}$ | $0.1945^{**}$ |
| | $(0.0785)$ | $(0.1340)$ | $(0.0810)$ |
| **Độ trễ Chi tiêu chính phủ ($\text{GOV}_{i,t-1}$)** | $-0.0645^{**}$ | $-0.0284$ | $-0.0762^{***}$ |
| | $(0.0258)$ | $(0.0415)$ | $(0.0264)$ |
| **Độ trễ Vốn con người – Giáo dục ($\text{EDU}_{i,t-1}$)** | $-0.0418^{***}$ | $-0.0195$ | $-0.0485^{***}$ |
| | $(0.0142)$ | $(0.0280)$ | $(0.0154)$ |
| **Hiệu ứng cố định quốc gia ($\alpha_i$)** | Có | Có | Có |
| **Hiệu ứng cố định thời gian – Năm ($\lambda_t$)** | Có | Có | Có |
| **Số quan sát ($N$, sau khi lấy trễ 1 kỳ)** | $880$ | $130$ | $750$ |
| **Số quốc gia ($n$) / Số kỳ hiệu dụng ($T-1$)** | $88 / 10$ | $13 / 10$ | $75 / 10$ |
| **$R^2$ nội tại hai chiều ($R^2 \text{ within}$)** | $0.1812$ | $0.1140$ | $0.2045$ |
| **Thống kê Wald $F$ của mô hình** | $38.40^{***}$ | $12.65^{***}$ | $44.18^{***}$ |

