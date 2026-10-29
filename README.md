# 🛠️ Cambiador de Nombre Visible para Cuentas de Windows (Local/Vinculadas)

Este script de Batch (`.bat`) automatiza el proceso de **cambiar el nombre y apellido visibles en la pantalla de inicio de sesión de Windows**, incluso si la cuenta local está vinculada a un correo de Microsoft (Hotmail/Outlook).

## 🚀 Características
*   **Detección Automática:** Extrae el nombre de usuario interno real del sistema de forma automática.
*   **Interactivo:** Solicita al usuario el nuevo nombre y apellido directamente desde la consola.
*   **Cambio Inmediato:** Aplica las modificaciones en el perfil local utilizando comandos nativos del sistema.

## 📄 El Código (.bat)

```cmd
@echo off
:: Extrae el nombre de usuario interno
for /f "tokens=2 delims=\" %%a in ('whoami') do set "REALUSER=%%a"

cls
echo ==============================================
echo       CAMBIAR NOMBRE VISIBLE DE PANTALLA      
echo ==============================================
echo.

:: Pide el nuevo nombre y apellido
set /p "COMPLENAME=Escribe tu NOMBRE y APELLIDO nuevos para la pantalla: "

:: Aplica el cambio en el perfil local de la cuenta vinculada
net user "%REALUSER%" /fullname:"%COMPLENAME%"

cls
echo ==============================================
echo               PROCESO COMPLETADO              
echo ==============================================
echo.
echo El nombre que aparecera en la pantalla de inicio sera: %COMPLENAME%
echo.
echo [Nota]: Si la cuenta esta vinculada a Hotmail, Windows podria
echo volver a sincronizar el nombre de tu correo mas adelante.
echo.
pause
exit
```

## ⚙️ Requisitos y Uso

1.  **Ejecutar como Administrador:** Para que el comando `net user` funcione correctamente, debes hacer clic derecho sobre el archivo `.bat` y seleccionar **"Ejecutar como administrador"**.
2.  **Cuentas Microsoft:** Como indica la nota del script, si tu cuenta de Windows está sincronizada con Hotmail/Outlook, los servidores de Microsoft podrían restablecer el nombre original en la próxima sincronización en línea.

## 🤝 Contribuciones
¡Las optimizaciones son bienvenidas! Si encuentras algún error o quieres mejorar la compatibilidad con cuentas Azure AD o de dominio, no dudes en abrir un *Pull Request*.

## Creado por rTech
