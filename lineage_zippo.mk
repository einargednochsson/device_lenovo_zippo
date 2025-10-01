#
# Copyright (C) 2019-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/lenovo/zippo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_DISABLE_EPPE := true
BYPASS_CHARGE_SUPPORTED := true

# Misc
AXION_CAMERA_REAR_INFO := 48,8,16,2
AXION_CAMERA_FRONT_INFO := 32
PRODUCT_NO_CAMERA := false
AXION_PROCESSOR := Snapdragon855
AXION_MAINTAINER := EinarG

# Define small and big core groups (used for setting processes affinity)
AXION_CPU_SMALL_CORES := 0,1,2,3
# CPU used by critical tasks like SystemUI animations/surfaceflinger etc.
AXION_CPU_BIG_CORES := 4,5,6,7

## CPUsets configuration
# CPUset used for non-critical cpusets 
AXION_CPU_BG := 0-3
# CPUset used for foreground cpusets
AXION_CPU_FG ?= 0-7
# CPUset that will be used when limiting other cpusets except top-app
AXION_CPU_LIMIT_BG := 0-1
# CPUset that will be used to unlimit critical cpusets for UI
AXION_CPU_UNLIMIT_UI ?= 0-7
# CPUset that will be used when limiting critical cpusets for UI
AXION_CPU_LIMIT_UI ?= 0-4

# Wether to enable debugging for adb logcat purposes
AXION_DEBUGGING_ENABLED := false

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Lenovo
PRODUCT_DEVICE := zippo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo L78051
PRODUCT_NAME := lineage_zippo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="zippo_row-user 9 PKQ1.190110.001 11.0.405_191210 release-keys" \
    BuildFingerprint=Lenovo/zippo_row/zippo:9/PKQ1.190110.001/11.0.405_191210:user/release-keys \
    DeviceProduct=zippo
