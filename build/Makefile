-include tools.mk

DEVICE=STM8S103
MCU=stm8s103?3
# CFLAGS       =-lstm8
# CFLAGS      +=-mstm8
# CFLAGS      +=--opt-code-size
# CFLAGS      +=--std-sdcc99
# CFLAGS      +=--nogcse
# CFLAGS      +=--vc
# CFLAGS      +=--out-fmt-elf
# CFLAGS      +=--all-callee-saves
# CFLAGS      +=--debug
# CFLAGS      +=--verbose
# CFLAGS      +=--stack-auto
# CFLAGS      +=--fverbose-asm
# CFLAGS      +=--float-reent
# CFLAGS      +=--no-peep

z_sdcc=${SDCC_PATH}/bin/sdcc
z_sdld=${SDCC_PATH}/bin/sdld
z_packihx=${SDCC_PATH}/bin/packihx
z_hex2bin=${HEX2BIN_PATH}/hex2bin
z_stm8flash=${STM8FLASH_PATH}/stm8flash

TARGET=$(BIN_PATH)/$(PROJECT).hex

APP_SRC=$(notdir $(wildcard $(APP_PATH)/$(PROJECT)/*.c) )
APP_OBJ=$(addprefix $(BIN_PATH)/, $(APP_SRC:.c=.rel))
APP_INC=-I$(APP_PATH)/$(PROJECT)

build: clean $(TARGET)

all: clean $(TARGET) flash

$(BIN_PATH)/%.rel: $(APP_PATH)/$(PROJECT)/%.c
	$(z_sdcc) -mstm8 $(CFLAGS) $(APP_INC) -c $? -o $@

$(TARGET): $(APP_OBJ)
	$(z_sdcc) -lstm8 -mstm8 -D $(DEVICE) --out-fmt-ihx $(CFLAGS) -o $(PROJECT).ihx $^
	${z_packihx} $(PROJECT).ihx > $(PROJECT).hex
	${z_hex2bin} $(PROJECT).hex
	mv $(PROJECT).* $(BIN_PATH)/

clean:
	rm -f $(BIN_PATH)/*

flash:
	echo "00 00 ff 00 ff 00 ff 00 ff 00 ff" | xxd -r -p > factory_defaults.bin
	$(z_stm8flash) -c stlinkv2 -p $(MCU) -s opt -w factory_defaults.bin 
	$(z_stm8flash) -c stlinkv2 -p $(MCU) -w $(BIN_PATH)/*.ihx
	rm factory_defaults.bin


