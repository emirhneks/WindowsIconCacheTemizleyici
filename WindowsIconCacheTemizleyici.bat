@echo off
set iconcache=%localappdata%\IconCache.db
set iconcache_x=%localappdata%\Microsoft\Windows\Explorer\iconcache*

echo.
echo IconCache.db dosyasını silmeden önce explorer işlemi geçici olarak sonlandırılmalıdır.
echo.
echo Devam etmeden önce TÜM AÇIK ÇALIŞMANIZI KAYDEDİN.
echo.
pause
echo.
If exist "%iconcache%" goto delete
echo.
echo %localappdata%\IconCache.db dosyası zaten silinmiş.
echo.
If exist "%iconcache_x%" goto delete
echo.
echo %localappdata%\Microsoft\Windows\Explorer\IconCache_*.db dosyaları zaten silinmiş.
echo.
exit /B

:delete
echo.
echo IconCache.db dosyaları silinmeye çalışılıyor...
echo.
ie4uinit.exe -show
taskkill /IM explorer.exe /F
timeout /t 2 >nul
del /A /F /Q "%iconcache%"
del /A /F /Q "%iconcache_x%"
start explorer.exe
