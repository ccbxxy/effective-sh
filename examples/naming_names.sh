#!/usr/bin/env sh
#
# Example 1: Naming Names
#

declare -i  _COUNTER=${INITIAL:-1}
declare -ri _FINAL=${FINAL:-20}

BumpCounter() {
    declare -i _offset_=$1

    [ $_offset_ ] && _offset_=1

    _COUNTER=$((_COUNTER + $_offset_))
}

Main() {
    while [ $_COUNTER -le $_FINAL ]; do
        echo $_COUNTER
        BumpCounter
    done
}

Main "$@"
