#! /bin/sh

echo ulimit -u
KORE_PATH=$(readlink -f $PWD/vendor/kore)

echo "PWD: $PWD"
ls
echo "KORE_PATH: $KORE_PATH"

cd kore-bp

kore build

./kore-bp -nr

