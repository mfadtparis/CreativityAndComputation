int sensorValue0;
int sensorValue1;
 
void setup() {
  // initialize the serial communication:
  Serial.begin(9600);
}
 
void loop() {
  sensorValue0 = analogRead(A0);
  sensorValue1 = analogRead(A1);
  Serial.print(sensorValue0);
  Serial.print(",");
  Serial.println(sensorValue1);
 
  delay(10);
}
