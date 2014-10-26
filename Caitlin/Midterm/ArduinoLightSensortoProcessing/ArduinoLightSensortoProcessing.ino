int sensorValue0;
int sensorValue1;
int sensor0Low = 1023;
int sensor1Low = 1023;
int sensor0High = 0;
int sensor1High = 0;
 
void setup() {
  // initialize the serial communication:
  Serial.begin(9600);
  
   //calibrate sensors for five seconds
//  while (millis() < 5000) {
//    
//    sensorValue0 = analogRead(A0);
//    sensorValue1 = analogRead(A1);
//    
//    if (sensorValue0 > sensor0High){
//      sensor0High = sensorValue0;
//    }
//    if (sensorValue0 < sensor0Low){
//      sensor0Low = sensorValue0;
//    }
//    if (sensorValue1 > sensor1High){
//      sensor1High = sensorValue1;
//    }
//    if (sensorValue1 < sensor1Low){
//      sensor1Low = sensorValue1;
//    }
//  }
}
 
void loop() {
  sensorValue0 = analogRead(A0);
  sensorValue1 = analogRead(A1);
  Serial.print(sensorValue0);
  Serial.print(",");
  Serial.println(sensorValue1);
 
  delay(10);
}
