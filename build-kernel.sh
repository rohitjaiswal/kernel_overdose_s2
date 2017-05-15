    #!/bin/bash
    echo Welcome To Automated Kernel Compiler For Le2
    echo By DarknessKiller
    ccache -c
    make clean && make mrproper
    echo Cleaned Some Old Crappy Files
    export CROSS_COMPILE=/home/ubuntu/aarch64-linux-android-4.9/bin/aarch64-linux-android-
    echo Compiler Set Sucessful    
    export ARCH=arm64
    echo Compiler Set To Build For ARM64
    make lineage_s2_defconfig
    echo Picked Overdose Config
    make -j16
    echo Building Has Been Completed
