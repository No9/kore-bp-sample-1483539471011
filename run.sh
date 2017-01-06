#! /bin/sh

APP=$(./serviceinfo.sh)

cd $APP

kore build

./$APP -nr

