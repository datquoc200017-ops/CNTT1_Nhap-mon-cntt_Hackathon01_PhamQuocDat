# BÀI LÀM – HACKATHON 01

- **Mã đề:** 19
- **Họ tên:** Phạm Quốc Đạt
- **Lớp:** CNTT1
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
pwd  
get-childitem -Force -Recurse
mv lich_trinh.txt D:\Thi_giua_ki\starter-kit\starter-kit\du-lich-website\docs
mv logo_du_lich.png D:\Thi_giua_ki\starter-kit\starter-kit\du-lich-website\media
cp media/logo_du_lich.png backup/  
rm "*.tmp"                     
cd logs
ls                              
cd ..




```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
(    Directory: D:\Thi_giua_ki\starter-kit\starter-kit\du-lich-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   7:51 AM                backup
d-----        10/28/2026   7:41 AM                data
d-----        10/28/2026   7:50 AM                docs
d-----        10/28/2026   7:41 AM                logs
d-----        10/28/2026   7:50 AM                media
-a----        10/27/2026   1:32 AM             66 .env


    Directory: D:\Thi_giua_ki\starter-kit\starter-kit\du-lich-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           4471 logo_du_lich.png


    Directory: D:\Thi_giua_ki\starter-kit\starter-kit\du-lich-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6087 dat_tour_thang_8.xlsx


    Directory: D:\Thi_giua_ki\starter-kit\starter-kit\du-lich-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             58 lich_trinh.txt


    Directory: D:\Thi_giua_ki\starter-kit\starter-kit\du-lich-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1044 travel.log


    Directory: D:\Thi_giua_ki\starter-kit\starter-kit\du-lich-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           4471 logo_du_lich.png

)

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
get-content logs/travel.log 
select-string "ERROR" logs/travel.log
select-string "ERROR" logs/travel.log | out-file logs/daily_report.txt -Append

```

### 2 dòng lỗi đầu tiên trong daily_report.txt
`Get-content logs/daily_report.txt -head 3`
```
logs\travel.log:3:2026-08-28 08:30:34 [ERROR] Khong tim thay trang /tour-he (404)
logs\travel.log:5:2026-08-28 08:36:34 [ERROR] Giu cho that bai


```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [X] Heading 1: tên dự án
- [X] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [X] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [X] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [X] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [X] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# Script: auto_report.ps1 
# Tac gia: Pham Quoc Dat
# Ngay tao: 28/10/2026



Write-Host "Dang loc log...."


"=== BAO CAO LOI ===" > logs/auto_report.txt
Get-content logs/travel.log | Select-string "ERROR" |Out-file logs/auto_report.txt -Append


```

### Kết quả hiển thị

```text
=== BAO CAO LOI ===

2026-08-28 08:30:34 [ERROR] Khong tim thay trang /tour-he (404)
2026-08-28 08:36:34 [ERROR] Giu cho that bai
2026-08-28 08:42:34 [ERROR] Het thoi gian cho (timeout)
2026-08-28 08:51:34 [ERROR] Giu cho that bai
2026-08-28 08:54:34 [ERROR] Khong tim thay trang /tour-he (404)
2026-08-28 09:09:34 [ERROR] Khong tim thay trang /tour-he (404)




```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
Get-content logs/travel.log | Select-string "ERROR" |Measure-Object

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text


Count    : 6
Average  :
Sum      :
Maximum  :
Minimum  :
Property :



```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
 add-content  logs/tong_hop.txt "=== TONG HOP LOG ==="     
 select-string "WARNING" logs/travel.log |Out-file logs/tong_hop.txt -Append
 select-string "ERROR" logs/travel.log |Out-file logs/tong_hop.txt -Append


```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===
logs\travel.log:4:2026-08-28 08:33:34 [WARNING] Thoi gian tai trang cham
logs\travel.log:8:2026-08-28 08:45:34 [WARNING] Thoi gian tai trang cham
logs\travel.log:18:2026-08-28 09:15:34 [WARNING] Thoi gian tai trang cham



logs\travel.log:3:2026-08-28 08:30:34 [ERROR] Khong tim thay trang /tour-he (404)
logs\travel.log:5:2026-08-28 08:36:34 [ERROR] Giu cho that bai
logs\travel.log:7:2026-08-28 08:42:34 [ERROR] Het thoi gian cho (timeout)
logs\travel.log:10:2026-08-28 08:51:34 [ERROR] Giu cho that bai
logs\travel.log:11:2026-08-28 08:54:34 [ERROR] Khong tim thay trang /tour-he (404)
logs\travel.log:16:2026-08-28 09:09:34 [ERROR] Khong tim thay trang /tour-he (404)




```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/dat_tour_thang_8.xlsx`, không cần ghi vào đây.
