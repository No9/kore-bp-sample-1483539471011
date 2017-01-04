#! /bin/sh

KORE_PATH=$(readlink -f $PWD/vendor/kore)

echo "PWD: $PWD"
echo "KORE_PATH: $KORE_PATH"
ls $KORE_PATH
cd kore-bp

kore build

./kore-bp -nr

