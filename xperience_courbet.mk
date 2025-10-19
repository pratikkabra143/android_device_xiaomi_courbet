#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set Miuicamera version
# TARGET_USES_LEICA_HOLY45 := true

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

# Inherit some common Xperience stuff.
$(call inherit-product, vendor/xperience/config/common.mk)

PRODUCT_NAME := xperience_courbet
PRODUCT_DEVICE := courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 4G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# XPerience specific
XPERIENCE_MAINTAINER := pratikkabra143
XPERIENCE_BATTERY := 4250mah (TYP)
XPERIENCE_DISPLAY := 1080x2400
TARGET_STOCK_GAPPS := true
WITH_GMS:=true
#TARGET_ESSENTIAL_GAPPS := true
TARGET_ENABLE_PIXEL_GOODIES := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="courbet_global-user 13 TKQ1.221013.002 V14.0.3.0.TKQMIXM release-keys" \
    BuildFingerprint=Xiaomi/courbet/courbet:13/TKQ1.221013.002/V14.0.3.0.TKQMIXM:user/release-keys\
    DeviceProduct=courbet \
    SystemName=courbet_global

