Device repository for TAG-AL00 (Lineageos)
===========================
For Stock 3.10.65 kernel

By Wyk

Thanks To:

LineageOS

mac12m99

and more

Getting Started
---------------

Initialize a repository with Los13:

    repo init -u git://github.com/lineageos/android.git -b cm-13
    
Sync sources:    

    repo sync
    

Build the code:
    
    source build/envsetup.sh
    lunch lineage_TAG_AL00-userdebug
    make -j 4 bacon showcommands 2>&1 | tee build.log

Current state

-------------

- test


Known Issues

-------------

- test



