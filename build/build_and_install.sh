adb connect 192.168.1.30
./build.sh
#adb install -r treble-overlay-xiaomi-sweet.apk
#adb install -r treble-overlay-samsung-s20-one-ui.apk

adb install -r treble-overlay-oneplus-9pro.apk
adb install -r treble-overlay-oneplus-9pro-systemui.apk
#adb install -r treble-overlay-samsung-s22-oneui-systemui.apk

#adb push treble-overlay-samsung-s22-oneui.apk /sdcard/
#adb shell su -c mv /sdcard/treble-overlay-samsung-s22-oneui.apk /data/adb/modules/quickstepswitcher/system/product/overlay/framework-res__auto_generated_rro_product.apk
#adb shell su -c chmod 0644 /data/adb/modules/quickstepswitcher/system/product/overlay/framework-res__auto_generated_rro_product.apk

#adb push treble-overlay-samsung-s22-oneui-systemui.apk /sdcard/
#adb shell su -c mv /sdcard/treble-overlay-samsung-s22-oneui-systemui.apk /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-samsung-s22-oneui-systemui.apk
#adb shell su -c chmod 0644 /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-samsung-s22-oneui-systemui.apk

#adb push treble-overlay-round-icon.apk /sdcard/
#adb shell su -c mv /sdcard/treble-overlay-round-icon.apk /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-round-icon.apk
#adb shell su -c chmod 0644 /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-round-icon.apk

#adb push treble-overlay-samsung-tabs7plus-oneui.apk /sdcard/
#adb shell su -c mv /sdcard/treble-overlay-samsung-tabs7plus-oneui.apk /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-samsung-tabs7plus-oneui.apk
#adb shell su -c chmod 0644 /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-samsung-tabs7plus-oneui.apk

#adb push treble-overlay-samsung-tabs7plus-oneui-systemui.apk /sdcard/
#adb shell su -c mv /sdcard/treble-overlay-samsung-tabs7plus-oneui-systemui.apk /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-samsung-tabs7plus-oneui-systemui.apk
#adb shell su -c chmod 0644 /data/adb/modules/quickstepswitcher/system/product/overlay/treble-overlay-samsung-tabs7plus-oneui-systemui.apk

#adb reboot
