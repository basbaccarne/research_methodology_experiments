# Research Methodology for Industrial Design: Assignment Experiments
This repo contains all the information for the assignment, which is inspired on [Therms-Up!: DIY Inflatables and Interactive Materials by Upcycling Wasted Thermoplastic Bags](https://github.com/mallcong/Therms-Up/).
The goal of the assignment is to develop an experimental design, execute this, analyse this, and interpret this in a meaningfull way (defenitely take a look at the Evaluation_Result section of the Therms-Up GitHub). 

### 1. Develop an experimental design
- [ ] what would be meaningfull experimental research? (think about possible applications)
- [ ] which are your dependent and independent variables (shapes, materials, combinations, n° seals, ...)?
- [ ] what are your hypotheses?
- [ ] what is your required sample size?

### 2. Develop inflatable artefacts
- [ ] design patterns (include a place for the tube!) (inspiration: see [starter section on the Therms-Up Github](https://github.com/mallcong/Therms-Up/tree/master/Starter))
- [ ] test the template on a sample
- [ ] how? See [creating inflatables](#creating-inflatables)
- [ ] produce the required amount of inflatables according to you research design

### 3. Build the test set-up
- [ ] Set-up your Arduino Nano and the rest of the hardware following [this schematic](set-up.png)
- [ ] Plug in you Arduino and upload [this sketch](arduino_sketch.ino)
- [ ] Check if pressure is detected using the Serial Monitor in the Arduino IDE (Tools > Serial Monitor)
- [ ] Open Processing and open (or copy/paste) the [Processing script](processing_sketch.pde)
- [ ] Make sure you close your Serial Monitor in the Arduino IDE
- [ ] Run the Processing script and resolve potential errors
- [ ] The default goal is to compare maximum pressure until the inflatable leaks or pops

### 4. Run the tests
- [ ] The default measurement is to record maximum inflation pressure, but feel free to deviate from the default.
- [ ] Store the data in a Google Sheet and find a way to import these data in R directly from Google Sheets.

### 5. Do the analysis, interpret and report
- [ ] Run the appropriate analysis
- [ ] Check if the hypothesis are confirmed
- [ ] Make an appropriate data visualization
- [ ] How can you interpret this data? Make the insights actionable & drive design choices.
- [ ] Bundle everything a slide-based report (also reflect on the method)

## Creating inflatables
We won't be using CNC techniques for this assignment. Instead, we will craft the inflatables using a **soldering iron**. For best results, take a look at the optimal temperatures in the paper. It is advised to put a **cardboard underneath** your inflatables and **aluminium foil on top** of it.  
  
 Be creative! Combine different materials, try crazy shapes, think of inspiring applications, ...
  
* For the sample: first draw your shapes with a marker on the aluminium foil. Then follow the contours with a soldering iron.  
* For mass production: first produce your shapes by lasercutting a piece of wood.  
  
![inflatables in action](/floatables.jpg)

## The test set-up
* The test set-up uses an Adafruit MPRLS sensor (measures 0 to 25 PSI, average pressure on earth = 14.5 PSI)
* This sensor uses I2C (data output) and can be connected using 5V, GND and the SCL & SDA pins
* Wire-up the Arduino & connect the tubing (slide a wide tube over the small one to connect the tubing to the sensor)
* Use electrical tape and/or hot glue to seal connections
* Open the Arduino IDE and go to Sketch > Include Library > Manage Libaries. Install the Adafruit MPRLS library
* Plug in you Arduino and upload [this sketch](arduino_sketch.ino)
- Check if pressure is detected using the Serial Monitor in the Arduino IDE (Tools > Serial Monitor)
- Open Processing and open (or copy/paste) the [Processing script](processing_sketch.pde)

![set-up in action](/set-up_img.jpg)  
  
![processing interface in action](/PSI_processing.gif)

## Extra challenge 1: CNC inflatables
For those who are up for an extra challenge: Can you produce the inflatables similar to the initial therms-up study (using G-code)? (Hint: contact Yannick if you're in doubt)

## Extra challenge 2: Arduino-pressure build-up
For those who are up for an extra challenge: Can you build a set-up with a stepper motor and a 3D printed syringe holder to build-up the air pressure mechanically? (Hint: search for Arduino Syringe Pump online)
