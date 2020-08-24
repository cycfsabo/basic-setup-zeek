# Cài đặt cơ bản zeek
- Chuyển qua user root.
- Cài đặt git trên máy bằng lệnh:
```
apt install git
```
- Tải về file zeek_install.sh. Để tải về source code mới nhất cũng như cài đặt zeek, sử dụng lệnh:
```
bash zeek_install.sh
```
- Sau khi cài đặt hoàn tất, thiết lập biến môi trường bằng lệnh:
```
export PATH=/usr/local/zeek/bin:$PATH
```
<img width="466" alt="image" src="https://user-images.githubusercontent.com/41882267/91052264-69c9f400-e64b-11ea-9931-fbff63a1981a.png">

- Mở ZeekControl shell bằng lệnh:
```
zeekctl
```
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
