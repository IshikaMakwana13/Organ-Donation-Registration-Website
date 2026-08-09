@echo off
title IIS Express - Organ Donation Website (Port 8080)
color 0A
echo.
echo  =====================================================
echo   ORGAN DONATION WEBSITE - IIS Express Server
echo   URL: http://localhost:8080/0_START_PAGE.aspx
echo   Admin: Username=ISHIKA  Password=MAKWANA
echo  =====================================================
echo.
echo  Starting server... Do NOT close this window.
echo.

"C:\Program Files\IIS Express\iisexpress.exe" /path:"d:\ISHIKA\PROJECT\ORGAN DONATION WEBSITE\LAB\FINAL\PROJECT" /port:8080 /clr:v4.0

echo.
echo  Server stopped. Press any key to restart or close this window to exit.
pause
