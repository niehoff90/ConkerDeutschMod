@echo off
setlocal enabledelayedexpansion

set "CURRENT_DIR=%~dp0"

set "XDELTA3=%CURRENT_DIR%bin\xdelta3.exe"
set "INPUT=%~1"
set "SHA1SUM=4cbadd3c4e0729dec46af64ad018050eada4f47a"
set "PATCH=%CURRENT_DIR%conker-deutsch_0.1.0.us.xdelta"
set "OUTPUT=%CURRENT_DIR%conker-deutsch_0.1.0.us.z64"

if "%INPUT%"=="" (
    set "message=Original ROM als Parameter angeben oder per Drag&Drop auf dieses Skript ziehen."
    goto ShowMessageBox
)

if not exist "%INPUT%" (
    set "message=ROM nicht gefunden!"
    goto ShowMessageBox
)

certutil -hashfile "%INPUT%" SHA1 | findstr /i /c:"%SHA1SUM%" > nul
if errorlevel 1 (
    set "message=Die angegebene Datei ist nicht die richtige ROM!"
    goto ShowMessageBox
)

if not exist "%PATCH%" (
    set "message=Patch Datei nicht gefunden!"
    goto ShowMessageBox
)

"%XDELTA3%" -d -f -s "%INPUT%" "%PATCH%" "%OUTPUT%"
if errorlevel 1 (
    set "message=Patch-Vorgang fehlgeschlagen!"
    goto ShowMessageBox
)

set "message=Patch-Vorgang abgeschlossen."
goto ShowMessageBox

:ShowMessageBox
mshta "javascript:var sh=new ActiveXObject('WScript.Shell');sh.Popup('%message%',0,'Information',64);close()"
exit /b
