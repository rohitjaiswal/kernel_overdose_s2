    #!/bin/bash
    echo Overdose Kernel Compile Tool v2.0
    echo By DarknessKiller
    echo Please Sit Back And Chill...
    ccache -c
    make clean && make mrproper
    echo Cleaned Some Old Crappy Files
    export CROSS_COMPILE=/home/ubuntu/aarch64-linux-android-4.9/bin/aarch64-linux-android-    
    export ARCH=arm64
    make lineage_s2_defconfig
    make -j16
    echo Kernel Has Been Compiled...
