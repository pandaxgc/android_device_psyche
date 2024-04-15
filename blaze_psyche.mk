#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Inherit from psyche device
$(call inherit-product, device/xiaomi/psyche/device.mk)

# Default device specific configs
TARGET_USES_AOSP_RECOVERY := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080

# UDFPS animations & support
EXTRA_UDFPS_ANIMATIONS := true
TARGET_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true

# Camera support
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_FACE_UNLOCK_SUPPORTED := true
NO_APERTURE = true

# GAPPS & GMS
WITH_GMS := true
WITH_GAPPS := true
BLAZE_BUILD_TYPE := UNOFFICIAL
BLAZE_MAINTAINER := Stefi
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true

TARGET_USES_MIUI_CAMERA := true

TARGET_EXCLUDES_AUDIOFX := false

# Ui & Features 
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_ENABLE_BLUR := false

PRODUCT_NAME := blaze_psyche
PRODUCT_DEVICE := psyche
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2112123AC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Gapps
# $(call inherit-product, vendor/gms/gms_pico.mk)

PRODUCT_CHARACTERISTICS := nosdcard
BUILD_FINGERPRINT := Xiaomi/psyche_global/psyche:13/RKQ1.211001.001/V816.0.1.0.TLDMIXM:user/release-keys
