
#include "Arduino.h"

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

short rwy_intensity[] = {0, 20, 50, 200};
volatile short rwy_intensity_index = 1;

const int rwy_edge_lights_ON_TIME = 40;
const int rwy_edge_lights_OFF_TIME = 1800;
boolean rwy_edge_lights_ON_STATE = true;
unsigned long previousMillis_rwy_edge_lights = 0;

const int beacon_ON_TIME = 900;
const int beacon_OFF_TIME = 3000;
boolean beacon_ON_STATE = true;
unsigned long previousMillis_beacon = 0;
boolean beacon_is_green = true;   // false is then percieced as White

const int tower_gun_ON_TIME = 500;
const int tower_gun_OFF_TIME = 400;
boolean tower_gun_ON_STATE = true;
unsigned long previousMillis_tower_gun = 0;
boolean tower_gun_is_green = true;   // false is then percieced as RED for exercise extreme caution
boolean tower_light_gun_is_ON = true;


void setup() {

  Serial.begin(9600);
  Serial.println("Hello and welcome to the Aerospace Village Airport (KASV)");
  
  pinMode(g_beacon_R, OUTPUT);
  pinMode(g_beacon_G, OUTPUT);
  pinMode(g_beacon_B, OUTPUT);
  
  pinMode(g_tower_R, OUTPUT);
  pinMode(g_tower_G, OUTPUT);
  pinMode(g_tower_B, OUTPUT);
 
  pinMode(g_rwy_flashing, OUTPUT);  
  pinMode(g_rwy, OUTPUT);
  
  pinMode(g_button, INPUT);
  //digitalWrite(g_button, LOW);
  //attachInterrupt(digitalPinToInterrupt(g_button), button_press, CHANGE);
  

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

/*
* Helper function to handle the aysmmetric timing of the runway flashing lights.
* To create the desired timing the lights are pulsed in a quick burst.
*/
void runwayEdgeLight()
{
  unsigned long currentMillis = millis();

  if(rwy_edge_lights_ON_STATE){
    if(currentMillis >= previousMillis_rwy_edge_lights + rwy_edge_lights_ON_TIME){
        rwy_edge_lights_ON_STATE = !rwy_edge_lights_ON_STATE;
        previousMillis_rwy_edge_lights = currentMillis;        
        digitalWrite(g_rwy_flashing, LOW);
     }
  }else{
    if(currentMillis >= previousMillis_rwy_edge_lights + rwy_edge_lights_OFF_TIME){
      rwy_edge_lights_ON_STATE = !rwy_edge_lights_ON_STATE;
      previousMillis_rwy_edge_lights = currentMillis;
      digitalWrite(g_rwy_flashing, HIGH);
    }
  }   
}

/*
* Helper function to handle the aysmmetric timing of the airfield beacon lights.
* To create the desired timing the lights are pulsed in a quick burst.
*/
void beaconLight()
{
  unsigned long currentMillis = millis();

  if(beacon_ON_STATE){
    if(currentMillis >= previousMillis_beacon + beacon_ON_TIME){
        beacon_ON_STATE = !beacon_ON_STATE;
        previousMillis_beacon = currentMillis;
        digitalWrite(g_beacon_R, HIGH);
        digitalWrite(g_beacon_G, HIGH);
        digitalWrite(g_beacon_B, HIGH);        
     }
  }else{
    if(currentMillis >= previousMillis_beacon + beacon_OFF_TIME){
      beacon_ON_STATE = !beacon_ON_STATE;
      previousMillis_beacon = currentMillis;

      // need to write the correct color
      if(beacon_is_green){
        digitalWrite(g_beacon_R, HIGH);
        digitalWrite(g_beacon_G, LOW);
        digitalWrite(g_beacon_B, HIGH);
        beacon_is_green = !beacon_is_green;
      }else{
        // Treat it as a white light
        digitalWrite(g_beacon_R, LOW);
        digitalWrite(g_beacon_G, LOW);
        digitalWrite(g_beacon_B, LOW);
        beacon_is_green = !beacon_is_green;
      }      
      
    }
  }   
}

/*
* Helper function to handle the timing of the tower light gun.
* To create the desired timing the lights are pulsed in a quick burst.
*/
void towerLightGun()
{
  unsigned long currentMillis = millis();

  if(tower_light_gun_is_ON){

    if(tower_gun_ON_STATE){
      if(currentMillis >= previousMillis_tower_gun + tower_gun_ON_TIME){
          tower_gun_ON_STATE = !tower_gun_ON_STATE;
          previousMillis_tower_gun = currentMillis;
          digitalWrite(g_tower_R, HIGH);
          digitalWrite(g_tower_G, HIGH);
          digitalWrite(g_tower_B, HIGH);        
       }
    }else{
      if(currentMillis >= previousMillis_tower_gun + tower_gun_OFF_TIME){
        tower_gun_ON_STATE = !tower_gun_ON_STATE;
        previousMillis_tower_gun = currentMillis;
  
        // need to write the correct color
        if(tower_gun_is_green){
          digitalWrite(g_tower_R, HIGH);
          digitalWrite(g_tower_G, LOW);
          digitalWrite(g_tower_B, HIGH);
          tower_gun_is_green = !tower_gun_is_green;
        }else{
          // Treat it as a red light
          digitalWrite(g_tower_R, LOW);
          digitalWrite(g_tower_G, HIGH);
          digitalWrite(g_tower_B, HIGH);
          tower_gun_is_green = !tower_gun_is_green;
        }      
        
      }
    }
  }else{
    //The light gun is OFF, just show normal yellow
    digitalWrite(g_tower_R, LOW);
    digitalWrite(g_tower_G, LOW);
    digitalWrite(g_tower_B, HIGH);
  }
}

void loop() {
  // put your main code here, to run repeatedly:

  analogWrite(g_rwy, rwy_intensity[rwy_intensity_index]);

  runwayEdgeLight();
  beaconLight();
  towerLightGun();

  int incomingByte = 0; // for incoming serial data

  // reply only when you receive data:
  if (Serial.available() > 0) {
    // read the incoming byte:
    incomingByte = Serial.read();

    // say what you got:
    Serial.print("I received: ");
    Serial.println(incomingByte, DEC);
  }

  
}
