const int buttonPin = 2;     // the number of the pushbutton pin
const int ledPin =  13;      // the number of the LED pin for testing

int buttonState = 0;         // variable for reading the pushbutton status

void setup() {
  // initialize the LED pin as an output:
  pinMode(ledPin, OUTPUT);  
  
  // initialize the pushbutton pin as an input:
  pinMode(buttonPin, INPUT);  

  Serial.begin(9600);

}

void loop(){
 
  // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);

  // check if the pushbutton is pressed.
  // if it is, the buttonState is HIGH:
  if (buttonState == HIGH) {     
    // turn LED on:    
    digitalWrite(ledPin, HIGH);
  } 
  else {
    // turn LED off:
    digitalWrite(ledPin, LOW); 
  }
  
  // get the sensor value
  int sensorValue = analogRead(A0);
  
  // send the values over Serial comma separated
  Serial.print(sensorValue);
  Serial.print(",");
  Serial.println(buttonState);

  delay(10);

}

