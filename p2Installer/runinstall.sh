#!/bin/bash

if [ "$1" = '' ]; then
  echo Usage:
  echo "  Install palette "GeoLocation" runtime:"
  echo "     runinstall.sh {TIBCO_HOME}"
  echo "  Example:"
  echo "     runinstall.sh /somedir/tibco-home"
else
  java -jar plugins/com.tibco.tools.updatesite.devkit.actions_6.2.1.008.jar -ru -th "$1" -pname GeoLocation
fi
                                
