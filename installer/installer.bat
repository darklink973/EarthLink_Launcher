@echo off

echo Installation des dependances...
mkdir "C:/temp"
powershell -Command "Invoke-WebRequest https://nodejs.org/dist/v20.18.2/node-v20.18.2-x64.msi -OutFile C:\temp\node-v20.18.2-x64.msi"
msiexec /i "C:\temp\node-v20.18.2-x64.msi"
winget install Git.Git

echo Installation de EarthLink...
git clone https://github.com/darklink973/EarthLink_Launcher C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher
cd C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher

mkdir C:\"ProgramData"\"Microsoft"\"Windows"\"Start Menu"\"Programs"\"EarthLink"\
xcopy /s /y C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher\installer\Earthlink_Launcher.lnk C:\"ProgramData"\"Microsoft"\"Windows"\"Start Menu"\"Programs"\"EarthLink"\
xcopy /s /y C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher\installer\Earthlink_Launcher.lnk C:\Users\%USERNAME%\Desktop

mkdir C:\Users\%USERNAME%\AppData\Local\Earthlink_Launcher_Updater
xcopy /s /y C:\Users\%USERNAME%\Documents\GitHub\EarthLink_Launcher\installer\updater.exe C:\Users\%USERNAME%\AppData\Local\Earthlink_Launcher_Updater\
mkdir C:\Users\%USERNAME%\AppData\Local\Earthlink_Launcher_Updater\debug
xcopy /s /y C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher\installer\installer.bat C:\Users\%USERNAME%\AppData\Local\Earthlink_Launcher_Updater\debug
xcopy /s /y C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher\installer\updater.bat C:\Users\%USERNAME%\AppData\Local\Earthlink_Launcher_Updater\debug
xcopy /s /y C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher\installer\Earthlink_Launcher_Updater.lnk C:\"ProgramData"\"Microsoft"\"Windows"\"Start Menu"\"Programs"\"EarthLink"\
xcopy /s /y C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher\installer\Earthlink_Launcher_Updater.lnk C:\Users\%USERNAME%\Desktop

npm i && echo Nettoyage... && del "C:\temp\node-v20.18.2-x64.msi" && rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher\installer\"