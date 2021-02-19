#!/bin/bash

DIR=$(dirname $0)
pushd $DIR

DEPVER=1

#wget -c https://github.com/CypherpunkArmory/remote-desktop-clients/releases/download/dependencies2/remote-desktop-clients-libs-${DEPVER}.tar.gz

mkdir -p remoteClientLib/jni/libs/deps/FreeRDP/
mkdir -p EXTRACT/

tar xf remote-desktop-clients-libs-${DEPVER}.tar.gz -C EXTRACT/
rsync -avP EXTRACT/ ./
rm -rf EXTRACT/

echo "Done downloading and extracting dependencies."
popd
