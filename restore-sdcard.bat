@ECHO OFF

IF [%1]==[] GOTO ERROR

REM ===== RESTORE START --- custom by yourself!
REM adb push %1%/DCIM /sdcard/DCIM/
REM adb push %1%/Download /sdcard/Download/
REM adb push %1%/Pictures /sdcard/Pictures/
adb push %1%/SketchBookMobile /sdcard/SketchBookMobile/
adb push %1%/TitaniumBackup /sdcard/TitaniumBackup/
adb push %1%/data/diewland /sdcard/data/diewland/
adb push %1%/data/com.keramidas.TitaniumBackup /sdcard/data/com.keramidas.TitaniumBackup/
adb push %1%/doc /sdcard/doc/
adb push %1%/mindmaps /sdcard/mindmaps/
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
