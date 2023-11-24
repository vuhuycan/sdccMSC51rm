# Copyright 2023 QMK
# SPDX-License-Identifier: GPL-2.0-or-later

################################################################################
#
# 88888888888 888      d8b                .d888 d8b 888               d8b
#     888     888      Y8P               d88P"  Y8P 888               Y8P
#     888     888                        888        888
#     888     88888b.  888 .d8888b       888888 888 888  .d88b.       888 .d8888b
#     888     888 "88b 888 88K           888    888 888 d8P  Y8b      888 88K
#     888     888  888 888 "Y8888b.      888    888 888 88888888      888 "Y8888b.
#     888     888  888 888      X88      888    888 888 Y8b.          888      X88
#     888     888  888 888  88888P'      888    888 888  "Y8888       888  88888P'
#
#                                                       888                 888
#                                                       888                 888
#                                                       888                 888
#    .d88b.   .d88b.  88888b.   .d88b.  888d888 8888b.  888888 .d88b.   .d88888
#   d88P"88b d8P  Y8b 888 "88b d8P  Y8b 888P"      "88b 888   d8P  Y8b d88" 888
#   888  888 88888888 888  888 88888888 888    .d888888 888   88888888 888  888
#   Y88b 888 Y8b.     888  888 Y8b.     888    888  888 Y88b. Y8b.     Y88b 888
#    "Y88888  "Y8888  888  888  "Y8888  888    "Y888888  "Y888 "Y8888   "Y88888
#        888
#   Y8b d88P
#    "Y88P"
#
################################################################################

BOOTLOADER ?= ch55xbl
BOOTMAGIC_ENABLE ?= no
EEPROM_DRIVER ?= transient
MCU ?= ch552
MOUSEKEY_ENABLE ?= no
PLATFORM_KEY ?= mcs51
CONSOLE_ENABLE ?= no
COMMAND_ENABLE ?= no
SPACE_CADET_ENABLE ?= no
GRAVE_ESC_ENABLE ?= no
MAGIC_ENABLE ?= no
BOOTMAGIC_ENABLE ?= no
MOUSEKEY_ENABLE ?= no
EXTRAKEY_ENABLE ?= no
NKRO_ENABLE ?= no
KEY_OVERRIDE_ENABLE ?= no
COMBO_ENABLE ?= no
TAP_DANCE_ENABLE ?= no
