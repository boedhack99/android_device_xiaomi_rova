#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
$(call inherit-product, device/xiaomi/msm8937-common/msm8937.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_rolex_overlay \
    xiaomi_riva_overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/rolex_mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/rolex_mixer_paths_qrd_sku2.xml \
    $(LOCAL_PATH)/audio/riva_mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/riva_mixer_paths_qrd_sku2.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku2.xml

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ft5346.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5346.kl \
    $(LOCAL_PATH)/keylayout/goodix-ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/goodix-ts.kl

# Rootdir
PRODUCT_PACKAGES += \
    init.xiaomi.device.rc \
    init.xiaomi.device.sh

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blankfile:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/rolex_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/rolex_sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/configs/sensors/riva_sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/riva_sensor_def_qcomdev.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/rova/rova-vendor.mk)
