@echo off
:: Extrae el nombre de usuario interno
for /f "tokens=2 delims=\" %%a in ('whoami') do set REALUSER=%%a

cls
echo ===================================================
echo   CAMBIAR NOMBRE VISIBLE DE PANTALLA (HOTMAIL)
echo ===================================================
echo.

:: Pide el nuevo nombre y apellido
set /p COMPLENAME="Escribe tu NOMBRE y APELLIDO nuevos para la pantalla: "

:: Aplica el cambio en el perfil local de la cuenta vinculada
net user "%REALUSER%" /fullname:"%COMPLENAME%"

cls
echo ===================================================
echo   ¡PROCESO COMPLETADO!
echo ===================================================
echo.
echo El nombre que aparecera en la pantalla de inicio sera: %COMPLENAME%
echo Nota: Si la cuenta esta vinculada a Hotmail, Windows podria
echo volver a sincronizar el nombre de tu correo mas adelante.
echo.
pause
exit
