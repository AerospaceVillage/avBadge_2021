
#include "Arduino.h"

#define g_beacon_R 14
#define g_beacon_G 16
#define g_beacon_B 15

#define g_tower_R 5
#define g_tower_G 9
#define g_tower_B 6

#define g_button 3
#define g_rwy_flashing 17 
#define g_rwy 10

#define g_UFO_LED 8

#define g_UFO_INPUT 4
#define g_LOST_COMMS_INPUT 3
#define g_PCL_INPUT 2

static unsigned long last_interrupt_time = 0;
volatile short button_press_count = 0;

short rwy_intensity[] = {0, 20, 50, 200};
volatile short rwy_intensity_index = 1;
short rwy_intensity_count = 0;
short rwy_intensity_limit = 1000; // How long the user has hold the circuit closed for it to trigger ON (clock cyles)

const int rwy_edge_lights_ON_TIME = 5;
const int rwy_edge_lights_OFF_TIME = 2000;
boolean rwy_edge_lights_ON_STATE = true;
unsigned long previousMillis_rwy_edge_lights = 0;

const int beacon_ON_TIME = 900;
const int beacon_OFF_TIME = 3000;
boolean beacon_ON_STATE = true;
unsigned long previousMillis_beacon = 0;
boolean beacon_is_green = true;   // false is then percieved as White

const int tower_gun_ON_TIME = 500;
const int tower_gun_OFF_TIME = 400;
boolean tower_gun_ON_STATE = true;
unsigned long previousMillis_tower_gun = 0;
boolean tower_gun_is_green = false;   // false is then percieved as RED for exercise extreme caution
boolean tower_light_gun_is_ON = false;
short lost_comms_count = 0;
short lost_comms_limit = 10000;


boolean UFO_isOn = true;
short UFO_count = 0;
short UFO_count_limit = 10000; // How long the user has hold the circuit closed for it to trigger ON (clock cyles)



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

  pinMode(g_UFO_LED, OUTPUT);
  digitalWrite(g_UFO_LED, HIGH);

  // User input on the artwork.
  pinMode(g_UFO_INPUT, INPUT);
  pinMode(g_LOST_COMMS_INPUT, INPUT);
  pinMode(g_PCL_INPUT, INPUT);
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

void maintain_UFO(){
  if(digitalRead(g_UFO_INPUT) == HIGH){
    UFO_count += 1;
    if(UFO_count >= UFO_count_limit){
      UFO_isOn = !UFO_isOn;
      UFO_count = 0;
    }
  }else{
    UFO_count = 0;
  }
  
  if(UFO_isOn == true){
    digitalWrite(g_UFO_LED, HIGH);
  }else{
    digitalWrite(g_UFO_LED, LOW);
  }
}

void maintain_LOST_COMMS(){
  if(digitalRead(g_LOST_COMMS_INPUT) == HIGH){
    lost_comms_count += 1;
    if(lost_comms_count >= lost_comms_limit){
      tower_light_gun_is_ON = !tower_light_gun_is_ON;
      lost_comms_count = 0;
    }
  }else{
    lost_comms_count = 0;
  }
}

void maintain_PCL(){
  if(digitalRead(g_PCL_INPUT) == HIGH){
    rwy_intensity_count += 1;
    if(rwy_intensity_count >= rwy_intensity_limit){
      rwy_intensity_index += 1;
      if(rwy_intensity_index >= 4){
        rwy_intensity_index = 0;
      }
      rwy_intensity_count = 0;
    }
  }else{
    rwy_intensity_count = 0;
  }

  analogWrite(g_rwy, rwy_intensity[rwy_intensity_index]);
}

void loop() {

  // helper functions to modularize the behavior of the different lighting packages.
  runwayEdgeLight();
  beaconLight();
  towerLightGun();
  
  // helper functions for user input maintenance
  maintain_UFO();
  maintain_LOST_COMMS();
  maintain_PCL();

  // Service Serial input/output

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
