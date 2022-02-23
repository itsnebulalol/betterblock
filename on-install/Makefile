include $(THEOS)/makefiles/common.mk

TOOL_NAME = postinst prerm

postinst_FILES = on-install.m
postinst_CFLAGS += -fobjc-arc -fvisibility=hidden -DPOSTINST
postinst_FRAMEWORKS = CoreFoundation
postinst_INSTALL_PATH = /DEBIAN

prerm_FILES = on-install.m
prerm_CFLAGS += -fobjc-arc -fvisibility=hidden
prerm_FRAMEWORKS = CoreFoundation
prerm_INSTALL_PATH = /DEBIAN

include $(THEOS_MAKE_PATH)/tool.mk