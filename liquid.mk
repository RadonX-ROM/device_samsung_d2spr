$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit some common LiquidSmooth stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2spr \
    TARGET_DEVICE=d2spr \
    BUILD_FINGERPRINT="samsung/d2spr/d2spr:5.0.2/KOT49H/L710VPUDNJ2:user/release-keys" \
    PRIVATE_BUILD_DESC="d2spr-user 5.0.2 KOT49H L710VPUDNJ2 release-keys"

PRODUCT_NAME := liquid_d2spr
PRODUCT_DEVICE := d2spr

