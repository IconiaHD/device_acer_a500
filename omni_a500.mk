# Release name
PRODUCT_RELEASE_NAME := A500
ROM_BUILDTYPE := IconiaHD

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

USE_LOWFPS_BOOTANI := true

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/acer/a500/a500.mk)




## Device identifier. This must come after all inclusions
PRODUCT_DEVICE       := a500
PRODUCT_NAME         := omni_a500
PRODUCT_BRAND        := Acer
PRODUCT_MODEL        := A500
PRODUCT_MANUFACTURER := Acer

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=picasso \
    BUILD_FINGERPRINT="acer/a500_ww_gen1/picasso:4.4.2/KVT49L/1395572400:user/release-keys" \
    PRIVATE_BUILD_DESC="a500_ww_gen1-user 4.4.2 KVT49L 1395572400 release-keys"

# Configure as xhdpi device to prevent breaking without mdpi drawables (copied from tf101)
PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi


# Bootanimation
# PRODUCT_BOOTANIMATION := vendor/omni/prebuilt/bootanimation/bootanimation.zip
