TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_BOARD_PLATFORM := msm8917
TARGET_BOARD_PLATFORM_GPU := qcom-adreno308

BOARD_KERNEL_CMDLINE := \
	console=null \
	androidboot.hardware=qcom \
	msm_rtb.filter=0x237 \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	lpm_levels.sleep_disabled=1 \
	androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_NAME := SRPQH15A000RU
BOARD_MKBOOTIMG_ARGS += \
	--board $(BOARD_KERNEL_NAME) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/j2y18lte/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/samsung/j2y18lte
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_CONFIG := msm8937_sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8937_sec_j2y18lte_mea_open_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
BOARD_KERNEL_IMAGE_NAME := zImage

BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE  := 3514826752
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_RECOVERY_FSTAB := device/samsung/j2y18lte/recovery.fstab

TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 120
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
