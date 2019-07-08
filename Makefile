#--[DXライブラリMakefile]-----------------------------------------------#
#                                                                      
#                                   :Let's Begin Linux配布スクリプト生成     
#                                   :hiroumauma                        
#-----------------------------------------------------------------------#


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
LIBS += ../include/psp_dx/dxlibp.a -lpspgu -lz -lm -lpsprtc -lpspaudio -lpspaudiocodec -lpsputility -lpspvalloc -lpsppower#DXライブラリPortable使用時に追加
EXTRA_TARGETS = EBOOT.PBP
PSP_EBOOT_TITLE = DX_LIB_TEST
PSP_EBOOT_ICON = ./EBOOT_SET/ICON0.PNG
PSP_EBOOT_UNKPNG = ./EBOOT_SET/PIC0.PNG
PSP_EBOOT_PIC1 = ./EBOOT_SET/PIC1.PNG
#PSP_EBOOT_SND0 = ./EBOOT_SET/SND0.AT3

include $(PSPSDK)/lib/build.mak
