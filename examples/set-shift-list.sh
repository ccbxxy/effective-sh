
_LIST="a b c"

set -- $_LIST

echo $2

shift

echo $2

_LIST="a $*"

echo $_LIST

# behold:

_LIST=a:b:c

set -- $(IFS=:;echo $_LIST)

echo $2
