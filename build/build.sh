#!/bin/bash

set -e

if [ "$1" == "--local-aapt" ];then
    export LD_LIBRARY_PATH=.
    export PATH=.:$PATH
    shift
fi

script_dir="$(dirname "$(realpath "$0")")"
if [ "$#" -eq 1 ]; then
    if [ -d "$1" ];then
	    makes="$(find "$1" -name Android.mk)"
    else
	    makes="$(realpath "$1")"
    fi
else
    cd "$script_dir"
    makes="$(find "$PWD/.." -name Android.mk)"
fi

if ! command -v aapt > /dev/null;then
    export LD_LIBRARY_PATH=.
    export PATH=$PATH:.
fi

if ! command -v aapt > /dev/null;then
    echo "Please install aapt (apt install aapt should do)"
    exit 1
fi

cd "$script_dir"

echo "$makes" | while read -r f;do
    name="$(sed -nE 's/LOCAL_PACKAGE_NAME.*:\=\s*(.*)/\1/p' "$f")"
    name="${name// }"
    grep -q treble-overlay <<<"$name" || continue
#    if [ "$name" != "treble-overlay-launcher-overlays-pixel" ]; then continue; fi
    echo "Generating $name"

    path="$(dirname "$f")"
    aapt package -f -F "${name}.apk" -M "$path/AndroidManifest.xml" -S "$path/res" -I android.jar
#    LD_LIBRARY_PATH=./signapk/ java -jar signapk/signapk.jar keys/platform.x509.pem keys/platform.pk8 "${name}-unsigned.apk" "${name}.apk"
#    rm -f "${name}-unsigned.apk"
    apksigner sign --key keys/platform.pk8 --cert keys/platform.x509.pem "${name}.apk"
    rm -rf "${name}.apk.idsig"
done
