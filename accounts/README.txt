==========================================================
HƯỚNG DẪN CẤU HÌNH RIÊNG CHO TỪNG ACCOUNT
==========================================================

Nếu bạn muốn mỗi nick farm theo kiểu khác nhau (vd: nick 1 chỉ hunt, nick 2 chỉ gamble), hãy tạo một file trong thư mục này với định dạng tên:

   account_<Mã Hash SHA-256>.env

Mã Hash này có thể xem tại file: DANH_SACH_ID_TAI_KHOAN.txt (trong cùng thư mục này).
Ví dụ: Trong file đó ghi "[Account 1] --> Mã Hash: a3f9b2c8e1d4"
→ Bạn tạo file: account_a3f9b2c8e1d4.env

Bên trong file ghi giống .env gốc, vd:
AUTO_HUNT=true
AUTO_GAMBLE_CF=false
COOKIE_TARGET_ID=123456789

⚠️ CÁC KEY KHÔNG ĐƯỢC PHÉP GHI ĐÈ (CẤM):
- LICENSE_KEY
- CAPTCHA_API_KEY
- WEBHOOK_URL, LOG_WEBHOOK_URL
- NOTIFY_BOT_TOKEN, ADMIN_ID

* LƯU Ý: Mỗi khi chỉnh sửa file cấu hình .env riêng, bạn bắt buộc phải KHỞI ĐỘNG LẠI (Restart) tool để cấu hình mới có hiệu lực.
Nick nào KHÔNG có file riêng → tự động dùng file .env global ngoài cùng.
==========================================================