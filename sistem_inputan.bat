@echo off
Title Latihan 7 Inputan

rem Variabel dan Inputan
set /p nim= 	Masukkan NIM Anda		:
set /p nama= 	Masukkan Nama Lengkap	:
set /p prodi= 	Masukkan Prodi Anda		:

rem Output
echo -------------------------------------
echo Data Mahasiswa UNISS
echo -------------------------------------
echo NIM		: %nim%
echo Nama		: %nama%
echo Prodi		: %prodi%
echo -------------------------------------
pause