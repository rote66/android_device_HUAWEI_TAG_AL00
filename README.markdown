HUAWEI TAG-AL00 
HUAWEI Enjoy 5s 
=============

Basic   | Spec Sheet
-------:|:-------------------------
Announced | 2015, Dec
CPU     | Octa-core 1.5 GHz Cortex-A53 MT6753T
GPU     | Mali-T720MP3
Memory  | 2GB RAM
Board   | TAG-AL00
Shipped Android Version | 5.1
Storage | 16GB
Battery | 2200 mAh
Display | 5.0" 720 x 1280 px
Camera  | 13 MP, f/2.0, autofocus

![Huawei Enjoy 5s](http://www.pconline.com.cn/images/html/viewpic_pconline.htm?http://img.pconline.com.cn/images/product/6085/608591/q.jpg)

Device for TAG-AL00

For Stock 3.10.65 kernel

===========================

By Wyk

Thanks:

LineageOS

Divis1969

Oleg.svs

Moyster

Mad Team

danielhk

and more

Getting Started
---------------

Initialize a repository with Los14.1:

    repo init -u git://github.com/lineageos/android.git -b cm-14.1
    
Sync sources:    

    repo sync
    
Add 
  
   git clone http://github.com/LineageOS/android_packages_resources_devicesettings.git -b cm-14.1 packages/resources/devicesettings

Build the code:
    
    git clone https://github.com/rote66/android_device_HUAWEI_TAG_AL00.git -b los14.1 device/HUAWEI/TAG_AL00
    cd device/HUAWEI/TAG_AL00/patches
    ./apply-patches.sh
    cd ../../../../
    git clone https://github.com/rote66/android_vendor_HUAWEI_TAG_AL00.git -b los14.1 vendor/HUAWEI/TAG_AL00
    source build/envsetup.sh
    lunch lineage_TAG_AL00-userdebug
    make -j 4 bacon showcommands 2>&1 | tee build.log

Current state

-------------

- System boots

- Touch, screen, keyboard, central key are working

- Wifi is working

- Audio is working

- Telephony is working 

- USIM (3G) supported

- Incoming/outgoung call

- SMS, USSD

- Data connectivity

- GPS

- Bluetooth

- Sensors

Known Issues

-------------

- camera

- fingerprint

- cdma
