TARGET = ASMTest
OBJS = test.o stub.o

INCDIR =
CFLAGS = -G0 -Wall -O2 -gdwarf-2
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti -gdwarf-2
ASFLAGS = $(CFLAGS) -gdwarf-2

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
