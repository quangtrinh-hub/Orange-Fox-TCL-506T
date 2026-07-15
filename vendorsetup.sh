#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

add_lunch_combo fox_506T-user
add_lunch_combo fox_506T-userdebug
add_lunch_combo fox_506T-eng

# Biến môi trường cấu hình độc quyền OrangeFox
# export FOX_VERSION="R11.1"
export FOX_BUILD_DEVICE="506T"
export FOX_REPLACE_BUSYBOX=1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
