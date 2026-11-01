# Hướng Dẫn Đóng Góp (Contributing Guidelines)

Dự án Nghiên cứu Khoa học Sinh viên (NCKH 2026 – 2027):  
**"Phân tích các yếu tố kinh tế vĩ mô liên quan đến tỷ lệ thất nghiệp tại các quốc gia thu nhập thấp và trung bình: Tiếp cận từ thực nghiệm tương quan và định hướng suy luận nhân quả."**

Tài liệu này quy định chuẩn mực làm việc nhóm, quản lý mã nguồn (Git flow), chuẩn code R/Python và quy trình chuyển giao dữ liệu/kết quả giữa các thành viên.

---

## 1. Cơ Chế Phân Nhánh (Branching Strategy)

Nhóm áp dụng mô hình phân nhánh dựa trên tính năng (Feature-branch workflow) kết hợp vai trò của 3 thành viên:

- `main`: Nhánh ổn định cao nhất, chứa mã nguồn đã kiểm chứng, dữ liệu sạch và các bản thảo báo cáo cuối cùng. Không commit trực tiếp lên `main`.
- `dev`: Nhánh tích hợp cho toàn bộ dự án.
- `feature/member-a-...`: Nhánh thực hiện công việc của **Thành viên A** (Thu thập dữ liệu, làm sạch, EDA, Thống kê mô tả).
- `feature/member-b-...`: Nhánh thực hiện công việc của **Thành viên B** (Mô hình bảng cơ sở Pooled OLS, FEM, REM, Kiểm định khuyết tật, Cluster-robust SE).
- `feature/member-c-...`: Nhánh thực hiện công việc của **Thành viên C** (Tạo biến trễ, Mô hình TWFE, Sub-sample analysis, Hàm ý chính sách).

---

## 2. Quy Chuẩn Commit (Conventional Commits)

Mỗi commit cần thể hiện rõ nội dung và mục đích theo quy ước:

- `feat:` Thêm tính năng mới, thêm script mô hình, thêm biểu đồ.
  - *Ví dụ:* `feat(model): implement twfe regression with country-level clustered se`
- `fix:` Sửa lỗi code, sửa lỗi làm sạch dữ liệu hoặc khắc phục cảnh báo thống kê.
  - *Ví dụ:* `fix(data): resolve missing values in private credit variable for 2015-2025`
- `docs:` Chỉnh sửa tài liệu, viết báo cáo (`CONTEXT.md`, `README.md`, bản thảo các chương).
  - *Ví dụ:* `docs(chapter3): update econometric methodology and test specifications`
- `style:` Định dạng code, chuẩn hóa thụt dòng, không đổi logic tính toán.
- `refactor:` Tối ưu hóa hàm tính toán hoặc tái cấu trúc thư mục scripts.
- `data:` Cập nhật dữ liệu sạch hoặc xuất bảng kết quả mới.

---

## 3. Điểm Chạm Chuyển Giao Giữa Các Thành Viên

Để dự án diễn ra trơn tru theo kế hoạch 12 tuần:

1. **Từ Thành viên A $\rightarrow$ Thành viên B (Cuối Tuần 3 - 08/11/2026):**
   - Bàn giao tệp dữ liệu sạch chuẩn hóa `data/processed/panel_data_clean.csv` và `panel_data.RData`.
   - Bàn giao báo cáo kiểm tra đa cộng tuyến (VIF, Heatmap ma trận tương quan).
   - Đảm bảo đủ 88 quốc gia LMICs, đầy đủ 8 chỉ báo vĩ mô giai đoạn 2015–2025.

2. **Từ Thành viên B $\rightarrow$ Thành viên C (Cuối Tuần 6 - 29/11/2026):**
   - Bàn giao code mô hình cơ sở (Pooled OLS, FEM, REM) và kết quả kiểm định Hausman, Wooldridge, Breusch-Pagan.
   - Bàn giao hàm ước lượng sai số chuẩn vững theo cụm (Cluster-robust Standard Errors).

3. **Từ Thành viên C $\rightarrow$ Toàn nhóm (Cuối Tuần 9 - 20/12/2026):**
   - Bàn giao kết quả mô hình TWFE biến trễ và bảng so sánh Sub-sample (Low-income vs Middle-income).
   - Họp nhóm rà soát thống nhất luận điểm cho Chương 4 và Chương 5.

---

## 4. Chuẩn Mực Code R (R Code Standards)

1. **Tính tái lập (Reproducibility):**
   - Tất cả đường dẫn file trong scripts phải là đường dẫn tương đối (relative path, ví dụ `data/raw/...`, không dùng `C:/Users/...` hay đường dẫn tuyệt đối cục bộ).
   - Thiết lập `set.seed(42)` nếu có các thủ tục ngẫu nhiên (bootstrap, resampling).
2. **Comment và Chú thích:**
   - Mỗi file script phải có phần Header ghi rõ: Mục đích, Đầu vào (Inputs), Đầu ra (Outputs), Tác giả phụ trách.
   - Chú thích lý do kinh tế học đằng sau mỗi bước biến đổi (ví dụ: lấy log, tạo biến trễ $t-1$).
3. **Quản lý Package:**
   - Khai báo rõ thư viện ở đầu script. Không sử dụng thư viện lạ ngoài danh mục trong `install_packages.R` mà chưa trao đổi trước với nhóm.

---

## 5. Quy Trình Review & Tạo Pull Request

- Trước khi tạo Pull Request (PR) hợp nhất vào `dev` hoặc `main`, hãy tự chạy lại toàn bộ script từ đầu đến cuối trên một môi trường sạch để chắc chắn không phát sinh lỗi.
- PR cần mô tả ngắn gọn:
  1. Những thay đổi đã thực hiện.
  2. Bảng biểu/kết quả đã xuất vào thư mục nào (`reports/figures/` hay `reports/tables/`).
  3. Yêu cầu ít nhất 1 thành viên khác trong nhóm review và approve.
