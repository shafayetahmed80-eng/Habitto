# Habitto - Premium Streetwear E-Commerce Platform

Habitto is a modern, high-performance streetwear e-commerce platform built on **Laravel 12 / PHP 8.2** using **Botble CMS** and the **Ninico** theme, tailored specifically for Bangladesh's fashion and streetwear market.

---

## 🌟 Key Features

- **Full-Bleed Streetwear Visuals:** Optimized high-resolution fashion photoshoot banners, category cards, and responsive hero sliders.
- **Bangladesh E-Commerce Ready:**
  - Cash on Delivery (COD) enabled.
  - Bangladesh nationwide delivery trust badges & district/upazila shipping configuration.
  - Cleaned & optimized plugin stack (deactivated unneeded international gateways).
- **Instant Server-Side Rendering (SSR):** Shortcodes tuned for rapid First Contentful Paint (FCP) without placeholder loading lag.
- **Full Database Dump Included:** Ready-to-import database located at `database/habitto_backup.sql`.

---

## 🚀 Hostinger Deployment Guide (হোস্টিংগারে ডেপ্লয় করার নিয়ম)

### Step 1: Create Database in Hostinger hPanel
1. Log in to Hostinger **hPanel** -> Navigate to **Databases** -> **MySQL Databases**.
2. Create a new database (e.g., `u123456_habitto`), username, and strong password. Note them down.
3. Open **phpMyAdmin** for this database.
4. Click **Import** -> Choose file `database/habitto_backup.sql` from this repository -> Click **Go**.

### Step 2: Deploy Code via Hostinger Git
1. In hPanel, go to **Advanced** -> **Git**.
2. Enter your repository URL: `https://github.com/shafayetahmed80-eng/Habitto.git`.
3. Set Branch to `main`.
4. Install Directory:
   - For Subdomain: `public_html/subdomain` or target folder assigned to your subdomain.
   - For Main Domain: `public_html`.
5. Click **Create** / **Deploy**.

### Step 3: Configure Environment (`.env`)
1. In Hostinger **File Manager**, copy `.env.example` to `.env`.
2. Edit `.env` and update the following values:
   ```env
   APP_NAME="Habitto"
   APP_ENV=production
   APP_DEBUG=false
   APP_URL=https://your-subdomain.yourdomain.com

   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=your_hostinger_database_name
   DB_USERNAME=your_hostinger_database_user
   DB_PASSWORD=your_hostinger_database_password
   ```

### Step 4: Run Composer & Optimize (Via SSH or Terminal)
In Hostinger **SSH / Terminal** in your project root:
```bash
composer install --no-dev --optimize-autoloader
php artisan key:generate
php artisan config:cache
php artisan route:cache
php artisan view:cache
```

---

## 🔄 সাবডোমেন থেকে মেইন ডোমেইনে পরিবর্তনের সহজ নিয়ম (Subdomain to Main Domain Migration)

আপাতত সাবডোমেইনে (যেমন `test.habittobd.com`) সাইটটি লাইভ করার পর ভবিষ্যতে যেকোনো সময় মূল ডোমেইনে (`habittobd.com`) স্থানান্তর করা অত্যন্ত সহজ:

1. **Hostinger Domain Management:** hPanel থেকে ওয়েবসাইটটির রুট ডিরেক্টরি সাবডোমেইন ফোল্ডার থেকে মূল ডোমেইনে পয়েন্ট করুন (বা ফাইলগুলো `public_html`-এ নিয়ে আসুন)।
2. **`.env` ফাইল আপডেট:**
   `.env` ফাইলে শুধুমাত্র `APP_URL` পরিবর্তন করুন:
   ```env
   # পূর্বে:
   APP_URL=https://test.habittobd.com

   # বর্তমানে:
   APP_URL=https://habittobd.com
   ```
3. **ক্যাশে ক্লিয়ার করুন:**
   হোস্টিংগার টার্মিনালে বা অ্যাডমিন প্যানেল থেকে ক্যাশে ক্লিয়ার করুন:
   ```bash
   php artisan optimize:clear
   php artisan config:cache
   ```
4. **ডাটাবেজ ইউআরএল আপডেট (যদি প্রয়োজন হয়):**
   Botble CMS মূলত রিলেটিভ পাথ ব্যবহার করে। তবুও যদি কোনো স্পেসিফিক পেজ বা ব্লগে পুরোনো সাবডোমেন ইউআরএল থাকে, অ্যাডমিন প্যানেল থেকে একবার পেজগুলো সেভ করে নিলেই স্বয়ংক্রিয়ভাবে মেইন ডোমেইনে আপডেট হয়ে যায়।

---

## 🛠 Tech Stack
- **Framework:** Laravel 12.x
- **PHP Version:** 8.2+
- **Theme:** Ninico (Botble Core)
- **Database:** MySQL 8 / MariaDB 10.4+
- **CSS / Styling:** Bootstrap 5, Custom Ninico SCSS
