40CUSTOMTARGET = ./files/40_custom
THEMETARGET = ./files/themes/
THEMES := $(wildcard $(THEMETARGET)*)
THEMEDESTDIR = /boot/grub/themes

all:
	@echo Run \'make install\' to install.
install:
	@cp -pr $(THEMES) $(THEMEDESTDIR)
	@cat $(40CUSTOMTARGET) > /etc/grub.d/40_custom
	@rm /etc/grub.d/30_uefi-firmware
