$(call inherit-product, device/lge/h930/full_h930.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/invictrix/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := invictrix_h930

INVICTRIX_MAINTAINER := me2151

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="joan" \
    PRODUCT_DEVICE="joan" \
    PRODUCT_NAME="joan_global_com" \
    PRIVATE_BUILD_DESC="joan_global_com-user 8.0.0 OPR1.170623.026 1819221128e3d release-keys"

BUILD_FINGERPRINT="lge/joan_global_com/joan:8.0.0/OPR1.170623.026/1819221128e3d:user/release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model ro.vendor.product.model
