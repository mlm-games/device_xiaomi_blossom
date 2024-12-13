#
# Copyright (C) 2023 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from our custom product configuration
-include $(call if-exists,vendor/twrp/config/common.mk)

# Inherit from the common PBRP configuration, if it exists
-include $(call if-exists,vendor/pb/config/common.mk)

# Inherit from blossom device
$(call inherit-product, device/xiaomi/blossom/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := blossom
PRODUCT_NAME := twrp_blossom
PRODUCT_BRAND := xiaomi
PRODUCT_MANUFACTURER := xiaomi
