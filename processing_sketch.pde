// Open this file (or copy/paste) in processing to visualize the data from the serial monitor
// Make sure your Arduino is connected & the COM port is not being used by another application
// Check COM port settings if you encounter issues

// libraries
import processing.serial.*;

// config
int lf = 10;
String serialString = null;
Serial myPort;
float serialNum;
float maxVal = 0;

void setup() {
  // window size
  size(1200, 800);

  // set COM port
  myPort = new Serial(this, Serial.list()[0], 9600);
  myPort.clear();
}

void draw() {
  clear();

  // get data from COM port and transform to float
  while (myPort.available() > 0) {
    serialString = myPort.readStringUntil(lf);
    if (serialString != null) {
      print(serialString);
      serialNum=float(serialString);
      println(serialNum);
    }
  }
  myPort.clear();

  // save maximum value
  if (serialNum > maxVal) {
    maxVal = serialNum;
  }

  // dataviz: background
  background(255);

  // dataviz: balloons
  stroke(30, 100, 200);
  fill(30, 100, 200, 100);
  ellipse(600, 400, max_value, max_value);
  ellipse(600, 400, num, num);

  // dataviz: text
  String now = "current reading:       " + nf(serialNum) +  " Pascal";
  String max = "maximum reading: " + nf(maxVal) +  " Pascal";
  fill(30, 100, 200);
  textSize(20);
  text(now, 20, 40);
  text(max, 20, 70);
  
  fill(255, 210, 0);
  text("mouse click = reset max", 20, 100);
}

// reset maximum on mouse click
void mousePressed() {
  maxVal = 0;
}
