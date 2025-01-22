@echo off

echo désinstallation en cours...
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher_Updater"
echo désinstallation des racourcis...
del "C:\Users\%USERNAME%\Desktop\Earthlink_Launcher.lnk"
del "C:\Users\%USERNAME%\Desktop\Earthlink_Launcher_Updater.lnk"
rmdir /S /Q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\EarthLink"
rmdir /S /Q C:\"Users"\%USERNAME%\"AppData"\"Roaming"\"Earthlink Launcher"
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Roaming\.earthlinklauncher"

echo fini !
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher"
PAUSE