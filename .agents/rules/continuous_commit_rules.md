# QUY TẮC COMMIT LIÊN TỤC & ĐẶT TÊN CÓ QUY LUẬT (CONTINUOUS & ATOMIC COMMITS)

Tài liệu này là quy tắc bắt buộc áp dụng cho mọi tương tác và lần chạy code trong kho lưu trữ.

---

## 1. Nguyên Tắc Commit Liên Tục & Chia Nhỏ (Atomic Commits)
1. **Commit theo từng chặng chạy (Step-by-Step Commits):**
   - Tuyệt đối KHÔNG gộp nhiều bước chạy thực nghiệm vào một commit duy nhất.
   - Mỗi khi một script hoàn thành việc tạo ra sản phẩm (output) xác định (dữ liệu sạch, bảng thống kê, biểu đồ hoặc mô hình hồi quy), Agent BẮT BUỘC phải thực hiện commit ngay trước khi chuyển sang bước tiếp theo.
2. **Tính độc lập & hoàn chỉnh (Self-contained):**
   - Mỗi commit phải đại diện cho một trạng thái nhất quán của dự án.
   - Khi `git checkout` về bất kỳ commit nào trong lịch sử, code của bước đó phải chạy được và file kết quả đi kèm phải toàn vẹn.

---

## 2. Quy Luật Đặt Tên Commit (Standardized Naming Convention)

Mọi commit bắt buộc tuân theo công thức:

```
<type>(<scope>): <mô tả hành động cụ thể> | <kết quả/output tạo ra>
```

### Các nhóm `<type>` và `<scope>` quy chuẩn:
1. **`data(cleaning)`**: Cho các lần chạy lọc mẫu, xử lý khuyết tật hoặc biến đổi dữ liệu.
   - *Mẫu chuẩn:* `data(cleaning): filter 88 balanced LMICs (2015-2025) and export panel_data_clean.csv`
2. **`feat(eda)`**: Cho các lần chạy thống kê mô tả, ma trận tương quan và biểu đồ khám phá.
   - *Mẫu chuẩn:* `feat(eda): compute summary statistics and export correlation heatmap with Okun/Phillips plots`
3. **`feat(baseline)`**: Cho các lần ước lượng mô hình cơ sở, kiểm định chọn mô hình và khắc phục khuyết tật.
   - *Mẫu chuẩn:* `feat(baseline): estimate Pooled OLS, FEM, REM and apply cluster-robust SE`
4. **`feat(causal)`**: Cho các lần chạy mô hình Two-Way Fixed Effects và biến trễ 1 kỳ.
   - *Mẫu chuẩn:* `feat(causal): estimate TWFE model with 1-period lagged regressors`
5. **`feat(subsample)`**: Cho các lần chạy phân tích phân nhóm kinh tế (Low-income vs Middle-income).
   - *Mẫu chuẩn:* `feat(subsample): estimate heterogeneity models for low vs middle income groups`
6. **`docs(...)`**: Cho các cập nhật tài liệu lý thuyết, quy tắc hoặc bản thảo báo cáo.
   - *Mẫu chuẩn:* `docs(rules): enforce continuous atomic commit rules and execution pipeline plan`
7. **`fix(...)`**: Cho việc khắc phục lỗi phát sinh trong quá trình chạy script.

---

## 3. Quy Trình Commit Chuẩn Sau Mỗi Lần Chạy
```bash
git add <các file script liên quan> <các file output mới sinh ra trong data/ hoặc reports/>
git status # Rà soát đúng các file của bước đó
git commit -m "<type>(<scope>): <mô tả rõ ràng hành động và output>"
```
