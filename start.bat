@echo off
title Compilador UXMB                                                                                           */Windows/*

echo ----------------------------------------------------------------------
echo                        UXMB Compilador.
echo         Ahora comenzaremos a compilar el source para PSP.
echo ----------------------------------------------------------------------
pause
ren uxmb_recovery.lua uxmb_recovery.pacme
cd libs
ren *.lua *.pacme
cd ..\sys
ren *.lua *.pacme
cd ..\wave
ren *.lua *.pacme
cd ..\flash0
ren *.lua *.pacme
cd ..
pause
copy img\* ..\UXMB-compiled\img
copy libs\* ..\UXMB-compiled\libs
copy sys\* ..\UXMB-compiled\sys
copy wave\* ..\UXMB-compiled\wave
copy flash0\* ..\UXMB-compiled\flash0
copy EBOOT.PBP ..\UXMB-compiled
copy oneFont.pgf ..\UXMB-compiled
copy script.lua ..\UXMB-compiled
copy uxmb_recovery.pacme ..\UXMB-compiled
pause
ren uxmb_recovery.pacme uxmb_recovery.lua
cd libs
ren *.pacme *.lua
cd ..\sys
ren *.pacme *.lua
cd ..\wave
ren *.pacme *.lua
cd ..\flash0
ren *.pacme *.lua
cd ..
pause
exit /b
