#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common PixelPlusUI stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1917
PRODUCT_BRAND := OnePlus
CUSTOM_DEVICE := OnePlus7Pro

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

# PixelPlusUI Official Props
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
CUSTOM_BUILD_TYPE := OFFICIAL
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
PPUI_MAINTAINER := Master
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_BUILD_APERTURE_CAM  := true
TARGET_USES_AOSP_RECOVERY := true

# Elixir Official Props
EXTRA_UDFPS_ANIMATIONS := true
ELIXIR_MAINTAINER := Master
ELIXIR_BUILD_TYPE := OFFICIAL

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
