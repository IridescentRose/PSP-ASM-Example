TARGET = MElibTest
OBJS = test.o

INCDIR =
CFLAGS = -G0 -Wall -O2
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR =
LDFLAGS = 
LIBS= -lpsprtc -lpspsdk


EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = ASM Test
PSP_FW_VERSION=500
PSP_LARGE_MEMORY = 0
BUILD_PRX = 1

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak
