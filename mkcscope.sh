#!/bin/sh
rm -rf cscope.files cscope.files
PWD=/mnt/HDD1/joonki/drone_swarm/ns-allinone-3.28
find $PWD \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files
cscope -i cscope.files
