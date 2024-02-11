#
# Copyright (C) 2020 Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2185/device.mk)

# Inherit some common NusantaraProject stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_RMX2185
PRODUCT_DEVICE := RMX2185
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G35 Series
PRODUCT_MANUFACTURER := realme

# cherish additions
IS_PHONE := true
CHERISH_BUILD_TYPE := UNOFFICIAL
BUILD_HOSTNAME := aospteam
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_ENABLE_BLUR := true
WITH_GMS := true

# Maintainer Stuff
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=picasso09 X RzaIX

PRODUCT_GMS_CLIENTID_BASE := android-realme
