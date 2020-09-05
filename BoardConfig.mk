#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common msm8937-common
include device/xiaomi/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/rova

# Asserts
TARGET_OTA_ASSERT_DEVICE := rolex,riva,rova

# Kernel
TARGET_KERNEL_CONFIG := mi8937_defconfig

# Security patch level
VENDOR_SECURITY_PATCH := 2018-07-01

# Inherit from the proprietary version
include vendor/xiaomi/rova/BoardConfigVendor.mk
