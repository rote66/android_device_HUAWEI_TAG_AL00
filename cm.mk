## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := TAG_AL00

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/HUAWEI/TAG_AL00/device_TAG_AL00.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TAG_AL00
PRODUCT_NAME := lineage_TAG_AL00
PRODUCT_BRAND := HUAWEI
PRODUCT_MODEL := HUAWEI TAG-AL00
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION   := CN
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Asia/Shanghai

PRODUCT_GMS_CLIENTID_BASE := android-huaweimobile

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=TAG-AL00 \
   BUILD_FINGERPRINT=HUAWEI/TAG-AL00/HWTAG-L6753:5.1/HUAWEITAG-AL00/C92B168:user/release-keys \
   PRIVATE_BUILD_DESC="full_hq6753_66t_b2c_l1-user HUAWEI TAG-AL00 C92B168 release-keys"
