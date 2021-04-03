#
# Copyright (C) 2021 The Android Ice Cold Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier.
PRODUCT_NAME := aicp_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="violet-user 9 PKQ1.181203.001 V11.0.8.0.PFHINXM release-keys" \
    PRODUCT_NAME="violet"

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Hemant Sharma (hemantbeast)"
