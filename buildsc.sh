#!/bin/bash
echo "STARTING BUILD OF SC"
cd ~/
rm -f tmp.sh

echo \
"#!/bin/bash" \
"echo TEST " \
" " \
" " \
> ~/tmp.sh

chmod +x ~/tmp.sh

xterm +bc -bg black -fg red -e "./tmp.sh; bash" &> /var/log/buildsc.log &
