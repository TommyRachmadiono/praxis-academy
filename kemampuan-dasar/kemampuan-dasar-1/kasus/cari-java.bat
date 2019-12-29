@echo off
echo Masukkan direktory pencarian:
set /p input1=""
echo Masukkan ekstensi yang dicari:
set /p input2=""
cd /d %input1%
for /r %%x in (*.%input2%) do echo ada file java di "%%x"

pause