# Hardware -> Kernel -> Software
- compile custom kernel https://www.kernel.org - latest

## To fix wlan0 (PCIe Wireless) - in my case RTL8822CE
- CONFIG_RTW88=m
- CONFIG_RTW88_CORE=m
- CONFIG_RTW88_PCI=m
- CONFIG_RTW88_8822C=m
- CONFIG_RTW88_8822CE=m
- CONFIG_RFKILL=y
- CONFIG_RFKILL_LEDS=y
- CONFIG_RFKILL_INPUT=y
- CONFIG_RFKILL_GPIO=y

## To fix elan (Touchpad)  - in may case elan_i2c
- CONFIG_MOUSE_PS2_ELANTECH=y
- CONFIG_MOUSE_PS2_ELANTECH_SMBUS=y
- CONFIG_MOUSE_ELAN_I2C=y
- CONFIG_MOUSE_ELAN_I2C_I2C=y
- CONFIG_MOUSE_ELAN_I2C_SMBUS=y
- CONFIG_HID_ELAN=m
- CONFIG_PINCTRL_AMD=y

## Webcam - in my case i disabled
- Default

## Bluetooth - in my case i disabled
- Default

## Mic
- Install

## Sound
- Install

## To fix cpu,gpu (Brightness) - in my case amd
- install firmware https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git - latest
- install driver https://archive.mesa3d.org - 24.0.1
