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

# Inherit from xiaomi sdm439-common
-include device/xiaomi/sdm439-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/olivelite

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_olivelite
TARGET_RECOVERY_DEVICE_MODULES := libinit_olivelite

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
ifeq ($(TARGET_PREBUILT_KERNEL),)
  TARGET_KERNEL_CONFIG := olivelite-perf_defconfig
  TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm439
endif

# OTA
TARGET_OTA_ASSERT_DEVICE := olivelite

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1971322880
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
