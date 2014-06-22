#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# CAMERA
USE_CAMERA_STUB := false

# Platform
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t20
TARGET_BOOTLOADER_BOARD_NAME := picasso

TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
TARGET_ARCH := arm
# Change to test tf101 config
#TARGET_ARCH_VARIANT_CPU := cortex-a9

TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true

# Change to test tf101 config
#ARCH_ARM_USE_NON_NEON_MEMCPY := true

ARCH_ARM_HIGH_OPTIMIZATION := true


# Change to test tf101 config
TARGET_OTA_ASSERT_DEVICE := picasso,a500
# Change to test tf101 config
#USE_ALL_OPTIMIZED_STRING_FUNCS := true


# kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
TARGET_KERNEL_SOURCE := kernel/acer/a500

# Use this config for kernel
TARGET_KERNEL_CONFIG := jellyplay_defconfig


#TARGET_PREBUILT_KERNEL := device/acer/a500/prebuilt/zImage
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

# Recovery
#TARGET_RECOVERY_KERNEL := device/acer/a500/recovery/recovery_kernel
#TARGET_RECOVERY_FSTAB := device/acer/a500/recovery/recovery.fstab
TARGET_RECOVERY_FSTAB := device/acer/a500/ramdisk/fstab.picasso

# Warning : If you change this, you've to clean before rebuild !
RECOVERY_FSTAB_VERSION := 2

TARGET_PREBUILT_RECOVERY_KERNEL := device/acer/a500/prebuilt/zImage

# TWRP Settings
DEVICE_RESOLUTION := 1280x800
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard1"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard1"
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_FLASH_FROM_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_JB_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p7"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "data=ordered,delalloc"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
#TWRP_CUSTOM_KEYBOARD := ../../../device/asus/tf101/recovery/hardwarekeyboard.cpp



TARGET_USERIMAGES_USE_EXT4  := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_SELECT_BUTTON := true

# Display
USE_OPENGL_RENDERER    := true
BOARD_EGL_CFG          := device/acer/a500/prebuilt/etc/egl.cfg
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
SKIP_SET_METADATA := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_USES_HWCOMPOSER := true
BOARD_NEEDS_OLD_HWC_API := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true
BOARD_EGL_NEEDS_FNW:= true
ENABLE_WEBGL := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_NEED_OMX_COMPAT := true
BOARD_USES_PROPRIETARY_OMX := TF101

# Audio
#TARGET_PROVIDES_LIBAUDIO := true
#BOARD_USES_AUDIO_LEGACY := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := false
BOARD_OMX_NEEDS_LEGACY_AUDIO := true

# GPS
BOARD_HAVE_GPS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/acer/a500/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/acer/a500/bluetooth/bt_vendor.conf

# USB 
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"

# Wireless
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcmdhd.bin"
#WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/vendor/firmware/bcmdhd.cal iface_name=wlan0"

# Misc flags
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
NEED_WORKAROUND_CORTEX_A9_745320 := true

# Sensors
SENSORS_NEED_SETRATE_ON_ENABLE := true

# Partition
BOARD_BOOTIMAGE_PARTITION_SIZE      := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 9999999
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 1283457024
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 13950255104
BOARD_FLASH_BLOCK_SIZE              := 131072

# SELinux policies
POLICYVERS   := 24

#BOARD_SEPOLICY_DIRS := \
#   device/acer/a500/selinux

#BOARD_SEPOLICY_UNION := \
#    file_contexts \
#    app.te \
#    device.te \
#    file.te \
#    drmserver.te \
#    genfs_contexts \
#    init.te \
#    media_app.te \
#    release_app.te \
#    mediaserver.te \
#    platform_app.te \
#    sensors_config.te \
#    shared_app.te \
#    surfaceflinger.te \
#    system_app.te \
#    system.te \
#    wpa_socket.te \
#    wpa.te \
#    zygote.te

