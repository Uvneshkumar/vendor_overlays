adb connect 192.168.1.47
./build.sh
#adb install -r treble-overlay-xiaomi-sweet.apk
#adb install -r treble-overlay-samsung-s20-one-ui.apk

adb push treble-overlay-samsung-s21-oneui.apk /sdcard/
adb shell su -c mv /sdcard/treble-overlay-samsung-s21-oneui.apk /data/adb/modules/quickstepswitcher/system/product/overlay/framework-res__auto_generated_rro_product.apk
adb shell su -c chmod 0644 /data/adb/modules/quickstepswitcher/system/product/overlay/framework-res__auto_generated_rro_product.apk

adb push treble-overlay-samsung-s21-oneui-systemui.apk /sdcard/
adb shell su -c mv /sdcard/treble-overlay-samsung-s21-oneui-systemui.apk /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-samsung-s21-oneui-systemui.apk
adb shell su -c chmod 0644 /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-samsung-s21-oneui-systemui.apk

adb reboot
