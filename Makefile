ifneq ($(KERNELRELEASE),)
	obj-m := asfs.o fcul.o
else
	PWD ?= $(shell pwd)
	KVER ?= $(shell uname -r)
all:
	make -C /lib/modules/$(KVER)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(KVER)/build M=$(PWD) clean
endif
