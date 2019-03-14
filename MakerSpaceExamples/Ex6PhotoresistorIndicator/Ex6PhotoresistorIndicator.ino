/*
 * Makes an LED Light up when a photoresistor is covered, basically when it is dark....
 */

// Pin of the photoresistor
const int PHOTO_PIN = A2;

// Pin of the LED to light up
const int LED_PIN = 11;

void setup() {
  // Setup photoresistor as input and LED as output
  pinMode(PHOTO_PIN, INPUT);
  pinMode(LED_PIN, OUTPUT);
}

void loop() {
  // Read current from photoresistor
  int light_value = analogRead(PHOTO_PIN);
  
  // This is setup to give higher current when the photoresistor is getting light, so invert the value
  light_value = 1023 - light_value;

  // Send output to LED, mapped between 0 and 255 since analog output is between 0 and 255
  analogWrite(LED_PIN, map(light_value, 0, 1023, 0, 255));
}
