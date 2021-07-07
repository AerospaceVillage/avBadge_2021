# Aerospace Village Badge 2021

This repository is to document and capture all of the engineering and design work that went into creating the [Aerospace Village](https://aerospacevillage.org) Badge for DefCon 2021.

We hope you enjoy all of the ways to interact with this years badge and learn about Aerospace along the way!


## Kit Assembly

Instructions for assembling a kit can be found in the Document folder.

  - [Tindie Instructions](https://github.com/daneallen/avBadge_2021/blob/master/Documents/av_badge2021_instructions.pdf)
  - [Instructions sent with kit](https://github.com/daneallen/avBadge_2021/blob/master/Documents/av_badge2021_kit_instructions.pdf)


  ## Arduino Programming
  Using the Arduino IDE Add the correct Boards Manager URL:

      - Under File->Preferences add the following URL https://mcudude.github.io/MiniCore/package_MCUdude_MiniCore_index.json
      - Then with the new Boards Manager options select MiniCore
          - Select the Atmega88

  Steps:

      - Programmer - USBTinyISP
      - Clock - Internal 8MHZ
      - Bootloader - "No bootloader" (Not enough memory to support the bootloader)
      - Sketch -> Upload

      ## AVR Programming

[device permissions help](https://andreasrohner.at/posts/Electronics/How-to-fix-device-permissions-for-the-USBasp-programmer/)

[ttyACM permission](https://stackoverflow.com/questions/40951728/avrdude-ser-open-cant-open-device-dev-ttyacm0-device-or-resource-busy)

```
sudo adduser <username> dialout
$ sudo chmod a+rw /dev/ttyACM0
```

## Hardware
The ATMega88 is programmed with the [Sparkfun Tiny AVR Programmer](https://www.sparkfun.com/products/11801) using the [SparkFun ISP Pogo Adapter](https://www.sparkfun.com/products/11591)
