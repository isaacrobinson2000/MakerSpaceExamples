@echo off

set pos_paths[0] = "%HOMEDRIVE%%HOMEPATH%/Arduino15/preferences.txt"
set pos_paths[1] = "%HOMEDRIVE%%HOMEPATH%/Arduino15/preferences.txt"
set pos_paths[2] = "%HOMEDRIVE%%HOMEPATH%/Arduino/preferences.txt"
set pos_paths[3] = "%HOMEDRIVE%%HOMEPATH%\Documents/ArduinoData/preferences.txt"

(for %%pos_path in (%pos_paths%) do ( 
   echo %%pos_path 
))
