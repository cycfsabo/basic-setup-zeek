# Cài đặt cơ bản Zeek
*Lưu ý: Mặc định code hoạt động trên Ubuntu hoặc DEB/Debian-based Linux. Trong file zeek_install.sh có sẵn lệnh cài các required dependencies cho RPM/RedHat-based Linux hoặc FreeBSD, có thể sửa lại bằng cách comment hoặc bỏ comment*

- Chuyển qua user root.
- Cài đặt git trên máy bằng lệnh:
```
apt install git
```
- Tải về file zeek_install.sh. Để tải về source code mới nhất và cài đặt Zeek, sử dụng lệnh:
```
bash zeek_install.sh
```
- Sau khi cài đặt hoàn tất, sửa biến PATH bằng lệnh:
```
nano /etc/environment
```
Thêm vào PATH đoạn "/usr/local/zeek/bin:"

<img width="834" alt="image" src="https://user-images.githubusercontent.com/41882267/91059838-69822680-e654-11ea-91c8-1b0acfd71453.png">

- Để ấn định thay đổi, sử dụng lệnh:
```
source /etc/environment
```
- Mở ZeekControl shell bằng lệnh:
```
zeekctl
```
<img width="285" alt="image" src="https://user-images.githubusercontent.com/41882267/91052326-8108e180-e64b-11ea-96f4-dfeb10d11ac9.png">

- Đối với lần đầu tiên sử dụng shell, thực hiện cấu hình ZeekControl bằng lệnh:
```
[ZeekControl] > install
```
<img width="629" alt="image" src="https://user-images.githubusercontent.com/41882267/91044186-10f45e80-e63f-11ea-992c-091bd132d868.png">

- Start Zeek bằng lệnh:
```
start
```
- Lưu ý sửa lỗi "Error: zeek terminated immediately after starting; check output with "diag"" khi start bằng cách sử dụng lệnh:
```
nano -c /usr/local/zeek/etc/node.cfg
```
Sau đó sửa dòng 11 (eth0 thành interface trên máy).

<img width="736" alt="image" src="https://user-images.githubusercontent.com/41882267/91049020-bbbc4b00-e646-11ea-91ee-b3c335c33d01.png">

- Mở lại ZeekControl shell, start và stop không còn báo lỗi:

<img width="261" alt="image" src="https://user-images.githubusercontent.com/41882267/91048635-20c37100-e646-11ea-89d8-9988f6f9ca29.png">

