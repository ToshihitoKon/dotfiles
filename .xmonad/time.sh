timedatectl | grep Local | sed -e 's/^.*Local time: . [0-9]*-[0-9]*-[0-9]*//g' | sed -e 's/JST//g'
