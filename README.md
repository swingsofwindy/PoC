# Hướng dẫn triển khai EC2 bằng Terraform

## Chuẩn bị môi trường
### Yêu cầu:
- **Tài khoản AWS** (đã có quyền tạo EC2): [Đăng ký tại đây](https://aws.amazon.com/)
- **Terraform** (đã cài đặt trên máy): [Tải về tại đây](https://www.terraform.io/downloads.html)
- **AWS CLI** (để kiểm tra và quản lý tài nguyên): [Tải về tại đây](https://aws.amazon.com/cli/)
- **SSH Key** (để kết nối vào EC2):
  
  Chạy lệnh sau trên PowerShell hoặc Terminal:
  ```sh
  ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
  ```
  File `id_rsa.pub` sẽ được dùng để cấu hình SSH vào EC2.

## File Terraform

📌 **Link GitHub**: [Repo của bạn tại đây](#)

## Triển khai Terraform

### 1. Khởi tạo Terraform
```sh
terraform init
```

### 2. Kiểm tra kế hoạch triển khai
```sh
terraform plan
```

### 3. Áp dụng Terraform để tạo EC2
```sh
terraform apply -auto-approve
```

## Kết nối SSH vào EC2
1. **Đăng nhập AWS Console** → Vào **EC2** → Kiểm tra instance mới → Lấy **public IP**.
2. Kết nối SSH bằng lệnh:
   ```sh
   ssh -i ~/.ssh/id_rsa ec2-user@xx.xx.xx.xx
   ```
   ⚠️ Với `xx.xx.xx.xx` là **public IP** của instance.

## Xóa EC2
Để xóa toàn bộ hạ tầng đã tạo bằng Terraform, chạy lệnh:
```sh
terraform destroy -auto-approve
```
🚀 **Sau khi chạy lệnh này, Terraform sẽ xóa toàn bộ tài nguyên đã tạo trên AWS.**
