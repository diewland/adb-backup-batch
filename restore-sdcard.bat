@ECHO OFF

IF [%1]==[] GOTO ERROR

REM ===== RESTORE START --- custom by yourself!
adb push %1%/Android/obb /sdcard/Android/obb/
adb push %1%/data/diewland /sdcard/data/diewland/
adb push %1%/doc /sdcard/doc/
REM adb push %1%/Download /sdcard/Download/
REM adb push %1%/mindmaps /sdcard/mindmaps/
REM adb push %1%/rom /sdcard/rom/
REM adb push %1%/SketchBookMobile /sdcard/SketchBookMobile/
adb push %1%/TitaniumBackup /sdcard/TitaniumBackup/
REM ===== RESTORE END

ECHO ====================================
ECHO restore complete --- %1%
ECHO ====================================
GOTO END

:ERROR
ECHO ====================================
ECHO please specific restore path
ECHO restore-sdcard.bat [restore-directory]
ECHO ====================================

:END
pause
