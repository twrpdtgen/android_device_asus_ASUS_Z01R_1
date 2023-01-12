#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ASUS_Z01R_1 device
$(call inherit-product, device/asus/ASUS_Z01R_1/device.mk)

PRODUCT_DEVICE := ASUS_Z01R_1
PRODUCT_NAME := omni_ASUS_Z01R_1
PRODUCT_BRAND := asus
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus-tpin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Z01R-user 9 PPR1.180610.009 WW_user_90.11.162.111_20191008 release-keys"

BUILD_FINGERPRINT := asus/WW_Z01R/Z01R:9/PPR1.180610.009/WW_90.11.162.111_20191008:user/release-keys
