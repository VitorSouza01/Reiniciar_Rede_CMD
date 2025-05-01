@echo off
echo Reiniciando conexoes de rede...
echo.

ipconfig /release
ipconfig /flushdns
ipconfig /renew
netsh int ip reset
netsh winsock reset

echo.
echo Rede reiniciada com sucesso!
echo Pressione qualquer tecla para sair...
pause > nul
