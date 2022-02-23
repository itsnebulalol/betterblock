TARGET := iphone:clang:latest:14.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = betterblockprefs

betterblockprefs_EXTRA_FRAMEWORKS = Cephei CepheiPrefs
betterblockprefs_FILES = EPRootListController.m
betterblockprefs_FRAMEWORKS = UIKit
betterblockprefs_PRIVATE_FRAMEWORKS = Preferences
betterblockprefs_INSTALL_PATH = /Library/PreferenceBundles
betterblockprefs_CFLAGS = -fobjc-arc -Wdeprecated-declarations -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/bundle.mk
