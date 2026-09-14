# Panduan Install APK ke Amazfit Pace (Android 5.1 Lollipop)

## 1. Spesifikasi Aplikasi
- Nama: Reminder Sholat Jepara
- Package: com.amazfit.remindersholat.jepara
- Target OS: Android 5.1 (API 22) - Amazfit OS
- Resolusi Layar: 320x300 Circular Transflective

## 2. Cara Compile APK
Pilihan A: Buka folder ini di **Android Studio**, lalu klik **Build > Build Bundle(s) / APK(s) > Build APK(s)**.
Pilihan B: Lewat Command Prompt / Terminal:
```bash
./gradlew assembleDebug
```
File APK akan berada di: `app/build/outputs/apk/debug/app-debug.apk`

Pilihan C: Menggunakan **GitHub Actions** (Tanpa install Android Studio).
File workflow sudah disertakan di `.github/workflows/build-apk.yml`. Cukup push repository ini ke GitHub, masuk tab Actions, lalu unduh APK yang selesai di-compile!

## 3. Cara Install APK ke Smartwatch Amazfit Pace
1. Aktifkan **ADB Debugging** di Amazfit Pace:
   - Buka jam, masuk ke **Settings > About**.
   - Ketuk pada bagian **ROM Version** sebanyak 10 kali secara cepat.
   - Akan muncul menu **Lab Mode / Developer Options**.
   - Masuk ke Lab Mode dan aktifkan **ADB Debugging**.
2. Pasang jam tangan ke kabel docking charger USB dan colokkan ke laptop/PC.
3. Buka Terminal / CMD di PC dan jalankan perintah:
   ```bash
   adb devices
   ```
   (Pastikan muncul ID perangkat jam tangan).
4. Install file APK:
   ```bash
   adb install -r app-debug.apk
   ```
5. Jalankan aplikasi di smartwatch:
   ```bash
   adb shell am start -n com.amazfit.remindersholat.jepara/.MainActivity
   ```
6. Aplikasi akan langsung terbuka di layar jam tangan Amazfit Pace!
