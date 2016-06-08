#!/bin/bash

TTV_URL="url = '$1'"

sed -i "s~url = ''~$TTV_URL~" /home/tv/aceproxy-master/plugins/config/torrenttv.py
sed -i 's/vlcuse = False/vlcuse = True/' /home/tv/aceproxy-master/aceconfig.py
sed -i 's/videoobey = True/videoobey = False/' /home/tv/aceproxy-master/aceconfig.py
sed -i 's/videopausedelay = .*/videopausedelay = 0/' /home/tv/aceproxy-master/aceconfig.py
sed -i 's/videodelay = .*/videodelay = 0/' /home/tv/aceproxy-master/aceconfig.py
sed -i 's/videodestroydelay = .*/videodestroydelay = 30/' /home/tv/aceproxy-master/aceconfig.py

exec /usr/bin/supervisord
