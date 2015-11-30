TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := d850

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=g3 user_debug=31 msm_rtb.filter=0x0

BOARD_KERNEL_BASE := 0x0000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --dt device/lge/d850/dtb --kernel_offset 0x0008000 --ramdisk_offset 0x2000000 --second_offset 0x0f00000 --tags_offset 0x0000100
BOARD_CUSTOM_BOOTIMG_MK := device/lge/d850/mkbootimg.mk

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/lge/d850/kernel
# else uncomment below to build from sauce
# TARGET_KERNEL_SOURCE := kernel/lge/d850
# TARGET_KERNEL_CONFIG := cyanogen_d850_defconfig
# apparently this dont work but should ;x
# TARGET_KERNEL_APPEND_DTB := true
# use this instead
# BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_d850_defconfig
TARGET_KERNEL_CONFIG := d850_defconfig

# Kernel & ToolChains
#TARGET_KERNEL_CONFIG := cyanogenmod_d851_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-6.0

#TARGET_KERNEL_CROSS_COMPILE_PREFIX := prebuilts/gcc/linux-x86/arm/arm-linux-gnueabi-4.9/bin/arm-eabi-
# Rom ToolChains
#TARGET_ROM_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.9

#TARGET_GCC_VERSION := 4.8
#TARGET_TOOLS_PREFIX := prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-
# RR Config Flags
TARGET_TC_ROM := 4.8
#TARGET_TC_KERNEL := SM-4.9
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216		# 16M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216		# 16M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2692743168		# 2568M Or 2.51G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27325360128	# 26059.49M or 25.45G

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

DEVICE_RESOLUTION := 1440x2560
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.175/leds/lcd-backlight/brightness"
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
TW_SCREEN_BLANK_ON_BOOT := true
# TW_NO_SCREEN_TIMEOUT := false

# MultiROM
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/lge/d850/multirom/mr_init_devices.c
MR_RD_ADDR := 0x2200000
MR_DPI := xhdpi
MR_DPI_MUL := 1.5
MR_FSTAB := device/lge/d850/multirom/twrp.fstab
MR_KEXEC_MEM_MIN := 0x0ff00000
MR_KEXEC_DTB := true
MR_USE_MROM_FSTAB := true
MR_DPI_FONT := 420
MR_DEFAULT_BRIGHTNESS := 80
#MR_CONTINUOUS_FB_UPDATE := true

#MultiRom Hooks, So that we can run stock roms as secondary
MR_DEVICE_HOOKS := device/lge/d850/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4

