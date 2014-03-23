# Release name
PRODUCT_RELEASE_NAME := A200
ROM_BUILDTYPE := IconiaHD

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/acer/a200/a200.mk)




## Device identifier. This must come after all inclusions
PRODUCT_DEVICE       := a200
PRODUCT_NAME         := omni_a200
PRODUCT_BRAND        := Acer
PRODUCT_MODEL        := A200
PRODUCT_MANUFACTURER := Acer

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=picasso_e \
    BUILD_FINGERPRINT="acer/a200_pa_cus1/picasso_e:4.4.2/KVT49L/1395572400:user/release-keys" \
    PRIVATE_BUILD_DESC="a200_pa_cus1-user 4.4.2 KVT49L 1395572400 release-keys"

# Configure as xhdpi device to prevent breaking without mdpi drawables (copied from tf101)
PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi


# Bootanimation
PRODUCT_BOOTANIMATION := vendor/omni/prebuilt/bootanimation/bootanimation.zip
