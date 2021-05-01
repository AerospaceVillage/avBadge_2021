
#include "Arduino.h"
//#include "SoftwareSerial.h"

#define g_beacon_R 8
#define g_beacon_G 6  // schematic is wrong on these
#define g_beacon_B 7

#define g_tower_R 9
#define g_tower_G 1 // physical 2   schematic is wrong on these
#define g_tower_B 0 // physical 3

#define g_button 11
#define g_rwy_flashing 2
#define g_rwy 3

static unsigned long last_interrupt_time = 0;
volatile short button_press_count = 0;

short rwy_intensity[] = {0, 1, 50, 200};
volatile short rwy_intensity_index = 2;

void setup() {
  
  pinMode(g_beacon_R, OUTPUT);
  pinMode(g_beacon_G, OUTPUT);
  pinMode(g_beacon_B, OUTPUT);
  
  pinMode(g_tower_R, OUTPUT);
  pinMode(g_tower_G, OUTPUT);
  pinMode(g_tower_B, OUTPUT);
 
  pinMode(g_rwy_flashing, OUTPUT);  
  pinMode(g_rwy, OUTPUT);
  
  pinMode(g_button, INPUT);
  attachInterrupt(digitalPinToInterrupt(g_button), button_press, CHANGE);
  

}

void button_press(){
  unsigned long interrupt_time = millis();
  // If interrupts come faster than 200ms, assume it's a bounce and ignore
  if (interrupt_time - last_interrupt_time > 200) 
  {
    rwy_intensity_index++;
    if(rwy_intensity_index >= 4){
      rwy_intensity_index = 0;
    }
  }
  last_interrupt_time = interrupt_time;
  
}

void loop() {
  // put your main code here, to run repeatedly:

  analogWrite(g_rwy, rwy_intensity[rwy_intensity_index]);
  digitalWrite(g_rwy_flashing, HIGH);

  
  
  digitalWrite(g_beacon_R, HIGH);
  digitalWrite(g_beacon_G, LOW);
  digitalWrite(g_beacon_B, HIGH);
  
  digitalWrite(g_tower_R, LOW);
  digitalWrite(g_tower_G, HIGH);
  digitalWrite(g_tower_B, HIGH);



  delay(15);
  digitalWrite(g_rwy_flashing, LOW);

  delay(600);
  digitalWrite(g_beacon_R, LOW);
  digitalWrite(g_beacon_G, LOW);
  digitalWrite(g_beacon_B, LOW);

  digitalWrite(g_tower_R, LOW);
  digitalWrite(g_tower_G, LOW);
  digitalWrite(g_tower_B, LOW);

  delay(1200);
  digitalWrite(g_beacon_R, HIGH);
  digitalWrite(g_beacon_G, HIGH);
  digitalWrite(g_beacon_B, HIGH);

  
  delay(400);

  rwy_intensity_index++;
  if(rwy_intensity_index >= 4){
      rwy_intensity_index = 0;
  }
}
