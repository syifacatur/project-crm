# Project CRM Email & WhatsApp Integration

## Deskripsi

Project ini merupakan sistem **CRM (Customer Relationship Management)** yang digunakan untuk mengelola pengiriman **Email dan WhatsApp** kepada customer melalui dashboard web.

Sistem ini dibuat menggunakan:

* Laravel (Backend & Web Dashboard)
* Node.js (WhatsApp Bot)
* SMTP (Email Sending)
* MySQL Database

---

## Cara Instalasi Project

### 1. Clone Repository

```
git clone https://github.com/username/project-crm.git
cd project-crm
```

### 2. Install Dependency Laravel

```
composer install
```

### 3. Copy File Environment

```
cp .env.example .env
```

### 4. Generate Key Laravel

```
php artisan key:generate
```

### 5. Setup Database

Buka file `.env` lalu sesuaikan konfigurasi database:

```
DB_DATABASE=nama_database
DB_USERNAME=root
DB_PASSWORD=
```

Kemudian jalankan migration:

```
php artisan migrate
```

---

### 6. Install WhatsApp Bot

Masuk ke folder WA bot:

```
cd wa-bot
npm install
```

Jalankan bot:

```
node index.js
```

---

### 7. Jalankan Server Laravel

Kembali ke folder project utama lalu jalankan:

```
php artisan serve
```

Akses di browser:

```
http://127.0.0.1:8000
```

---

## Konfigurasi Email (SMTP)

Edit pada file `.env`

```
MAIL_MAILER=smtp
MAIL_HOST=mail.domain.com
MAIL_PORT=465
MAIL_USERNAME=email@domain.com
MAIL_PASSWORD=password
MAIL_ENCRYPTION=ssl
MAIL_FROM_ADDRESS=email@domain.com
MAIL_FROM_NAME="Customer Service"
```

---

## Fitur Sistem

* Kirim Email ke Customer
* Kirim WhatsApp Otomatis
* Dashboard Monitoring
* Integrasi Database
* Manajemen Data Customer

---

## Teknologi

* Laravel
* Node.js
* MySQL
* SMTP Mail Server
* WhatsApp Web API

---

## Author

**Syifa Catur Wicaksono**
