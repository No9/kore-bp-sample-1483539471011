#! /bin/sh


KORE_PATH=$(readlink -f $PWD/vendor/kore)

echo "PWD: $PWD"
ls
echo "KORE_PATH: $KORE_PATH"

cd kore-bp


cat <<EOF > conf/build.conf
single_binary=yes
kore_source=$KORE_PATH
kore_flavor=NO-TLS=1
  
# The flags below are shared between flavors
cflags=-Wall -Wmissing-declarations -Wshadow
cflags=-Wstrict-prototypes -Wmissing-prototypes
cflags=-Wpointer-arith -Wcast-qual -Wsign-compare

cxxflags=-Wall -Wmissing-declarations -Wshadow
cxxflags=-Wpointer-arith -Wcast-qual -Wsign-compare

ldflags=-lcrypto

EOF

kore build
./kore-bp -nr

