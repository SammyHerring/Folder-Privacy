#Rename to Start.bat for better user interface within system.
#Compress file using F2KO or other '.bat' to '.exe' compiler
#Download F2KO with http://goo.gl/FvxHH2
#Or use my download mirror via Dropbox from SH GitHub Releases - http://goo.gl/zRTOFy
#However, you can equally use this online converter from F2KO - http://goo.gl/wvdsdb

#Place your protected folder name and/or file location where it says - 'FOLDER_NAME_GOES_HERE'
#Place your password for protected folder where it says - 'PASSWORD_GOES_HERE'

#Note: the script can be adapted to make a Private Folder if non existant with basic programming skills.

cls 
@ECHO OFF 
title Folder Private 
if EXIST "FOLDER_NAME_GOES_HERE" goto UNLOCK 
if NOT EXIST Private goto MDLOCKER 
:CONFIRM 
echo Are you sure you want to lock the folder(Y/N) 
set/p "cho=>" 
if %cho%==Y goto LOCK 
if %cho%==y goto LOCK 
if %cho%==n goto END 
if %cho%==N goto END 
echo Invalid choice. 
goto CONFIRM 
:LOCK 
ren Private "FOLDER_NAME_GOES_HERE" 
attrib +h +s "FOLDER_NAME_GOES_HERE" 
echo Folder locked 
goto End 
:UNLOCK 
echo Enter password to unlock folder 
set/p "pass=>" 
if NOT %pass%== PASSWORD_GOES_HERE goto FAIL 
attrib -h -s "FOLDER_NAME_GOES_HERE" 
ren "FOLDER_NAME_GOES_HERE" Private 
echo Folder Unlocked successfully 
goto End 
:FAIL 
echo Invalid password 
goto end 
:MDLOCKER 
md Private 
echo Private created successfully 
goto End 
:End
