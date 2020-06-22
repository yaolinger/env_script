#! /bin/bash

if [[ $1 == "" || $2 == "" ]]
then
    echo "bash copy_script.sh [third_dir] [work_dir]"
    exit 1
fi

## 第三方目录
BOOST_DIR=$1/boost_1_67_0
PROTO_DIR=$1/protobuf-master

## 工作目录
WORK_DIR=$2

## 拷贝脚本
echo "cp $PROTO_DIR/src/protoc $2/proto/protos/protoc"
cp $PROTO_DIR/src/protoc $2/proto/protos/protoc

