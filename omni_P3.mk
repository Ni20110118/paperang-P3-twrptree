#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit some common Omni stuff.
# $(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P3 device
$(call inherit-product, device/paperang/P3/device.mk)

PRODUCT_DEVICE := P3
PRODUCT_NAME := omni_P3
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := P3 Pro
PRODUCT_MANUFACTURER := paperang

PRODUCT_GMS_CLIENTID_BASE := android-paperang

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P3-user 8.1.0 OPM2.171019.012 03300 release-keys"

BUILD_FINGERPRINT := SPRD/P3/P3:8.1.0/OPM2.171019.012/03300:user/release-keys
