@echo off
IF %1.==. GOTO help
GOTO doit
    
:help
  echo Usage:
  echo   Install palette "GeoLocation" runtime:
  echo      rinstall {TIBCO_HOME}
  echo   Example:
  echo      rinstall c:\my-tibco-home

  GOTO end
:doit
  set P2_DIR=.
  java -jar plugins\com.tibco.tools.updatesite.devkit.actions_6.2.1.008.jar -ri -th %1 -p2 %P2_DIR%
  GOTO end
           
:end
