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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/galaxys2-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/i9100/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/i9100/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := cyanogenmod_i9100_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412+
#TARGET_KERNEL_CONFIG := cyanogenmod_i9100_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412-GeniSys
#TARGET_KERNEL_CONFIG := i9100_defconfig

# Kernel Toolchain
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
#KERNEL_TOOLCHAIN_PREFIX := arm-eabi-

#KERNEL_TOOLCHAIN_PREFIX := arm-linux-gnueabihf-
#KERNEL_TOOLCHAIN := "$(ANDROID_BUILD_TOP)/prebuilt/$(HOST_OS)-x86/toolchain/linaro-4.9-14.06/bin/"
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.9-sm/bin

#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/kernel/samsung/smdk4412-GeniSys/toolchain/arm-cortex-a9/bin
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/device/samsung/i9100/prebuilt/toolchain/kernel/arm-cortex-a9//bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
TARGET_NO_RECOVERY := true

# Rom Toolchain
#TARGET_GCC_VERSION_EXP := 4.9-sm
#TARGET_GCC_VERSION_ARM := 5.1-sm

# Tesla optimizations
PULSE := true
GRAPHITE_OPTS := true
BLOCK_BASED_OTA := false

# assert
TARGET_OTA_ASSERT_DEVICE := galaxys2,i9100,GT-I9100,GT-I9100M,GT-I9100P,GT-I9100T,SC-02C

# Use the non-open-source parts, if they're present
-include vendor/samsung/i9100/BoardConfigVendor.mk
