# Example 1: Naming Names
#

: "BumpCounter()" - increment _COUNTER
#
BumpCounter() {
    declare -i _offset=${1:-1}

    _COUNTER=$((_COUNTER + $_offset))
}

: "Main()" - the main program
#
Main() {
    while [ $_COUNTER -le $_FINAL ]; do
        echo $_COUNTER
        BumpCounter
    done
}

: Global Constants
#
declare -ir _FINAL=${FINAL:-20}

: Global Variables
#
declare -i _COUNTER=${INITIAL:-1}

: Execution Starts Here
#
Main "$@"
