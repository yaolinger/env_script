#! /bin/bash

# IntegrationServer res
echo "Pull integration server res.........."

# 获取boost 1.67.0版本
wget https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz

# 获取protobuf-master
wget https://github.com/yaolinger/protobuf/archive/master.zip
mv master.zip protobuf-master.zip
