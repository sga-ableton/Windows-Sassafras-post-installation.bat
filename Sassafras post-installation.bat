@echo off


:: Set EDITION and VERSION to match the Live version you are using
Set "EDITION=Live 12 Suite"
Set "VERSION=12.0.20"

:: ------No further configuration below this line ----------------------------------------------------

:: Create shared preferences folder 
mkdir "C:\ProgramData\Ableton\CommonConfiguration\Live %VERSION%\Preferences\" 2>nul


:: Create Options.txt file and add relevant entries
echo -LicenseServer > "%ProgramData%\Ableton\CommonConfiguration\Live %VERSION%\Preferences\Options.txt"
echo -_DisableAutoUpdates >> "%ProgramData%\Ableton\CommonConfiguration\Live %VERSION%\Preferences\Options.txt"

:: Create a shared Packs folder
mkdir "%PUBLIC%\Documents\Ableton Live Packs

:: Copy Live application to Start Menu for all users
xcopy /Y "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Ableton %EDITION%.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\" 2>nul
