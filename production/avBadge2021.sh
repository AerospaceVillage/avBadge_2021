
echo "Burn the bootloader"

#/home/dan/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino18/bin/avrdude -C/home/dan/.arduino15/packages/MiniCore/hardware/avr/2.1.2/avrdude.conf -v -patmega88p -cusbtiny -Uflash:w:/home/dan/.arduino15/packages/MiniCore/hardware/avr/2.1.2/bootloaders/empty/empty.hex:i -Ulock:w:0x0f:m
avrdude -Cavrdude.conf -v -patmega88p -cusbtiny -e -Ulock:w:0x3f:m -Uefuse:w:0xfd:m -Uhfuse:w:0b11010101:m -Ulfuse:w:0xe2:m

read -s
#sleep 3

echo "Ensure the intial address EEPROM is set to 0"
avrdude -Cavrdude.conf -v -patmega88p -cusbtiny -Uflash:w:/reset_badge.ino.with_bootloader.hex:i

read -s
#sleep 2

echo "Load the actual av_badge2021 code"

avrdude -Cavrdude.conf -v -patmega88p -cusbtiny -Uflash:w:/av/tmp/arduino_build_206290_Badge_2021.ino.with_bootloader.hex:i
