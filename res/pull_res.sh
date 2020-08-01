#! /bin/bash

# IntegrationServer res
echo "Pull integration server res.........."

# 进入脚本所在目录
cd `dirname $0`

# 获取boost 1.67.0版本
wget https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz

# 获取zdb 3.1版本
wget http://www.tildeslash.com/libzdb/dist/libzdb-3.1.tar.gz

# 获取protobuf-master
wget https://github.com/yaolinger/protobuf/archive/master.zip
mv master.zip protobuf-master.zip

cd -
