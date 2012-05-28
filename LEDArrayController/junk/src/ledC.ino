/* LedStripGradient: Example Arduino sketch that shows
 * how to control an Addressable RGB LED Strip from Pololu.
 *
 * To use this, you will need to plug an Addressable RGB LED
 * strip from Pololu into pin 12.  After uploading the sketch,
 * you should see a pattern on the LED strip that fades from
 * green to pink and also moves along the strip.
 */
 
#include <PololuLedStrip.h>

// Create an ledStrip object on pin 12.
PololuLedStrip<12> ledStrip;

// Create a buffer for holding 60 colors.  Takes 180 bytes.
#define LED_COUNT 30
rgb_color colors[LED_COUNT];

void setup()
{

}

void loop()
{
  byte i = 0;
  byte r = 0;
  byte g = 0;
  byte b = 0;
  byte c = 0;
  int incomingByte = 0;
  Serial.begin(115200);
  Serial.println("R");  
  while (i < LED_COUNT)
  {
    if (Serial.available() > 0) {
      incomingByte = Serial.read();
      c++;
      switch (c) {
        case 1:
          r = incomingByte;
          break;
        case 2:
          g = incomingByte;
          break;
        case 3:
          b = incomingByte;
          c = 0;
          i++;
          colors[i] = (rgb_color){ r, g, b };
          break;  
      } 
    }
  }
  Serial.println ("D");
  Serial.end();
  ledStrip.write(colors, LED_COUNT);    
}
