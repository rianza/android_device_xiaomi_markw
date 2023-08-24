#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
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

# Inherit from markw device
$(call inherit-product, device/xiaomi/markw/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

#RisingOS Flags
RISING_CHIPSET := MSM 8953
RISING_MAINTAINER := m@who
# RISING_PACKAGE_TYPE := VANILLA-AOSP-m@who
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_ENABLE_BLUR := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := false
# WITH_GMS := true
# TARGET_USE_GOOGLE_TELEPHONY := true
# TARGET_PREBUILT_GCAM
# TARGET_PREBUILT_PIXEL_LAUNCHER := true
# TARGET_USE_PIXEL_FINGERPRINT := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := markw
PRODUCT_NAME := lineage_markw
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4 Prime
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="markw-user 6.0.1 MMB29M V10.2.2.0.MBEMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/markw/markw:6.0.1/MMB29M/V10.2.2.0.MBEMIXM:user/release-keys
