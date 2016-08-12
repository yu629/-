THEOS_DEVICE_IP = 192.168.1.162  
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0
include /opt/theos/makefiles/common.mk

TWEAK_NAME = HOOHAPP
HOOHAPP_FILES = Tweak.xm
HOOHAPP_FRAMEWORKS = UIKit
include /opt/theos/makefiles/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += zhang
include $(THEOS_MAKE_PATH)/aggregate.mk
