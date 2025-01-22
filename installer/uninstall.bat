@echo off

echo désinstallation en cours...
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher"
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher_Updater"

echo désinstallation des racourcis...
del "C:\%USERNAME%\cyl13\Desktop\Earthlink_Launcher.lnk"
del "C:\%USERNAME%\cyl13\Desktop\Earthlink_Launcher_Updater.lnk"
rmdir /S /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\EarthLink"

echo fini !
PAUSE