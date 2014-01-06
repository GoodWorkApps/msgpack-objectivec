#! /bin/sh

git submodule update

dir=msgpack_src

rm -r $dir
mkdir -p $dir/msgpack
cd msgpack-c
./bootstrap
./configure
cd src
ls *.{h,c} | grep -v gcc | xargs -J % cp % ../../$dir
ls msgpack/*.h | xargs -J % cp % ../../$dir/msgpack
