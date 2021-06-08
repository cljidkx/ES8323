
KSRC ?= /media/dkx/F61C6B281C6AE2DB/rk3399-pc/LibreELEC.tv/build.LibreELEC-RK3399.arm-10.0-devel/build/linux-5.10.41


all:
	make -C $(KSRC) M=`pwd` modules 

clean:
	make -C $(KSRC) M=`pwd` modules clean
	rm -rf modules.order

obj-m	+= es8323.o
