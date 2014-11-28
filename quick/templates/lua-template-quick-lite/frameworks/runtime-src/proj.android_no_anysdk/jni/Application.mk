APP_STL := c++_static
NDK_TOOLCHAIN_VERSION=clang

APP_CPPFLAGS := -frtti -DCC_ENABLE_CHIPMUNK_INTEGRATION=1 -std=c++11 -fsigned-char
APP_LDFLAGS := -latomic

APP_CPPFLAGS += -DCC_LUA_ENGINE_ENABLED=1

ifeq ($(NDK_DEBUG),1)
  APP_CPPFLAGS += -DCOCOS2D_DEBUG=1
  APP_OPTIM := debug
else
  APP_CPPFLAGS += -DNDEBUG
  APP_OPTIM := release
endif

CC_USE_CURL := 0
CC_USE_CCSTUDIO := 0
CC_USE_CCBUILDER := 0
CC_USE_SPINE := 0
CC_USE_PHYSICS := 0
CC_USE_TIFF := 0
CC_USE_WEBP := 0
CC_USE_JPEG := 0
CC_USE_3D := 0
CC_USE_SQLITE := 0

ifeq ($(CC_USE_CURL),0)
APP_CPPFLAGS += -DCC_USE_CURL=0
endif
ifeq ($(CC_USE_CCSTUDIO),0)
APP_CPPFLAGS += -DCC_USE_CCSTUDIO=0
endif
ifeq ($(CC_USE_CCBUILDER),0)
APP_CPPFLAGS += -DCC_USE_CCBUILDER=0
endif
ifeq ($(CC_USE_SPINE),0)
APP_CPPFLAGS += -DCC_USE_SPINE=0
endif
ifeq ($(CC_USE_PHYSICS),0)
APP_CPPFLAGS += -DCC_USE_PHYSICS=0
endif
ifeq ($(CC_USE_TIFF),0)
APP_CPPFLAGS += -DCC_USE_TIFF=0
endif
ifeq ($(CC_USE_WEBP),0)
APP_CPPFLAGS += -DCC_USE_WEBP=0
endif
ifeq ($(CC_USE_JPEG),0)
APP_CPPFLAGS += -DCC_USE_JPEG=0
endif
ifeq ($(CC_USE_3D),0)
APP_CPPFLAGS += -DCC_USE_3D=0
endif
ifeq ($(CC_USE_SQLITE),1)
APP_CPPFLAGS += -DCC_USE_SQLITE=1
APP_CFLAGS += -DCC_USE_SQLITE=1
else
APP_CPPFLAGS += -DCC_USE_SQLITE=0
APP_CFLAGS += -DCC_USE_SQLITE=0
endif