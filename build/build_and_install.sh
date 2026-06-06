
./build.sh

adb install --bypass-low-target-sdk-block -r treble-overlay-

/bin/bash /home/uvnesh/IdeaProjects/vendor_overlays/build/build.sh; adb push treble-overlay-android-extra2.apk /sdcard/; adb shell su -c cp /sdcard/treble-overlay-android-extra2.apk /data/adb/modules/uvnesh_overlays/system/product/overlay/; adb reboot
/bin/bash /home/uvnesh/IdeaProjects/vendor_overlays/build/build.sh; adb root; adb push treble-overlay-android-extra2.apk /data/adb/modules/uvnesh_overlays/system/product/overlay/; adb reboot

# Check and Fix Perms
srcFile=treble-overlay-android-extra2.apk
finalDir=/data/adb/modules/uvnesh_overlays/system/product/overlay/
./build.sh; adb push $srcFile /sdcard/; adb shell su -c cp /sdcard/$srcFile $finalDir; adb reboot

