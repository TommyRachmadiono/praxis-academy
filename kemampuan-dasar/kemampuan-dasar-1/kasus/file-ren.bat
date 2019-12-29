@echo off
echo Masukkan direktory pencarian:
set /p input1=""
cd /d %input1%

for /r %%x in (*.java) do (
	echo ada file java di "%%x"
	choice /m "mau diganti namanya?" 
	if ERRORLEVEL 1 (
	set /p namabaru=Masukkan nama:
	echo nama barunya "%namabaru%"
	ren %%x coba.java
	
	)
)

PAUSE
