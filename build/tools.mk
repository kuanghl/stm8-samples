
PROJECT_ROOT := $(shell cd .. && pwd)
TOOLS_PATH := $(PROJECT_ROOT)/tools
BIN_PATH := $(PROJECT_ROOT)/bin
APP_PATH := $(PROJECT_ROOT)/app
HEX2BIN_PATH := $(TOOLS_PATH)/hex2bin-2.5.1
SDCC_PATH := $(TOOLS_PATH)/sdcc-4.4.0
STM8FLASH_PATH := $(TOOLS_PATH)/stm8flash

tools:
	if [ ! -d $(HEX2BIN_PATH) ]; then \
		tar -zxvf $(HEX2BIN_PATH).tar.gz -C $(TOOLS_PATH) ; \
		cd $(HEX2BIN_PATH); \
		make; \
	fi

	if [ ! -d $(SDCC_PATH) ]; then \
		tar -xvjf $(SDCC_PATH).tar.bz2 -C $(TOOLS_PATH) ; \
	fi

	if [ ! -d $(STM8FLASH_PATH) ]; then \
		tar -xvjf $(STM8FLASH_PATH).tar.bz2 -C $(TOOLS_PATH) ; \
		cd $(STM8FLASH_PATH); \
		make; \
	fi

	if [ ! -d $(BIN_PATH) ]; then \
		mkdir $(BIN_PATH); \
	fi

rmtools:
	if [ -d $(HEX2BIN_PATH) ]; then \
		rm -rf $(HEX2BIN_PATH); \
	fi

	if [ -d $(SDCC_PATH) ]; then \
		rm -rf $(SDCC_PATH); \
	fi

	if [ -d $(STM8FLASH_PATH) ]; then \
		rm -rf $(STM8FLASH_PATH); \
	fi

	if [ -d $(BIN_PATH) ]; then \
		rm -rf $(BIN_PATH); \
	fi
