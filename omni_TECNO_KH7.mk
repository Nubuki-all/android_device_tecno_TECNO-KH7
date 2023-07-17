#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from TWRP-common Stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from PBRP-common Stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from OMNI-common Stuff, if building from below Android 10.
$(call inherit-product-if-exists, vendor/omni/config/common.mk)

# Inherit from TECNO_KH7 device
$(call inherit-product, device/tecno/TECNO_KH7/device.mk)

PRODUCT_DEVICE := TECNO_KH7
PRODUCT_NAME := omni_TECNO_KH7
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KH7
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_kh7n_h6919-user 12 SP1A.210812.016 70325 release-keys"

BUILD_FINGERPRINT := TECNO/KH7-OP/TECNO-KH7:12/SP1A.210812.016/220826V539:user/release-keys
