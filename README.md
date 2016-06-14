Bash Named parameter parsing [![CircleCI](https://circleci.com/gh/winksaville/named-param-parasing.svg?style=svg)](https://circleci.com/gh/winksaville/name-param-parsing)
===

The test script, named-param-parsing supports two paramster p1 and p2.
The order on the command line doesn't matter, below are some examples:

./named-param-parsing.sh
p1=v1 p2=v2

./named-param-parsing.sh p2=xyz
p1=v1 p2=xyz

./named-param-parsing.sh p2=two p1=one
p1=one p2=two
