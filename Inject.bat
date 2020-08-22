REM Pictures and Almost everything else
xcopy KAN "C:\Users\matth\AppData\Local\Forge\Cache\pics\cards\KAN" /I /Y
xcopy D:\m\File\Cards\Aimport\res "D:\m\Games\Forge 36\res" /I /Y /S

REM Compile Cards
cd "D:\m\Games\Forge 36\res\cardsfolder"
start cmd.exe /C "D:\m\Games\Forge 36\res\cardsfolder\ZIP.bat"

REM Token Pictures
xcopy "D:\m\File\Cards\Aimport\res\tokens" "C:\Users\matth\AppData\Local\Forge\Cache\pics\tokens" /I /Y /S

pause