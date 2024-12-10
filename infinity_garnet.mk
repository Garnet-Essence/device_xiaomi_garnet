#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# Infinity stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_EXCLUDES_AUDIOFX := true

INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := franlop77
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_SHIPS_FULL_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := false

PRODUCT_NAME := infinity_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

BUILD_FINGERPRINT := Redmi/garnet_global/garnet:14/UKQ1.231003.002/V816.0.17.0.UNRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
