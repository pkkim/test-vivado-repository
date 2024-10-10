#!/bin/bash

set -e

echo "hello silogy!"

# ./fake_dependency.sh

# echo "contents of /var/tmp/foobar:"
# ls /var/tmp/foobar

echo "Who am I?"
whoami

echo "Echoing even numbers to stdout, odd numbers to stderr"
echo 0
echo 1 >&2
echo 2
echo 3 >&2
echo 4
echo 5 >&2
echo 6
echo 7 >&2
echo 8
echo 9 >&2

exit 0
