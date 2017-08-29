$(call inherit-product, device/brcm/rpi3/device.mk)

PRODUCT_NAME := lineage_rpi3
PRODUCT_DEVICE := rpi3
PRODUCT_BRAND := Android
PRODUCT_MODEL := Raspberry Pi 3
PRODUCT_MANUFACTURER := brcm

DEVICE_PACKAGE_OVERLAYS := device/brcm/rpi3/overlay
PRODUCT_AAPT_PREF_CONFIG := tvdpi
PRODUCT_CHARACTERISTICS := tv
PRODUCT_LOCALES := en_US,ko_KR,ja_JP,zh_CN,hi_IN,en_GB,de_DE,fr_FR,it_IT,ru_RU,es_ES,pt_PT,nl_BE,nl_NL
