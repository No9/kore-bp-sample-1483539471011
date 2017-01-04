#! /bin/sh

KORE_PATH=$(readlink -f $PWD/vendor/kore)

echo "PWD: $PWD"
echo "KORE_PATH: $KORE_PATH"
ls $KORE_PATH

cd kore-bp

which kore 

kore build
sleep 20
./kore-bp -nr

