@echo off

echo Installation des dependances...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://nodejs.org/dist/v20.18.2/node-v20.18.2-x64.msi', 'C:\temp\node-v20.18.2-x64.msi')"
msiexec /i "C:\temp\node-v20.18.2-x64.msi"
echo Veuillez maintenant faire l'installation de node js.
winget install Git.Git

echo Installation de EarthLink...
git clone https://github.com/darklink973/EarthLink_Launcher C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher
cd C:\Users\%USERNAME%\AppData\Local\EarthLink_Launcher
npm i && echo Nettoyage... && del "C:\temp\node-v20.18.2-x64.msi"
