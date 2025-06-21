40CUSTOMTARGET = ./files/40_custom
THEMETARGET = ./files/themes/*
THEMEDESTDIR = /boot/grub/themes/

all:
	@echo Run \'make install\' to install.
install:
	@cp -r $(THEMETARGET) $(THEMEDESTDIR)
	@cp -r $(40CUSTOMTARGET) /etc/grub.d/
	@rm /etc/grub.d/30_uefi-firmware

