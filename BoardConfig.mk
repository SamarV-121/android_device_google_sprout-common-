DEVICE_PATH := device/google/sprout

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := mt6582

# Arch
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
TARGET_NO_BOOTLOADER := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Binder API
TARGET_USES_64_BIT_BINDER := true

# Build system
BUILD_BROKEN_PREBUILT_ELF_FILES := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
USE_CAMERA_STUB := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_SOURCE := kernel/mediatek/sprout
TARGET_KERNEL_CONFIG := lineageos_sprout_defconfig
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := zImage

# Low Memory Devices
MALLOC_SVELTE := true

# Mediatek support
BOARD_USES_MTK_HARDWARE := true

# Misc
EXCLUDE_SERIF_FONTS := true 
SMALLER_FONT_FOOTPRINT := true
USE_REDUCED_CJK_FONT_WEIGHTS := true

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15000000
BOARD_BOOTIMAGE_PARTITION_SIZE := 6537216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1048576000
BOARD_CACHEIMAGE_PARTITION_SIZE := 234217728
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_ROOT_EXTRA_FOLDERS := protect_f protect_s

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/root/fstab.sprout

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Resolution
DEVICE_RESOLUTION := 480x854

# RIL
BOARD_PROVIDES_RILD := true
BOARD_PROVIDES_LIBRIL := true
ENABLE_VENDOR_RIL_SERVICE := true
SIM_COUNT := 2

# Symbols
TARGET_LD_SHIM_LIBS := \
/system/lib/libMtkOmxVdec.so|libsprout.so \
/system/lib/libMtkOmxVenc.so|libsprout.so \
/system/lib/libcam_utils.so|libutilscallstack.so \
/system/lib/libcam_utils.so|libsprout.so \
/system/lib/libcam.utils.so|libsprout.so \
/system/lib/libcam1client.so|libsprout.so \
/system/lib/libmtkjpeg.so|libsprout.so \
/system/lib/hw/hwcomposer.mt6582.so|libsprout.so

# SEpolicy
BOARD_SEPOLICY_DIRS += device/google/sprout/sepolicy

# System properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# WiFi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true
