#!/bin/bash
# Example using named parameters in bash
#
# The scripts accepts 2 parameters, "p1" and "p2".
# Both of these parameters are optional and if
# not passed a defualt value is provided.

# Uncoment to debug
#set -x

# Associative array of 'named' argments
declare -A args

# Parse the arguments
function parse_args() {
  local $*
  # First interface, eno1 is default value
  [ "$p1" == "" ] && args[p1]="v1" || args[p1]="$p1"
  # Second interface, tap0 is default value
  [ "$p2" == "" ] && args[p2]="v2" || args[p2]="$p2"
}

parse_args $*

echo p1=${args[p1]} p2=${args[p2]}
