#!/bin/bash

set -e

echo "hello silogy!"

# ./fake_dependency.sh

# echo "contents of /var/tmp/foobar:"
# ls /var/tmp/foobar

echo "Who am I?"
whoami

echo "saying yes 100 times"
yes | head -100 1>&2

exit 0
