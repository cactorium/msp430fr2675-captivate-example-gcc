CC = msp430-elf-gcc
TARGET=msp430fr2675

CFLAGS= -g3 -Os -static -Wall -Wextra -I/usr/msp430/include
CFLAGS += -mdata-region=either -mmcu=$(TARGET)
#CFLAGS += -T/usr/msp430-elf/lib/$(TARGET)_symbols.ld -T/usr/msp430-elf/lib/$(TARGET).ld
CFLAGS += -T$(mkfile_dir)./$(TARGET).ld
CFLAGS += -mlarge -mrelax -D__LARGE_DATA_MODEL__ -D__TI_COMPILER_VERSION__=18001001 -D__LARGE_CODE_MODEL__
CFLAGS += -D__MSP430FR2675__
CFLAGS += -ffunction-sections -fdata-sections -fvisibility=hidden

LDFLAGS = -Wl,-static -Wl,--gc-sections -Wl,-Map=fw.map
#LDFLAGS += -Wl,--print-gc-sections

# Find the current directory to get the paths correct
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(dir $(mkfile_path))

INCLUDES += -I/usr/msp430-elf/include/devices
LDFLAGS += -L/usr/msp430-elf/include/devices

#LIBS += $(mkfile_dir)/src/driverlib/MSP430FR2xx_4xx/libraries/driverlib_scsd.lib
LIBS += ${mkfile_dir}/src/driverlib/MSP430FR2xx_4xx/libraries/driverlib_fr2676_family.lib
LIBS += $(mkfile_dir)/src/captivate/BASE/libraries/captivate_fr2676_family.lib
#LIBS += $(mkfile_dir)/src/mathlib/libraries/QmathLib.lib
#LIBS += $(mkfile_dir)/src/mathlib/libraries/IQmathLib.lib

	
INCLUDES += -I$(mkfile_dir)./src
INCLUDES += -I$(mkfile_dir)./src/driverlib
INCLUDES += -I$(mkfile_dir)./src/driverlib/MSP430FR2xx_4xx
INCLUDES += -I$(mkfile_dir)./src/mathlib
INCLUDES += -I$(mkfile_dir)./src/captivate
INCLUDES += -I$(mkfile_dir)./src/captivate/ADVANCED
INCLUDES += -I$(mkfile_dir)./src/captivate/BASE
INCLUDES += -I$(mkfile_dir)./src/captivate/COMM
INCLUDES += -I$(mkfile_dir)./src/captivate_app
INCLUDES += -I$(mkfile_dir)./src/captivate_config

CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate_app/CAPT_App.c
CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate_app/CAPT_BSP.c
CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate/BASE/CAPT_ISR.c
CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate_config/CAPT_UserConfig.c
CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate/ADVANCED/CAPT_Manager.c
CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate/COMM/CAPT_Interface.c
CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate/COMM/UART.c
CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate/COMM/FunctionTimer.c
CAPTIVATE_SRCS += $(mkfile_dir)./src/captivate/COMM/I2CSlave.c

#LIBGCC_SRCS += $(mkfile_dir)./libgcc/lib2divSI.c

#LIBGCC_ASMS += $(mkfile_dir)./libgcc/slli.S
#LIBGCC_ASMS += $(mkfile_dir)./libgcc/srli.S

CAPTIVATE := libcaptivate.a

CAPTIVATE_OBJS := $(patsubst %.c,%.o,$(CAPTIVATE_SRCS))
#LIBGCC_OBJS := $(patsubst %.c,%.o,$(LIBGCC_SRCS))
#LIBGCC_ASM_OBJS := $(patsubst %.S,%.o,$(LIBGCC_ASMS))

all: $(CAPTIVATE) fw.elf

fw.elf: $(mkfile_dir)./src/main.o $(CAPTIVATE)
	$(CC) -o $@ $(CFLAGS) $< $(LDFLAGS) /usr/lib/gcc/msp430-elf/9.3.1/libgcc.a -L. -lcaptivate $(LIBS)

$(mkfile_dir)./src/main.o: $(mkfile_dir)./src/main.c $(CAPTIVATE)
	$(CC) -c -o $@ $(CFLAGS) $(INCLUDES) $<
 
$(CAPTIVATE_OBJS): %.o: %.c
	$(CC) -c -o $@ $(CFLAGS) $(INCLUDES) $< $(LIBS) #$(LDFLAGS)

$(LIBGCC_OBJS): %.o: %.c
	$(CC) -c -o $@ $(CFLAGS) $(INCLUDES) $< $(LIBS) #$(LDFLAGS)

$(LIBGCC_ASM_OBJS): %.o: %.S
	$(CC) -c -o $@ $(CFLAGS) $(INCLUDES) $< $(LIBS) #$(LDFLAGS)

# captivate target
$(CAPTIVATE): $(CAPTIVATE_OBJS)
	#$(CC) -o $@ $(CFLAGS) $(INCLUDES) $< $(LIBS) 
	msp430-elf-ar rcs $@ $^ $(LIBS)

clean:
	rm $(CAPTIVATE_OBJS) libcaptivate.a $(mkfile_dir)./src/main.o

