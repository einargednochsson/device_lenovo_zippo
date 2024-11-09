#
# Copyright (C) 2024 The RisingOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/lenovo/zippo/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS
WITH_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
ifeq ($(strip $(WITH_GMS)),true)
    TARGET_DEFAULT_PIXEL_LAUNCHER := true
endif
RISING_MAINTAINER=a1RStRiKe

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Lenovo
PRODUCT_DEVICE := zippo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo L78051
PRODUCT_NAME := lineage_zippo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=zippo \
    DeviceProduct=zippo
