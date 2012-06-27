@ECHO OFF

REM ===== GET DATETIME
REM http://stackoverflow.com/questions/1192476/windows-batch-script-format-date-and-time
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
set year=%date:~-4%
set month=%date:~4,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
set day=%date:~7,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%
set datetimef=%year%%month%%day%%hour%%min%%secs%

REM ===== MAKE BACKUP DIRECTORY
mkdir %datetimef%

REM ===== BACKUP START --- custom by yourself!
adb pull /sdcard/Android/obb/com.rayark.Cytus.full/ %datetimef%/Android/obb/com.rayark.Cytus.full/
adb pull /sdcard/DCIM/ %datetimef%/DCIM/
adb pull /sdcard/Download/ %datetimef%/Download/
adb pull /sdcard/Pictures/ %datetimef%/Pictures/
adb pull /sdcard/SketchBookMobile/ %datetimef%/SketchBookMobile/
adb pull /sdcard/TitaniumBackup/ %datetimef%/TitaniumBackup/
adb pull /sdcard/bluetooth/ %datetimef%/bluetooth/
adb pull /sdcard/data/com.teslacoilsw.launcher/backup/ %datetimef%/data/com.teslacoilsw.launcher/backup/
adb pull /sdcard/data/diewland/ %datetimef%/data/diewland/
adb pull /sdcard/doc/ %datetimef%/doc/
adb pull /sdcard/mindmaps/ %datetimef%/mindmaps/
adb pull /sdcard/rom/ %datetimef%/rom/
REM ===== BACKUP END

ECHO ====================================
ECHO backup complete --- %datetimef%
ECHO ====================================
PAUSE
