@echo off
echo If files doesn't appear, don't run as an administrator. Downloading in 3 seconds
timeout /t 3 /nobreak >nul
echo Downloading 7z.exe...
curl https://raw.githubusercontent.com/tomtep01/Executor/main/files/downloader/7z.exe > 7z.exe
if %errorlevel%==0  (
echo Success!
) else (
echo Downloading failed, skipping to next file (please try again later)
)
echo Downloading main files...
curl https://raw.githubusercontent.com/tomtep01/Executor/main/files/downloader/temp.zip > temp.zip
if %errorlevel%==0  (
echo Success!
) else (
echo Failed!
)
echo Extracting (if its not failed)
7z e -aoa temp.zip >nul
if %errorlevel%==0  (
echo Extracted!
) else (
echo Failed!
)
del 7z.exe
del temp.zip
echo Quitting in 4 seconds... Enjoy!
timeout /t 4 /nobreak >nul
exit
