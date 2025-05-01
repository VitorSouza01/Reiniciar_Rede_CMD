@echo off
title Reiniciar Rede
color 0A

echo ===============================
echo    Reiniciando Rede...
echo ===============================
echo.

echo Desativando adaptadores de rede...
ipconfig /release
echo.

echo Limpando cache DNS...
ipconfig /flushdns
echo.

echo Renovando IP...
ipconfig /renew
echo.

echo Resetando pilha TCP/IP...
netsh int ip reset
echo.

echo Resetando Winsock...
netsh winsock reset
echo.

echo ===============================
echo    Rede reiniciada!
echo    Pressione qualquer tecla para sair...
echo ===============================

pause > nul
