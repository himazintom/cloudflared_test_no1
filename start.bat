@echo off
chcp 65001 >nul
cls

echo ==================================
echo Cloudflare Tunnel wo kidou chuu...
echo ==================================
echo.

docker-compose up -d --build

echo.
echo Tunnel URL wo shutoku chuu...
timeout /t 8 /nobreak >nul

echo.
echo ==================================
echo Setup kanryou!
echo ==================================
echo.
echo Omedetou gozaimasu!
echo.
echo Kochira no URL de access shite mite!!!
echo.

echo ==========================================
docker-compose logs cloudflared 2>nul | findstr "https://"
echo ==========================================

echo.
echo.
echo Moshi URL ga hyouji sarenai baai wa:
echo    docker-compose logs cloudflared
echo.
echo ==================================
echo.
echo Hint:
echo   - Smart phone kara mo access dekimasu
echo   - URL wa kidou suru tabi ni kawarimasu
echo   - Log wo miru: docker-compose logs -f
echo   - Teishi suru: docker-compose down
echo.
pause
