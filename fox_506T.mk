# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common OrangeFox stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from 506T device
$(call inherit-product, device/alps/506T/device.mk)

PRODUCT_DEVICE := 506T
PRODUCT_NAME := fox_506T
PRODUCT_BRAND := tcl
PRODUCT_MODEL := 506T
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := android-tcl

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="506T-user 13 TP1A.220624.014 release-keys"

BUILD_FINGERPRINT := tcl/506T/506T:13/TP1A.220624.014/release-keys
