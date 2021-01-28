#!/bin/sh
appname=`basename $0 | sed s,\.sh$,,`

dirname=`dirname $0`

echo "app_name: " $appname
echo "dirname:  " $dirname
tmp="${dirname#?}"

if [ "${dirname%$tmp}" != "/" ]; then
dirname=$PWD/$dirname
fi
echo "dirname:  " $dirname
LD_LIBRARY_PATH=$dirname
export LD_LIBRARY_PATH
$dirname/$appname "$@"
