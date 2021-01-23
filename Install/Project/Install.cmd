@echo on

rem copy inlib library

set configure=%1
set platform=%2
set install_dir=%3
set solutionName=%4
set pwd=%CD%

cd ..\..\

set current_path=%cd%

set platform_short_name=x64
if %platform%==Win32 set platform_short_name=Win32

echo configure=%configure% platform=%platform% install_dir=%install_dir% pwd=%pwd% solutionName=%solutionName%

rem ����ԭʼĿ¼
mkdir %install_dir%

echo ====================Project:[%solutionName%]========================

set project=%solutionName%
set project_install_dir=%install_dir%\%project%\

rem ������ĿĿ¼
mkdir %project_install_dir%

set project_install_dir_header=%project_install_dir%\Include
set project_install_dir_lib=%project_install_dir%\%platform_short_name%\Lib\%configure%
set project_install_dir_bin=%project_install_dir%\%platform_short_name%\Bin\%configure%
set project_install_dir_plugin=%project_install_dir%\%platform_short_name%\Plugin

rem ��װͷ�ļ�
mkdir %project_install_dir_header%

xcopy /a /y  %current_path%\%project%\Include\*.h %project_install_dir_header%

rem ��װ���ļ�
mkdir %project_install_dir_lib%
mkdir %project_install_dir_bin%

xcopy /a /y  %current_path%\%platform%\%configure%\*.lib %project_install_dir_lib%
xcopy /a /y  %current_path%\%platform%\%configure%\*.dll %project_install_dir_bin%
xcopy /a /y  %current_path%\%platform%\%configure%\*.exe %project_install_dir_bin%
xcopy /a /y  %current_path%\%platform%\%configure%\*.pdb %project_install_dir_bin%

echo ------------------------------------------------------------------------------

cd %pwd%

pause
@echo on