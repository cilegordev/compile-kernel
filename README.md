# Hardware -> Kernel -> Software
- compile custom [kernel](https://www.kernel.org) - latest

## To fix wlan0 (PCIe Wireless) - in my case RTL8822CE
- CONFIG_WLAN=y
- CONFIG_RTW88=m
- CONFIG_RTW88_CORE=m
- CONFIG_RTW88_PCI=m
- CONFIG_RTW88_8822C=m
- CONFIG_RTW88_8822CE=m
- CONFIG_RFKILL=y
- CONFIG_RFKILL_LEDS=y
- CONFIG_RFKILL_INPUT=y
- CONFIG_RFKILL_GPIO=y

## To fix regulator (CRDA)
- install wireless regulatory : [wireless-regdb](https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git) - latest

## To fix hid (Elan Touchpad) - in my case elan_i2c
- CONFIG_I2C_DESIGNWARE_CORE=m
- CONFIG_I2C_DESIGNWARE_PLATFORM=m
- CONFIG_MOUSE_PS2_ELANTECH=y
- CONFIG_MOUSE_PS2_ELANTECH_SMBUS=y
- CONFIG_MOUSE_ELAN_I2C=y
- CONFIG_MOUSE_ELAN_I2C_I2C=y
- CONFIG_MOUSE_ELAN_I2C_SMBUS=y
- CONFIG_HID_ELAN=m
- CONFIG_PINCTRL_AMD=y

## To fix usb0 (Android WiFi Hostpot) - in my case Tethring USB
- CONFIG_USB_NET_RNDIS_HOST=m
- CONFIG_USB_NET_RNDIS=m
- CONFIG_USB_NET_CDC_SUBSET_ENABLE=m
- CONFIG_USB_NET_CDC_SUBSET=m

## Add CONFIG_SYSTEM_TRUSTED_KEYS
- Download here : [azurelinux-ca-20230216.pem](https://raw.githubusercontent.com/microsoft/azurelinux/refs/heads/3.0/SPECS/kernel/azurelinux-ca-20230216.pem)

## Webcam - in my case i disabled
- Default

## Bluetooth - in my case i disabled
- Default card with pcie wireless

## Sound/Mic
- Install

## To fix cpu,gpu (Brightness) - in my case amd
- install firmware : [linux-firmware](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git) - latest
- install driver : [mesa3d](https://archive.mesa3d.org) - 24.0.1
