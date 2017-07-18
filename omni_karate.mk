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

$(call inherit-product, device/lenovo/karate/full_karate.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080x608

# Inherit some common omnirom stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_karate
BOARD_VENDOR := lenovo
PRODUCT_DEVICE := karate
PRODUCT_MANUFACTURER := LENOVO

TARGET_VENDOR_PRODUCT_NAME := karate

# Overlays (inherit after vendor/omni to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Lenovo/karate/K33:7.0/NRD90N/K33_S223_170610_ROW:user/release-keys \
    PRIVATE_BUILD_DESC="karate-user 7.0 NRD90N K33_S223_170610_ROW release-keys"
endif
