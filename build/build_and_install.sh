adb connect 192.168.1.16
./build.sh
#adb install -r treble-overlay-xiaomi-sweet.apk
#adb install -r treble-overlay-samsung-s20-one-ui.apk
adb install -r treble-overlay-samsung-s20-nofod.apk

adb push treble-overlay-samsung-s21-one-ui.apk /sdcard/
adb shell su -c mv /sdcard/treble-overlay-samsung-s21-one-ui.apk /data/adb/modules/quickstepswitcher/system/product/overlay/framework-res__auto_generated_rro_product.apk
adb reboot
