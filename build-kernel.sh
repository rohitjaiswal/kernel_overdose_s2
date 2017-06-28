    #!/bin/bash
    setterm -clear
    echo Overdose Kernel Compile Tool v3.0
    echo By DarknessKiller
    echo Please Sit Back And Chill...
    ccache -c
    make mrproper
    echo Cleaned Some Old Crappy Files
    export KBUILD_BUILD_USER="C4lvin"
    export KBUILD_BUILD_HOST="DarknessCloud"
    export CROSS_COMPILE=/home/$USER/aarch64-linux-android-4.9/bin/aarch64-linux-android-    
    export ARCH=arm64
    make lineage_s2_defconfig
    make -j30 | tee /home/$USER/kernel_output.log
    f="/home/$USER/kernel_overdose_s2/arch/arm64/boot/Image.gz-dtb"
    i="0"
    if [ -e $f ]
    then
    echo "Compile Success!"
    else
    echo "Compile Failed! Fix Your Error"
    fi