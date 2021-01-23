@echo off
pushd %1 & for %%i in (.) do set curr=%%~ni
echo %curr%
del %~dp0%curr%.suo
del %~dp0%curr%.sdf
rd /s /q  %~dp0Win32
rd /s /q  %~dp0%curr%\Win32
rd /s /q  %~dp0Install\Debug
rd /s /q  %~dp0Install\Release
rd /s /q  %~dp0Install\Win32
rd /s /q  %~dp0UnitTest\Debug
rd /s /q  %~dp0UnitTest\Release
rd /s /q  %~dp0UnitTest\Win32
rd /s /q  %~dp0ipch
rd /s /q  %~dp0x64
rd /s /q  %~dp0%curr%\x64
rd /s /q  %~dp0Install\x64
rd /s /q  %~dp0UnitTest\x64
pause