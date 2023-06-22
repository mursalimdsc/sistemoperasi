@echo off
title Latihan 2 kolaborasi inputan!

rem ========== setting variabel =====
set /p nim= Masukkan NIM:
set /p nama= Masukkan Nama:
set /p kelas= Masukkan Kelas:
set /p jurusan= Masukkan Jurusan:

set /p a= Masukkan Nilai a:
set /p b= Masukkan Nilai b:
set /p c= Masukkan Nilai c:
set /p d= Masukkan Nilai d:
set /p e= Masukkan Nilai e:
set /p f= Masukkan Nilai f:
set /p g= Masukkan Nilai g:
set /p h= Masukkan Nilai h:

rem ===== Operasi =============
set /a hasil1=(a*b)*(c+d)
set /a hasil2=(e/c)+(f*b)
set /a hasil3=h-((f+g)*b)

rem ===========Tampilan========
echo ---------------------------
echo 	IDENTITAS DIRI
echo ---------------------------
echo NIM		:%nim%
echo NAMA		:%nama%
echo Kelas		:%kelas%
echo Jurusan	:%jurusan%
echo ---------------------------
echo Hasil Operasi
echo ---------------------------
echo Hasil Soal 1:%hasil1%
echo Hasil Soal 2:%hasil2%
echo Hasil Soal 3:%hasil3%
echo ---------------------------
pause
