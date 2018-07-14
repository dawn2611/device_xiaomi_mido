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

$(call inherit-product, device/xiaomi/mido/full_mido.mk)

# Grab em APNs
PRODUCT_COPY_FILES += device/xiaomi/mido/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_NAME := aosp_mido
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mido-user 7.0 NRD90M V8.5.4.0.NCFMIED release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/mido/mido:7.0/NRD90M/V8.5.4.0.NCFMIED:user/release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    device/xiaomi/mido/prebuilt/bootanimation.zip:system/media/bootanimation.zip
