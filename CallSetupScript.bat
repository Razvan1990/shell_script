@echo off

REM - In your batch script enables delayed environment variable expansion. This means that variables within the script will be expanded at execution time rather than at parse time.(COPILOT)

Setlocal EnableDelayedExpansion

 

set STARTUP_LOG_FILE=C:\Users\ungureai\OneDrive - Bertrandt AG\Desktop\script\logs\Startup.log

 

echo Starting to run setup script!

echo Details can be found at %STARTUP_LOG_FILE%

 

REM - @ prevents the command to being displayed in the command prompt

@echo on

@call SetupEnvVariables.bat >> %STARTUP_LOG_FILE%
@call MakeDirectories.bat >> %STARTUP_LOG_FILE%

REM @call SetupDirectories.bat >> %STARTUP_LOG_FILE%
REM @call SetupMounts.bat >> %STARTUP_LOG_FILE%
REM @call SetupTools.bat >> %STARTUP_LOG_FILE%
REM @call SetupAutostarts.bat >> %STARTUP_LOG_FILE%

@echo off

REM echo Startup beendet.

REM if %ERROR_OCCOURED% neq 0 (
    REM echo Fehler beim Startup ^(siehe auch %STARTUP_LOG_FILE%^)
    REM if "%1" neq "NO_PAUSE" pause
REM )
REM call :FinalizeErrorHandling
REM exit /B %ERROR_OCCOURED%

 

REM :InitializeErrorHandling
    REM set ERROR_OCCOURED=0
    REM set OUTPUT=%TEMP%\Output
    REM set HANDLE_ERRORS=^> %OUTPUT% 2^>^&1 ^& if ERRORLEVEL 1 ^( set ERROR_OCCOURED=1 ^& type %OUTPUT% 1^>^&2 ) else ( type %OUTPUT% )
    REM set IGNORE_ERRORS=^> %OUTPUT% 2^>^&1 ^& type %OUTPUT%
    REM set PRINT_TO_CONSOLE=1^>^&2

REM exit /B

 

REM :FinalizeErrorHandling
    REM del /F /Q %OUTPUT% > nul 2>&1
REM exit /B

echo Script finished