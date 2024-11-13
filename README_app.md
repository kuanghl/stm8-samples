## How to use

If it is the first time to compile, It is recommended to run goto build directly, and then run the 'make tools' to unzip hex2bin、sdcc、stm8flash etc.

    cd build
	make tools

Build the project(for example:app_stm8_peri_gpio_interrupt):

    make build PROJECT=app_stm8_peri_gpio_interrupt
    make build PROJECT=app_stm8_peri_gpio

Install the APP:

    sudo make flash

!!! Note unlockflash:

	echo "00 00 ff 00 ff 00 ff 00 ff 00 ff" | xxd -r -p > factory_defaults.bin
	$(z_stm8flash) -c stlinkv2 -p stm8s103?3 -s opt -w factory_defaults.bin 

Debug:

    https://github.com/hbend1li/stm8_started

    GDB=stm8-gdb 
    OPENOCD=openocd

    openocd:
	#  !!!terminal window be is blocked!!! Run in second terminal
	# 	
	#   $(OPENOCD) $(OPENOCDCONFIG) -c "init" -c "reset halt"
	#
	#   run gdb
	#   $(GDB) $(OUTPUT_DIR)/$(TARGETNAME).elf -tui -ex 'target extended-remote localhost:3333' -ex 'load' -ex 'b main' -ex 'continue'
	#   step - (gdb): n 