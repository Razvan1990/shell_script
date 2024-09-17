echo off
echo Starting to create folders...

 
set WA_USERDIR=C:\wa_%USERNAME%
set WA_TOOLSDIR=C:\wa_tools
set JENKINS_FOLDER = C:\_dev

REM tools directory
if not exist %WA_TOOLSDIR% (
    echo Creating the %WA_TOOLSDIR% folder...
    mkdir %WA_TOOLSDIR%
) else (
    if exist %WA_TOOLSDIR% (
        echo Folder already created
    ) else (
        echo Something went wrong when creating %WA_TOOLSDIR%
        pause
    )
)

REM user directory 
if not exist %WA_USERDIR% (
    echo  Creating the %WA_USERDIR% folder...
    mkdir %WA_USERDIR%
)else (
	if exist %WA_USERDIR% (
		echo Folder already created
	) else (
		echo Something went wrong when creating %WA_USERDIR%
		pause
	)
)

REM SWTEST directory
echo %WA_USERDIR%\SwTest
if not exist %WA_USERDIR%\SwTest (
    echo  Creating the %WA_USERDIR%\SwTest folder...
    mkdir %WA_USERDIR%\SwTest
)else (
	if exist %WA_USERDIR%\SwTest (
		echo Folder already created
	)
	else (
		echo Something went wrong when creating %WA_USERDIR%\SwTest
		pause
	)
)

REM branch directory
if not exist %WA_USERDIR%\SwTest\branches (
    echo Creating the %WA_USERDIR%\SwTest\branches folder...
    mkdir %WA_USERDIR%\SwTest\branches
)else (
	if exist %WA_USERDIR%\SwTest\branches (
		echo Folder already created
	)
	else (
		echo Something went wrong when creating %WA_USERDIR%\SwTest\branches
		pause
	)
)

REM SwVersions directory
if not exist %WA_USERDIR%\SwVersions(
    echo  Creating the %WA_USERDIR%\SwVersions folder...
    mkdir %WA_USERDIR%\SwVersions
)else (
	if exist %WA_USERDIR%\SwVersions  (
		echo Folder already created
	)
	else (
		echo Something went wrong when creating %WA_USERDIR%\SwVersions
		pause
	)
)

REM TAGS directory           
if not exist %WA_USERDIR%\SwVersions\tags (
    echo  Creating the %WA_USERDIR% \SwVersions\tags folder...
    mkdir %WA_USERDIR%\SwVersions\tags
)
else (
	if exist %WA_USERDIR%\SwVersions\tags  (
		echo Folder already created
	)
	else (
		echo Something went wrong when creating %WA_USERDIR%\SwVersions\tags 
		pause
	)
)

REM MAKE OBSOLETE
if not exist %WA_TOOLSDIR%\fa_tools  (
    echo Creating the %WA_TOOLSDIR%\fa_tools folder...
    mkdir %WA_TOOLSDIR%\fa_tools
)else (
	if exist %WA_TOOLSDIR%\fa_tools   (
		echo Folder already created
	)	
	else (
		echo Something went wrong when creating %WA_TOOLSDIR%\fa_tools
		pause
	)
)

 
REM JENKINS directories
if "%BMW_TEST_SERVER%" == "1" (
    if "%BMW_TEST_SERVER_WITH_JENKINS%" == "1" (
        if not exist %JENKINS_FOLDER% (
            echo Creating the %JENKINS_FOLDER% folder...
            mkdir %JENKINS_FOLDER%
        )else (
			if exist %JENKINS_FOLDER%   (
				echo Folder already created
			)
			else (
				echo Something went wrong when creating %JENKINS_FOLDER%
				pause
			)
		)
		
        if not exist %WA_USERDIR%\Austausch (
           	echo Creating the %WA_USERDIR%\Austausch  folder...
           	mkdir %WA_USERDIR%\Austausch
        )else (
			if exist %WA_USERDIR%\Austausch   (
				echo Folder already created
			)
			else (
				echo Something went wrong when creating %WA_USERDIR%\Austausch
				pause
			)
		)
		
        if not exist %WA_USERDIR%\Cache_Testergebnisse (
           	echo  Creating the %WA_USERDIR%\Cache_Testergebnisse folder...
           	mkdir %WA_USERDIR%\Cache_Testergebnisse
        )else (
			if exist %WA_USERDIR%\Cache_Testergebnisse   (
				echo Folder already created
			)
			else (
				echo Something went wrong when creating %WA_USERDIR%\Cache_Testergebnisse
				pause
			)
		)
        if not exist %WA_USERDIR%\Testreports (
           	echo Creating the %WA_USERDIR%\Testreports folder...
           	mkdir %WA_USERDIR%\Testreports
        )else (
			if exist %WA_USERDIR%\Testreports   (
				echo Folder already created
			)
			else (
				echo Something went wrong when creating %WA_USERDIR%\Testreports
				pause
			)
		)
    )
)

 

echo All folders were created!