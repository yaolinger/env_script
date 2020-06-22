#! /bin/bash

if [ ! -e  "./env_integration.config" ]
then
    echo "env_integration.config not exist."
    exit 1
fi

. ./env_integration.config

PROJECT_NAME=integration_server
OUT_RES_DIR=./integration_server
PROJECT_THIRD_DIR=/usr/$PROJECT_NAME\_third
PROJECT_THIRD_DIR_BIN=$PROJECT_THIRD_DIR/bin
PROJECT_THIRD_DIR_INCLUDE=$PROJECT_THIRD_DIR/include
PROJECT_THIRD_DIR_LIB=$PROJECT_THIRD_DIR/lib

#构建资源目录
mkdir $OUT_RES_DIR

#构建第三方目录
mkdir $PROJECT_THIRD_DIR
mkdir $PROJECT_THIRD_DIR_BIN
mkdir $PROJECT_THIRD_DIR_INCLUDE
mkdir $PROJECT_THIRD_DIR_LIB

#解压boost
tar -zxvf ./res/boost_1_67_0.tar.gz -C $OUT_RES_DIR

#指定安装路径并安装boost
cd $OUT_RES_DIR/boost_1_67_0
bash bootstrap.sh --prefix=$PROJECT_THIRD_DIR
./b2
./b2 install
cd -

#解压protobuf
unzip ./res/protobuf-master.zip -d $OUT_RES_DIR

#指定安装路径并安装protobuf
cd $OUT_RES_DIR/protobuf-master
./autogen.sh
./configure --prefix=$PROJECT_THIRD_DIR
make -j2
sudo make install
sudo ldconfig
cd -

#生成运行配置(动态库搜索目录)
python gen_integration_server_conf.python --third_dir=$PROJECT_THIRD_DIR/lib
#移动配置,重新加载
mv integration_server.conf /etc/ld.so.conf.d/integration_server.conf
sudo ldconfig

## 拷贝第三方脚本至工作目录
bash copy_script.sh $OUT_RES_DIR $WORK_DIR
