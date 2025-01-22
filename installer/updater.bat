@echo off

echo Mise à jour...
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher"

git clone https://github.com/darklink973/EarthLink_Launcher C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher
cd C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher

npm i && echo Nettoyage... && rmdir /S /Q "C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher\installer\"