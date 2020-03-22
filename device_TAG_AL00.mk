$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/HUAWEI/TAG_AL00/TAG_AL00-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/HUAWEI/TAG_AL00/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/HUAWEI/TAG_AL00/prebuilt/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

TARGET_OTA_ASSERT_DEVICE := TAG_AL00,HWTAG-L6753

TARGET_PROVIDES_INIT_RC := true

PRODUCT_COPY_FILES += \
    device/HUAWEI/TAG_AL00/rootdir/init.rc:root/init.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.target.rc:root/init.target.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.ssd.rc:root/init.ssd.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.neusoft.rc:root/init.neusoft.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.xlog.rc:root/init.xlog.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.usb.rc:root/init.usb.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.aee.rc:root/init.aee.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.project.rc:root/init.project.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.modem.rc:root/init.modem.rc \
    device/HUAWEI/TAG_AL00/rootdir/init.trace.rc:root/init.trace.rc \
    device/HUAWEI/TAG_AL00/rootdir/fstab.mt6735:root/fstab.mt6735 \
    device/HUAWEI/TAG_AL00/rootdir/fstab.swap:root/fstab.swap \
    device/HUAWEI/TAG_AL00/rootdir/ueventd.rc:root/ueventd.rc \
    device/HUAWEI/TAG_AL00/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/HUAWEI/TAG_AL00/etc/init/audioserver.rc:system/etc/init/audioserver.rc \
    device/HUAWEI/TAG_AL00/etc/init/mediacodec.rc:system/etc/init/mediacodec.rc \
    device/HUAWEI/TAG_AL00/etc/init/cameraserver.rc:system/etc/init/cameraserver.rc \
    device/HUAWEI/TAG_AL00/etc/init/rild.rc:system/etc/init/rild.rc \
    device/HUAWEI/TAG_AL00/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# RIL
PRODUCT_PACKAGES += \
    gsm0710muxd

PRODUCT_PACKAGES += \
    Torch \
    libxlog \
    libmtk_symbols \
    libperfservicenative \
    libcurl \
    Snap \
    fingerprintd 

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# LiveDisplay
PRODUCT_PACKAGES += libjni_livedisplay

# Include explicitly to work around Facelock issues
#PRODUCT_PACKAGES += libprotobuf-cpp-full

# USB
PRODUCT_PACKAGES += com.android.future.usb.accessory

# Ion
PRODUCT_PACKAGES += libion

# Doze (test)
PRODUCT_PACKAGES += HUAWEIDoze

PRODUCT_PACKAGES += power.mt6753

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/HUAWEI/TAG_AL00/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libtinyalsa \
    libtinycompress \
    libtinyxml

PRODUCT_COPY_FILES += \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/arm64-v8a/libstlport_shared.so:system/lib64/libstlport.so \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/armeabi-v7a/libstlport_shared.so:system/lib/libstlport.so

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, build/target/product/aosp_arm64.mk)

# These additionals go to /default.prop
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.adb.secure=0 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp \
ro.mount.fs=EXT4 \
debug.hwui.render_dirty_regions=false \
ro.sf.lcd_density=320 

