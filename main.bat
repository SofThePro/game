@echo off
title Custom Command Prompt

:menu
cls
echo Custom Command Prompt Setup
echo ===========================
echo 1. Change color
echo 2. Change title
echo 3. Change prompt
echo 4. Reset to default
echo 5. Exit
echo.

set /p choice=Enter your choice (1-5): 

if "%choice%"=="1" goto change_color
if "%choice%"=="2" goto change_title
if "%choice%"=="3" goto change_prompt
if "%choice%"=="4" goto reset_default
if "%choice%"=="5" goto end

echo Invalid choice. Please try again.
pause
goto menu

:change_color
echo.
echo Available colors: 0=Black 1=Blue 2=Green 3=Aqua 4=Red 5=Purple 6=Yellow 7=White 8=Gray
echo 9=Light Blue A=Light Green B=Light Aqua C=Light Red D=Light Purple E=Light Yellow F=Bright White
echo.
set /p bg=Enter background color code: 
set /p fg=Enter foreground color code: 
color %bg%%fg%
goto menu

:change_title
echo.
set /p new_title=Enter new title: 
title %new_title%
goto menu

:change_prompt
echo.
set /p new_prompt=Enter new prompt: 
prompt %new_prompt%
goto menu

:reset_default
color 07
title Command Prompt
prompt $P$G
goto menu

:end
echo Exiting custom setup. Your changes will remain for this session.
echo To make changes permanent, you need to modify the Windows Registry.
pause
