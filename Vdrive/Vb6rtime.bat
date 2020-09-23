@echo off
if exist "%windir%\SYSTEM\OLEAUT32.DLL" goto Rt1
        goto Rnf
:Rt1
if exist "%windir%\SYSTEM\OLEPRO32.DLL" goto Rt2
        goto Rnf
:Rt2
if exist "%windir%\SYSTEM\ASYCFILT.DLL" goto Rt3
        goto Rnf
:Rt3
if exist "%windir%\SYSTEM\STDOLE2.TLB" goto Rt4
        goto Rnf
:Rt4
if exist "%windir%\SYSTEM\MSVBVM60.DLL" goto Rt5
        goto Rnf
:Rt5
if exist "%windir%\SYSTEM\COMCAT.DLL" goto Rf
:Rnf
More Vbrun60.txt
rem vbrun60sp3.exe /Q   dos will see this file name as vbrun6~1.exe
echo.
echo Please wait installing runtimes,   Press any key
pause > nul
:Rf
Cdmenu.exe
:end
exit