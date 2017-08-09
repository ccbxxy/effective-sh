#!/usr/bin/env bash

Fun1() {
    echo 'argc       :'     $#
    echo '$1, $3     :'     "'$1', '$3'"

    echo 'run        :'     'set -- $*'
    set -- $*

    echo 'argc:      :'     $#
    echo '$1, $3     :'     "'$1', '$3'"
}


Fun2() {
    echo 'argc       :'     $#
    echo '$1, $3:    :'     "'$1', '$3'"

    echo 'run        :'     'set -- "$*"'
    set -- "$*"

    echo 'argc       :'     $#
    echo '$1, $3     :'     "'$1', '$3'"
}

Fun1 a b "c d" e
echo
Fun2 a b "c d" e
