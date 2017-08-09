#!/usr/bin/env bash

: Fun3 -
#
Fun3() {
    echo "argc       : "     $#
    echo '$1, $3     : '     "'$1', '$3'"

    echo 'run        : '     ' set -- $@'
    set -- $@

    echo "argc       : "     $#
    echo '$1, $3     : '     "'$1', '$3'"
}

Fun3 a b "c d" e


: Fun4 -
#
Fun4() {
    echo "argc       : "     $#
    echo '$1, $3     : '     "'$1', '$3'"

    echo 'run        : '     'set -- "$@"'
    set -- "$@"              # <- this!

    echo "argc       : "     $#
    echo '$1, $3     : '     "'$1', '$3'"
}

Fun4 a b "c d" e
