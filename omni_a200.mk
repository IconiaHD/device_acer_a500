# Release name
PRODUCT_RELEASE_NAME := A200

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
    BUILD_FINGERPRINT="acer/a200_ww_gen1/picasso_e:4.0.3/IML74K/1329824557:user/release-keys" \
    PRIVATE_BUILD_DESC="a200_ww_gen1-user 4.0.3 IML74K 1329824557 release-keys"

# Bootanimation
# PRODUCT_BOOTANIMATION := vendor/omni/prebuilt/common/bootanimation/800.zip
