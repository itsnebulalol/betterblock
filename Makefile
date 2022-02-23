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
SUBPROJECTS += on-install
include $(THEOS_MAKE_PATH)/aggregate.mk

before-install::
	install.exec "touch /var/mobile/me.nebula.betterblock.no-postinst-notification"

after-install::
	install.exec "rm -v /var/mobile/me.nebula.betterblock.no-postinst-notification"