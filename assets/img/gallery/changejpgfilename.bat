@echo off
setlocal enabledelayedexpansion

for /r %%i in (*.JPG) do (
    set "oldname=%%i"
    set "newname=%%~dpi%%~ni.jpg"
    git mv "!oldname!" "!newname!"
)

endlocal
