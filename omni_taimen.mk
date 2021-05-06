# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/taimen/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 11 RP1A.201005.004.A1 6934943 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:11/RQ2A.210405.005/7181113:user/release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
