TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_DEVICE_IP = 192.168.1.169

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BetterBlock

BetterBlock_FILES = Tweak.x
BetterBlock_CFLAGS = -fobjc-arc
BetterBlock_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += betterblockprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
