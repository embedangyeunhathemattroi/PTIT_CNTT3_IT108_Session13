# Hệ thống SmartFarm Monitor

## Hướng dẫn chạy script

Mở PowerShell tại thư mục `scripts` và chạy:

```powershell
.\auto_report.ps1
```

Nếu bị chặn, chạy:

```powershell
powershell -ExecutionPolicy Bypass -File .\auto_report.ps1
```

## Checklist kiểm tra thiết bị

- [x] Kiểm tra danh sách thiết bị.
- [ ] Kiểm tra kết nối các trạm cảm biến.
- [ ] Kiểm tra dung lượng RAM và lưu trữ.

## Bảng thông số phần cứng

| Tên thiết bị | Đơn giá | Loại storage |
|---|---:|---|
| Raspberry Pi 4 Model B | 1,450,000 | SSD |
| Intel NUC i3 | 6,200,000 | SSD |
| Orange Pi 5 | 2,300,000 | SSD |

## Phân tích hệ thống

### IPO của chức năng lọc log

- **Input:** File nhật ký `log-he-thong.log`.
- **Process:** Lọc các dòng ERROR, CRITICAL và đếm số sự cố.
- **Output:** File `bao-cao-su-co.txt` chứa các dòng lỗi và tổng số sự cố.

### Phân loại DIKW

- **Data – Dữ liệu:** (b) Một dòng log ghi nhận lỗi của sensor-03.
- **Information – Thông tin:** (c) Hôm nay có 8 sự cố, trong đó sensor-03 có 4 sự cố.
- **Knowledge – Tri thức:** (d) Sensor-03 hay mất kết nối vào buổi chiều do sóng yếu, cần thêm anten.
- **Wisdom – Trí tuệ:** (a) Quyết định thay modem sensor-03 trước thứ Sáu.