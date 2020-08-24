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
<img width="261" alt="image" src="https://user-images.githubusercontent.com/41882267/91048635-20c37100-e646-11ea-89d8-9988f6f9ca29.png">


- Mở lại ZeekControl shell và start, nếu như sau thì là thành công:

<img width="239" alt="image" src="https://user-images.githubusercontent.com/41882267/91045157-a3493200-e640-11ea-8755-017eaeec44e5.png">
