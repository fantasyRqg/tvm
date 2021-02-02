#!/bin/bash

#REMOTE_HOST=ta
#rsync -a -P --exclude '.git' --exclude '.idea' --exclude 'demo/web/node_modules' --exclude 'avatar' --exclude 'output' --exclude 'cmake-build-debug' ./ $REMOTE_HOST:/home/rqg/work/tvm
#
#
#ssh $REMOTE_HOST <<EOF
#	echo +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
#	source ~/.zshrc
#	cd /home/rqg/work/tvm
#
#	./docker/bash.sh tlcpack/ci-cpu:v0.71 ./tests/scripts/task_build.sh build -j2 && ./docker/bash.sh tlcpack/ci-cpu:v0.71 ./tests/scripts/task_python_unittest.sh
#	echo +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
#EOF


REMOTE_HOST=tvm
rsync -a -P --exclude '.git' --exclude '.idea' --exclude 'demo/web/node_modules' --exclude 'avatar' --exclude 'output' --exclude 'cmake-build-debug' ./ $REMOTE_HOST:/root/tvm

#ssh $REMOTE_HOST <<EOF
#	echo +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
#	source ~/.zshrc
#	cd /root/tvm/cmake-build-remote-debug
#
#	make -j4
#	echo +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
#EOF
#ssh -t lh "cd /mnt/mtd/ai_sdk_demo ;LD_LIBRARY_PATH=. ./ipc_demo "

#ssh ta <<EOF
#	echo +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
#	source /home/TYAndroid/.zshrc
#	cd /home/TYAndroid/Personal/rqg/ai_pad_sdk_hisilicon/build
#
#	export AR=arm-himix200-linux-ar
#  export AS=arm-himix200-linux-as
#  export CC=arm-himix200-linux-gcc
#  export CXX=arm-himix200-linux-g++
#  export LD=arm-himix200-linux-ld
#  export RANLIB=arm-himix200-linux-gcc-ranlib
#  export STRIP=arm-himix200-linux-strip
#
#  cmake .. -DCMAKE_INSTALL_PREFIX=$(pwd)/dist/ -DACS_ARCH_TYPE=armeabi-v7a
#	make ipc_demo_local
#	sftp lh:/mnt/mtd/ai_sdk_demo/ <<< $'put ipc_demo_local'
#	echo +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
#EOF

#ssh -t lh "cd /mnt/mtd/ai_sdk_demo ;LD_LIBRARY_PATH=. ./ipc_demo_local"
