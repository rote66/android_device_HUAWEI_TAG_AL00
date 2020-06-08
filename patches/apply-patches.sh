#!/bin/bash
cd ../../../..
cd bionic
patch -p1 < ../device/HUAWEI/TAG_AL00/patches/bionic_libc.patch
cd .. 
cd frameworks/av
git apply --ignore-space-change --ignore-whitespace -v ../../device/HUAWEI/TAG_AL00/patches/frameworks_av/0001-Disable-usage-of-get_capture_position.patch 
patch -p1 < ../../device/HUAWEI/TAG_AL00/patches/frameworks_av/frameworks_av_camera.patch 
patch -p1 < ../../device/HUAWEI/TAG_AL00/patches/frameworks_av/frameworks_av_libmedia.patch 
patch -p1 < ../../device/HUAWEI/TAG_AL00/patches/frameworks_av/frameworks_av_mediaprofile.patch 
patch -p1 < ../../device/HUAWEI/TAG_AL00/patches/frameworks_av/0006-fix-access-wvm-to-ReadOptions.patch 
cd ../..
cd frameworks/native
git apply --ignore-space-change --ignore-whitespace -v ../../device/HUAWEI/TAG_AL00/patches/frameworks_native.patch
cd ../..
cd frameworks/base
patch -p1 < ../../device/HUAWEI/TAG_AL00/patches/frameworks_base.patch
cd ../..
cd system/core
git apply --ignore-space-change --ignore-whitespace -v ../../device/HUAWEI/TAG_AL00/patches/system_core/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
cd ../..
cd system/netd
git apply --ignore-space-change --ignore-whitespace -v ../../device/HUAWEI/TAG_AL00/patches/system_netd/0001-Revert-Don-t-start-tethering-if-IPv6-RPF-is-not-supp.patch
git apply --ignore-space-change --ignore-whitespace -v ../../device/HUAWEI/TAG_AL00/patches/system_netd/0002-Enable-Tethering.patch
cd ../..
cd system/sepolicy
git apply --ignore-space-change --ignore-whitespace -v ../../device/HUAWEI/TAG_AL00/patches/system_sepolicy/0001-remove-ioctl-for-V29.patch
cd ../..
echo Patches Applied Successfully!
