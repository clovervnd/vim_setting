#!/bin/sh
rm -rf cscope.files cscope.files
PWD=~/Desktop/drone_swarm/ns-allinone-3.26
find $PWD \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files
cscope -i cscope.files
