USE_OEM_TV_APP := true
$(call inherit-product, device/google/atv/products/atv_base.mk)

include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    $(LOCAL_PATH)/rpi3_core_hardware.xml:system/etc/permissions/rpi3_core_hardware.xml

# application packages
PRODUCT_PACKAGES += \
    Launcher2 \
    LeanbackLauncher \
    Settings \
    Browser2

# Audio
PRODUCT_PACKAGES += \
    audio.primary.rpi3 \
    audio.usb.default

# Audio configs
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# Graphics
PRODUCT_PACKAGES += \
    libGLES_mesa \
    gralloc.rpi3 \
    hwcomposer.rpi3

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Generic.kl:system/usr/keylayout/Generic.kl

# Media configs
PRODUCT_COPY_FILES += \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.rpi3.rc:root/init.rpi3.rc \
    $(LOCAL_PATH)/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/ueventd.rpi3.rc:root/ueventd.rpi3.rc \
    $(LOCAL_PATH)/fstab.rpi3:root/fstab.rpi3

# Wi-Fi
PRODUCT_PACKAGES += \
    wpa_supplicant \
    wpa_supplicant.conf \
    wificond \
    wifilogd

# Wi-Fi HAL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Wi-Fi configs
PRODUCT_COPY_FILES += \
    hardware/broadcom/wlan/bcmdhd/config/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \

# Wi-Fi firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/brcm/brcmfmac43430-sdio.bin:root/lib/firmware/brcm/brcmfmac43430-sdio.bin \
    $(LOCAL_PATH)/firmware/brcm/brcmfmac43430-sdio.txt:root/lib/firmware/brcm/brcmfmac43430-sdio.txt
