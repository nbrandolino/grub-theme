40CUSTOMTARGET = ./files/40_custom
THEMETARGET = ./themes/
THEMES := $(wildcard $(THEMETARGET)*)
THEMEDESTDIR = /boot/grub/themes

all:
	@echo Run \'make install\' to install.
install:
	@sudo cp -r $(THEMES) $(THEMEDESTDIR)
	@cat $(40CUSTOMTARGET) | sudo tee -a /etc/grub.d/40_custom
	@sudo rm /etc/grub.d/30_uefi-firmware
