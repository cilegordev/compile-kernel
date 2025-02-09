sudo rm -rfv /lib/modules/6.13.0-amd64.azl3
sudo make modules_install -j$(nproc)
sudo cp -v arch/x86/boot/bzImage /boot/vmlinuz-6.13.0-amd64.azl3
sudo ln -sv /boot/vmlinuz-6.13.0-amd64.azl3 /lib/modules/6.13.0-amd64.azl3/vmlinuz
sudo cp -v System.map /boot/System.map-6.13.0-amd64.azl3
sudo cp -v .config /boot/config-6.13.0-amd64.azl3
sudo dracut --force /boot/initramfs-6.13.0-amd64.azl3.img
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
