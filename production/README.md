# Production Notes

For ease of mass production a script was made to quickly and reliably program the boards.

The script does the folliwing:
1. Sets the fuses appropriately (i.e. internal 8MHz, etc).
2. Burns a hex file to the chip that essentially ensures the EEPROM address is set to 0.
  - This was to ensure that a "test" part of the code would run to verify LED functionality prior to shipment
3. Burns the actual hex file to the chip
