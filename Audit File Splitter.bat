@echo off
setlocal enabledelayedexpansion
 
:: Define the suffixes for the new files
set "suffix1=) - SDG Review.xlsm"
set "suffix2=) - Audit 7 - OM Review.xlsm"
 
:: Get the current directory
set "current_dir=%cd%"
 
:: Get the name of the batch file
set "batchfile=%~nx0"
 
:: Iterate over each file in the folder
for %%F in ("%current_dir%\*") do (
    :: Get the file name and extension
    set "fullfilename=%%~nxF"
    set "fileext=%%~xF"
    
    :: Skip the batch file itself
    if /i not "!fullfilename!"=="%batchfile%" (
        :: Find the position of the last closing parenthesis and remove text after it
        set "filename=!fullfilename!"
        set "basename="
        
        :: Extract the base name up to and including the last parenthesis
        for /f "tokens=1,* delims=)" %%a in ("!filename!") do (
            set "basename=%%a)"
        )
        
        :: Remove trailing space if present
        set "basename=!basename:~0,-1!"
        
        :: Create the first duplicate with a new suffix
        set "newfile1=!basename!!suffix1!"
        copy "%%F" "%current_dir%\!newfile1!" >nul
        if %errorlevel% neq 0 (
            echo Failed to copy to "!newfile1!".
            exit /b 1
        )
        
        :: Create the second duplicate with another new suffix
        set "newfile2=!basename!!suffix2!"
        copy "%%F" "%current_dir%\!newfile2!" >nul
        if %errorlevel% neq 0 (
            echo Failed to copy to "!newfile2!".
            exit /b 1
        )
        
        echo Copied and renamed "%%F" to "!newfile1!" and "!newfile2!".
    )
)
 
endlocal

