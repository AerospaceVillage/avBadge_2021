#include <EEPROM.h>


// Quick helper file to reset a badge to clean initial state
// Useful for manufacturing only
void setup() {
  EEPROM.write(0, 0);

}

void loop() {
  // put your main code here, to run repeatedly:

}
