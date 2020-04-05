#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi sm6150-common
include device/realme/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/RMX199X

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX1991,RMX1991CN,RMX1992,RMX1993

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_SOURCE := kernel/realme/RMX199X
TARGET_KERNEL_CONFIG := vendor/RMX1992_defconfig

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# SEPolicy
#BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

# VNDK
BOARD_VNDK_RUNTIME_DISABLE := false

# Inherit from the proprietary version
-include vendor/realme/RMX199X/BoardConfigVendor.mk
