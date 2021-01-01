set picture-location=%localappdata%\Forge\Cache\pics\cards\KAN
if exist "D:\m\Games\Forge 36\" (set forge-location=D:\m\Games\Forge 36)else (set /p forge-location="Enter Forge Path (I.E.: D:\m\Games\Forge 36) : ")

REM Pictures and Almost everything else
xcopy KAN "%picture-location%" /I /Y
xcopy .\Aimport\res "%forge-location%\res" /I /Y /S

REM Token Pictures
xcopy .\Aimport\res\tokens "%localappdata%\Forge\Cache\pics\tokens\" /I /Y /S

REM Compile Cards
if exist "%forge-location%\res\cardsfolder\cardsfolder" (Echo Cardfolder already unzipped) else (tar -xf "%forge-location%\res\cardsfolder\cardsfolder.zip")
cd "%forge-location%\res\cardsfolder"
start cmd.exe /C ZIP.bat

pause
Exit