# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit TB common bits
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := thinkingbridge_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.1.1/JRO03H/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03H 405518 release-keys" BUILD_NUMBER=405518
