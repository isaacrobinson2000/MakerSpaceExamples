@echo off 
setlocal ENABLEDELAYEDEXPANSION

REM Possible Root paths where arduino placed it's preferences
set "ROOT_PATHS=(%LOCALAPPDATA% %APPDATA% %HOMEDRIVE%%HOMEPATH% )"

REM All possible locations of the arduino config file given the above roots
set "FILE_PATHS=(\Arduino15\preferences.txt \Arduino\preferences.txt \Documents\ArduinoData\preferences.txt)"

REM Iterate the possible root paths
for %%r in %ROOT_PATHS% do (

	REM Iterate all possible locations of arduino file within the root locations
	for %%f in %FILE_PATHS% do (
		echo "%%r%%f"
	
		if exist "%%r%%f" (
			echo Found arduino ide config file '%%r%%f' reading data...
			
			REM Get line in config file that says 'sketchbook.path', which is the path to the sketchbook
			for /f "tokens=1 delims=" %%i in ('findstr "sketchbook.path" "%%r%%f"') do (
				REM Get everything after the equal sign to just get the file path.
				for /f "tokens=2 delims==" %%a in ("%%i") do (
					REM Perform copy, copy examples in this folder over to the arduino sketchbook folder
					xcopy "%~dp0\MakerSpaceExamples" "%%a\MakerSpaceExamples" /E /Y /I
					
					echo _____
					echo Install of MakerSpaceExamples Complete, Restart Arduino IDE Now to see them.
					pause
					exit 0
				)
			)
		)
	)
)
REM We could not find config file for Arduino IDE at any of the typical locations,
REM let the user know and exit with error code 1
echo "ERROR: No config file for arduino ide found..."
pause
exit 1