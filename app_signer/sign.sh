#!/bin/bash

set -e

if [ -d /usr/lib/jvm/java-8-openjdk-amd64/bin/ ];then
export PATH=/usr/lib/jvm/java-8-openjdk-amd64/bin/:$PATH
fi

if [ -z "$ANDROID_HOME" ];then
    export ANDROID_HOME=$PWD/sdk
fi

LD_LIBRARY_PATH=./apksign/ java -jar apksign/signapk.jar keys/platform.x509.pem keys/platform.pk8 app.apk Signed.apk
