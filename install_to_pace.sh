#!/bin/bash
# ========================================================
# Script Install APK ke Smartwatch Amazfit Pace
# Pastikan ADB aktif dan jam terhubung lewat docking USB
# ========================================================

echo "[1/3] Memeriksa koneksi Amazfit Pace via ADB..."
adb devices

echo ""
echo "[2/3] Meng-install APK ke Amazfit Pace..."
adb install -r app-debug.apk

echo ""
echo "[3/3] Menjalankan aplikasi di smartwatch..."
adb shell am start -n com.amazfit.remindersholat.jepara/.MainActivity

echo "Selesai! Aplikasi sudah terpasang di Amazfit Pace."
