/*
 * Scetch makes a servo motor spin from 0 to 180 and back
 */

#include <Servo.h>

// Define a servo engine
Servo servo;

// The pin that the servo is connected to.
const int SERVO_PIN = 9;

// Delay to let the servo move the the next angle.
const int DELAY = 30;

void setup() {
  // Connect the servo engine controller to the servo pin.
  servo.attach(SERVO_PIN);
}

void loop() {
  // Make the servo engine go from 0 to 180 really slowly by only moving it 5 degrees at a time
  int pos = 0;
  
  // 0 to 180
  for(int i = 0; i <= 180; i += 5) {
    servo.write(i); // Write to the new position
    delay(DELAY); // Wait for servo to arrive at position 
  }

  // 180 to 0, identical but we iterate backwards.
  for(int i = 180; i >= 0; i -= 5) {
    servo.write(i);
    delay(DELAY);
  }
}
