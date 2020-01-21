obj-m:= led_dev.o

led_dev.ko: led_dev.c
	make -C /usr/src/linux  M=`pwd` V=1 modules

clean:
	make -C /usr/src/linux  M=`pwd` V=1 clean
