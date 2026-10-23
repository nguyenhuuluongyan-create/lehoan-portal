@echo off
chcp 65001 >nul
title Tự động cập nhật Code lên Cloud (Render / GitHub)
cd /d "%~dp0"

echo ====================================================================
echo   ĐỒNG BỘ MÃ NGUỒN LÊN GITHUB ^& TỰ ĐỘNG CẬP NHẬT TRÊN RENDER.COM
echo   Kho GitHub: https://github.com/nguyenhuuluongyan-create/lehoan-portal
echo ====================================================================
echo.

if exist "scripts\obfuscate.mjs" (
  node scripts/obfuscate.mjs
)

git add -A
git commit -m "Cap nhat giao dien & du lieu Cong Hoc Duong So"
git push origin main

echo.
echo   ✓ Đã đẩy code lên GitHub thành công!
echo   • Render.com sẽ tự động cập nhật lại tuvantamlihocduonglehoan.com sau ~30 giây.
echo.
pause
