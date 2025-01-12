sudo make modules_install -j4
sudo cp -v arch/x86/boot/bzImage /boot/vmlinuz-6.6.64.2-amd64.azl3
sudo cp -v System.map /boot/System.map-6.6.64.2-amd64.azl3
sudo cp -v .config /boot/config-6.6.64.2-amd64.azl3
sudo dracut --force /boot/initramfs-6.6.64.2-amd64.azl3.img
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
