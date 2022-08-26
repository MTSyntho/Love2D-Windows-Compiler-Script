@echo off
title Love2D Windows Compiler for LOVE 11.4
echo Love2D Windows Compile Script by ItsIceCreeperPE Dev on YouTube
echo Start The Compile Process by Pressing Any Key...
pause > nul
cls
:input
:: checking for input folder
if exist inputLove==goto output
if not exist inputLove=mkdir inputLove
:output
:: checking for output folder
if exist exportedGame==goto drag
if not exist exportedGame=mkdir exportedGame
:drag
echo Please drag the .love file into the explorer window that just popped up for your Love2D Game. If Window didn't open look for a folder named "input" and drag the .love file there.
echo To make a .love file just zip your game and make sure the main.lua is in the root of the zip then rename .zip to .love
ping localhost -n 2 > nul
start inputLove
pause > nul
cls
:: compiling process
echo Compiling...
copy /b "C:\Program Files\Love\love.exe"+inputLove\game.love exportedGame\game.exe
copy /b loveDLLs\love.dll exportedGame
copy /b loveDLLs\lua51.dll exportedGame
copy /b loveDLLs\mpg123.dll exportedGame
copy /b loveDLLs\msvcp120.dll exportedGame
copy /b loveDLLs\msvcr120.dll exportedGame
copy /b loveDLLs\OpenAL32.dll exportedGame
copy /b loveDLLs\SDL2.dll exportedGame
copy /b loveDLLs\LICENSE.txt exportedGame
copy /b loveDLLs\icon.ico exportedGame
cls
echo Compiling Done!
echo Press any key to close the script...
start exportedGame
pause > nul
exit

:: Script written by ItsIceCreeperPE Dev on YouTube on the 26 August 2022
:: GitHub Repo - https://github.com/Official-IceCreeperPE/Love2D-Windows-Compiler-Script
:: itch.io game page - https://itsicecreeperpe.itch.io/
:: dev youtube channel - https://www.youtube.com/channel/UC0EaHOKwmGh61OJSPKO27kg