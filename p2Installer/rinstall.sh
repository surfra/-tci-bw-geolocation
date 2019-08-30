#!/bin/bash

if [ "$1" = '' ]; then
  echo Usage:
  echo "  Install palette "GeoLocation" runtime:"
  echo "     rinstall.sh {TIBCO_HOME}"
  echo "  Example:"
  echo "     rinstall.sh /somedir/tibco-home"
else
  P2_DIR=.
  java -jar plugins/com.tibco.tools.updatesite.devkit.actions_6.2.1.008.jar -ri -th "$1" -p2 "$P2_DIR"
fi
