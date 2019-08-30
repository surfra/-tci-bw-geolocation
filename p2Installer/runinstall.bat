@echo off
IF %1.==. GOTO help
GOTO doit
    
:help
  echo Usage:
  echo   Uninstall palette "GeoLocation" runtime:
  echo      runinstall {TIBCO_HOME}
  echo   Example:
  echo      runinstall c:\my-tibco-home

  GOTO end
:doit
  java -jar plugins\com.tibco.tools.updatesite.devkit.actions_6.2.1.008.jar -ru -th %1 -pname GeoLocation
  GOTO end
           
:end
