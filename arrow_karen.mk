#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/oneplus/karen/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# ArrowOS Stuff
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
FORCE_AOSP_DIALER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_karen
PRODUCT_DEVICE := karen
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2401
PRODUCT_MANUFACTURER := OnePlus

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OP515BL1 \
    PRODUCT_NAME=CPH2401 \
    PRIVATE_BUILD_DESC="CPH2401IND-user 12 SP1A.210812.016 202206292215 release-keys"

BUILD_FINGERPRINT := OnePlus/CPH2401/OP557AL1:12/SP1A.210812.016/S.202206292215:user/release-keys
