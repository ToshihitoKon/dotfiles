cat /sys/class/power_supply/BAT1/uevent | grep "CAPACITY=" | sed -e 's/POWER_SUPPLY.*=//g' | sed -e 's/$/%/g'
