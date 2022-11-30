echo off
color b6
cls
:perbaikan
color 5
cls
echo 	       [#################################################]														
echo			                 PERBAIKAN KOMPUTER															
echo 	   [#########################################################]
echo                            [1] Defragmenter                
echo                            [2] DiscleanUP 
echo                            [3] Ubah FAT ke NTFS
echo                            [4] Scan Virus	 
echo                            [5] Reset Password User     
echo.              [88] Kembali 					[0]keluar

set /p "piltung=Masukan Pilihan : "
if %piltung%==1 	goto Defragmenter
if %piltung%==2 	goto DiscleanUP
if %piltung%==3		goto FAT
if %piltung%==4		goto Scan
if %piltung%==5		goto reset
if %piltung%==88 	goto kembali3
if %piltung%==0  	goto keluar
:Defragmenter
start /MIN/D"C:\Windows\System32" dfrgui.exe
pause
goto perbaikan
:DiscleanUP
start cleanmgr
pause
goto perbaikan
:FAT
cls

echo 	    [======================================================]
echo.
echo               Ketik Drive yang akan diubah file sytemnya ke NTFS
echo.
echo 	    [======================================================]
echo.
set /p "pilihan=Masukan Pilihan : "
if %pilihan%==C Convert C: /FS:NTFS
if %pilihan%==D Convert D: /FS:NTFS
if %pilihan%==E Convert E: /FS:NTFS
if %pilihan%==F Convert F: /FS:NTFS
if %pilihan%==G Convert G: /FS:NTFS
if %pilihan%==H Convert H: /FS:NTFS
if %pilihan%==I Convert I: /FS:NTFS
if %pilihan%==J Convert J: /FS:NTFS
if %pilihan%==K Convert K: /FS:NTFS
echo.
echo.
echo                      [1]Kembali ke Menu Utama    [2]Keluar
echo.
set /p "pilopsi=Masukan Pilihan : "
if %pilopsi%==1 goto perbaikan
if %pilopsi%==2 exit
:Scan
cls

echo 	    [======================================================]
echo               				Scan Komputer Anda
echo 	    [======================================================]
echo.
set/p "mti=echo Anda yakin Akan membuka Antivirus [Y/N]"
if %mti%==y goto y
if %mti%==n goto N
:y
echo = anti fade folder v.00
pause
echo = file is being processed, please wait.......

attrib -s -h -r -a autorun.inf /s /d
attrib -s -h -r -a *.* /s /d
attrib -s -h -r -a thumb.db /s /d
del /f /s *.lnk
del /f /s autorun.*
del /f /s thumbs.db
del /f /s uycdyn
del /f /s thumb.db
del /f /s *.pif
del /f /s *.vbs
del /f /s RECYCLER
del /f /s .___

echo = processing complete, push any key to exit
pause
:N
goto perbaikan
echo                 [1]Kembali         [2]Keluar
echo.
set /p "pilopsi=Masukan Pilihan : "
if %pilopsi%==1 goto perbaikan
if %pilopsi%==2 exit
:reset
cls
echo.
echo         Reset Password User!
echo =======================================
echo.
echo User Dikomputer ini!:
echo ---------------------------------------
rem cek user yang ada
net user
echo.
rem cek salah satu user
set/p "ad=Masukan Nama User yang akan dicek:"
echo Hasil:
net user %ad%
echo Reset Password Adminitrator
echo.
set/p "ad=Masukan Nama Adminnya:"
set/p "ps=Password Login       :"
net user %ad% %ps%
echo.
pause
goto Perbaikan
:kembali3
goto begin
:keluar
exit
