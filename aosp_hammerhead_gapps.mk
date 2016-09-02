#
# Copyright 2013 The Android Open-Source Project
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
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

PRODUCT_NAME := aosp_hammerhead_gapps

# GAPPS
GAPPS_VARIANT := micro
GAPPS_FORCE_DIALER_OVERRIDES := true
GAPPS_FORCE_MMS_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true

PRODUCT_PACKAGES += Photos \
                    TagGoogle \
                    PrebuiltDeskClockGoogle \
                    CalculatorGoogle \
                    GoogleContacts \
                    GoogleCamera \
                    CloudPrint2

PRODUCT_PACKAGES += WebViewGoogle

# setup gapps config
$(call inherit-product-if-exists, vendor/google/build/opengapps-packages.mk)
