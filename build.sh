#!/bin/bash

. utils.sh

CMAKE_FLAGS='-DWARNINGS=ON -DWERROR=ON'

function build_supertux()
{
	if [ "$1" == "-c" ]; then
		rm -rf $BUILD_DIR
		echo "Cleaned."
		exit
	fi

	# normal build
	cmake -j${NPROC} $CMAKE_FLAGS ..
	make -j${NPROC}
}

if [ ! -d "$BUILD_DIR" ]; then
	mkdir $BUILD_DIR
fi

echo "Building supertux..."

cd $BUILD_DIR
build_supertux $1
cd -
