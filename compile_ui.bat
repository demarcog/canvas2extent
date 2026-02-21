rem @echo off
set OSGEO4W_ROOT=Y:\OSGEOW64_INST
call "%OSGEO4W_ROOT%\bin\o4w_env.bat"
call "%OSGEO4W_ROOT%\bin\qt5_env.bat"
call "%OSGEO4W_ROOT%\bin\py3_env.bat"

:: Compile UI file
pyuic5 --from-imports canvas2extent_dialog_base.ui -o ui_canvas2extent_dialog.py

:: Compile resources
pyrcc5 resources.qrc -o resources_rc.py