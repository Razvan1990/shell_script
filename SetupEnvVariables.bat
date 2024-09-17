@echo off


call :SetEnvironmentVariable BMW_BK_FAS "%BMW_BK_FAS%" "1"
if "%BMW_BK_FAS%" == "1" (
            echo Environment variable: BMW_BK_FAS has been set %BMW_BK_FAS%
) else (
            echo Something is wrong BMW_BK_FAS
            pause )
           
call :SetEnvironmentVariable BMW_TEST_FAS "%BMW_TEST_FAS%" "1"
if "%BMW_TEST_FAS%" == "1" (
            echo Environment variable: BMW_TEST_FAS has been set %BMW_TEST_FAS%
) else (
            echo Something is wrong with BMW_TEST_FAS
            pause)

call :SetEnvironmentVariable BMW_TEST_SERVERS_WITH_JENKINS "%BMW_TEST_SERVERS_WITH_JENKINS%" "1"
if "%BMW_TEST_SERVERS_WITH_JENKINS%" == "1" (
            echo Environment variable: BMW_TEST_SERVERS_WITH_JENKINS has been set %BMW_TEST_SERVERS_WITH_JENKINS%
) else (
            echo Something is wrong BMW_TEST_SERVERS_WITH_JENKINS\
            pause)

call :SetEnvironmentVariable BMW_TEST_SERVERS_WITH_HIGHCHARTS_CONVERTER "%BMW_TEST_SERVERS_WITH_HIGHCHARTS_CONVERTER%" "1"
if "%BMW_TEST_SERVERS_WITH_HIGHCHARTS_CONVERTER%" == "1" (
            echo Environment variable: BMW_TEST_SERVERS_WITH_HIGHCHARTS_CONVERTER has been set %BMW_TEST_SERVERS_WITH_HIGHCHARTS_CONVERTER%
) else (
            echo Something is wrong with BMW_TEST_SERVERS_WITH_HIGHCHARTS_CONVERTER
            pause )

call :SetEnvironmentVariable CTCHOME "%CTCHOME%" "C:\Testwell\CTC"
if "%CTCHOME%" == "C:\Testwell\CTC" (
            echo Environment variable: CTCHOME  has been set %CTCHOME%
) else (
            echo Something is wrong with CTC_HOME
            pause ) 

call :SetEnvironmentVariable SWBK_TOOLS "%SWBK_TOOLS%" "V:\Tools"
if "%SWBK_TOOLS%" == "V:\Tools" (
            echo Environment variable: SWBK_TOOLS has been set %SWBK_TOOLS%
) else (
            echo Something is wrong with SWBK_TOOLS
            pause )

call :SetEnvironmentVariable PYTHON_PATH "%PYTHON_PATH%" "%SWBK_TOOLS%\Python\tags\Python-2-7-15.1"
if "%PYTHON_PATH%" == "%SWBK_TOOLS%\Python\tags\Python-2-7-15.1" (
            echo Environment variable: PYTHON_PATH has been set %PYTHON_PATH%
) else (
            echo Something is wrong with PYTHON_PATH
            pause )
			
call :SetEnvironmentVariable PYTHON "%PYTHON%" "%PYTHON_PATH%\python.exe"
if "%PYTHON%" == "%PYTHON_PATH%\python.exe" (
            echo Environment variable: PYTHON has been set %PYTHON%
) else (
            echo Something is wrong with PYTHON
            pause )

call :SetEnvironmentVariable LM_LICENSE_FILE "%LM_LICENSE_FILE%" "1998@winlic-b1.muc;1998@winlic-b2.muc;1998@winlic-b3.muc;5566@winlic-c1.muc;5566@winlic-c2.muc;5566@winlic-c3.muc;1890@winlic-c1.muc;1890@winlic-c2.muc;1890@winlic-c3.muc;1940@winlic-c1.muc;1940@winlic-c2.muc;1940@winlic-c3.muc;1890@wlic01s1.muc"
if "%LM_LICENSE_FILE%" == "1998@winlic-b1.muc;1998@winlic-b2.muc;1998@winlic-b3.muc;5566@winlic-c1.muc;5566@winlic-c2.muc;5566@winlic-c3.muc;1890@winlic-c1.muc;1890@winlic-c2.muc;1890@winlic-c3.muc;1940@winlic-c1.muc;1940@winlic-c2.muc;1940@winlic-c3.muc;1890@wlic01s1.muc" (
            echo Environment variable: LM_LICENSE_FILE has been set %LM_LICENSE_FILE%
) else (
            echo Something is wrong with LM_LICENSE_FILE
            pause )

call :SetEnvironmentVariable USER_DIR "%USER_DIR%" "W:\ "
if "%USER_DIR%" == "W:\ " (
            echo Environment variable: USER_DIR has been set %USER_DIR%
) else (
            echo Something is wrong with USER_DIR
            pause )
			
echo All env variables have been set
pause

:SetEnvironmentVariable

if %2 neq %3 (
    setx %1 %3 %HANDLE_ERRORS%
    set "%1=%~3"
)
echo    ...%1=%~3 %PRINT_TO_CONSOLE%
exit /B