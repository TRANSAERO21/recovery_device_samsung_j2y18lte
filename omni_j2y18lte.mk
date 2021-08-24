$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := j2y18lte
PRODUCT_NAME := omni_j2y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J250F
PRODUCT_RELEASE_NAME := j2y18lte
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="j2y18lte" \
    PRODUCT_NAME="j2y18lteser" \
    PRIVATE_BUILD_DESC="j2y18lteser-user 7.1.1 NMF26X J250FXWS2ATI3 release-keys"

BUILD_FINGERPRINT := samsung/j2y18lteser/j2y18lte:7.1.1/NMF26X/J250FXWS2ATI3:user/release-keys
