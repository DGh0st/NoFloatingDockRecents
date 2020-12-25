export ARHCS = arm64 arm64e
export TARGET = iphone:clang:latest:11

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoFloatingDockRecents
NoFloatingDockRecents_FILES = Tweak.x

include $(THEOS_MAKE_PATH)/tweak.mk
