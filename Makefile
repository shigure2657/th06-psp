
TARGET = main.c
OBJS = main.o 

PSPPRE = $(shell psp-config --psp-prefix)
PSPDEV = $(shell psp-config --pspdev-path)
PSPSDK = $(shell psp-config --pspsdk-path)
PSPBIN = $(PSPSDK)/../bin 

INCS = /include /include /include

INCDIR = 
CFLAGS = -O2 -G0 -Wall
CXXFLAGS =  -fno-exceptions -fno-rtti
ASFLAGS = 
LIBDIR =
LIBS = -L/usr/local/pspdev/psp/lib -L/lib -L/lib
LIBS += ../include/psp_dx/dxlibp.a -lpspgu -lz -lm -lpsprtc -lpspaudio -lpspaudiocodec -lpsputility -lpspvalloc -lpsppower
EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = th06-psp

include $(PSPSDK)/lib/build.mak
