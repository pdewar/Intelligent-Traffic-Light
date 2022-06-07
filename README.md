# Intelligent Traffic Light Controller

Implementation of an Intelligent traffic light controller using the ISE WebPack and Nexys 3 board. Design and implement a smart traffic light controller system using VHDL and FPGA. The system should model a Mealy based Finite state machine whereas the outputs depend on the inputs and the current state. The system should control an intersection with turning lanes and a prioritized busy lane.

### Specifications:
* give green light to (busy) highway as much as possible (higher priority). 
* give green to (not busy) farm road momentarily when needed.
* must always have at least one red light.
* sensor on farm road indicates when cars are waiting for green light.
* must obey required (time) lengths for green, yellow, red lights.

### Cases to Consider:
1. no car waiting at farm road -> highway green and farm road red.
2. car(s) waiting at farm road AND highway green for some minimum time (called LONG) -> highway turns yellow for some minimum time (called SHORT) -> highway turns red and farm road stays red.
3. Both highway and farm road stay red for some minimum time (called SHORT) -> farm road turns green.
4. no car waiting at farm road anymore OR farm road green for some minimum time (LONG) -> farm road turns yellow for some minimum time (SHORT) -> farm road turns red and highway turns green.
5. repeat #1.

### Design Approach:
* Build the traffic light controller out of two modules:
  * a state machine: sets colors of lights, etc 
  * two counters: control durations of lights

### Basic Design:

![Intelligent-Traffic-Light-0](https://github.com/pdewar/Intelligent-Traffic-Light/blob/c8ac17c381225a6ceb9366e1785134e6691604c1/images/Mock%20up%20schematic.png)

### Modeled Intersection:

![Intelligent-Traffic-Light-1](https://github.com/pdewar/Intelligent-Traffic-Light/blob/c8ac17c381225a6ceb9366e1785134e6691604c1/images/Intersection%20layout.png)

### State Machine:

![Intelligent-Traffic-Light-2](https://github.com/pdewar/Intelligent-Traffic-Light/blob/c8ac17c381225a6ceb9366e1785134e6691604c1/images/State%20Diagram.png)

## Getting Started

1. [Install Adept 2](https://digilent.com/reference/software/adept/start?redirect=2#software_downloads)

2. Download [project source code](https://github.com/pdewar/Intelligent-Traffic-Light/archive/refs/heads/main.zip)

3. Extract ZIP archive

4. Open Adept 2 and connect the Nexys board with the USB connector to your computer

5. Select Nexys board in the drop down menue at top right of adept

6. Click the config tab then click Initalize Chain button

8. Click browse and navigate to "Intelligent-Traffic-Light-main" folder and select top.bit

9. Click program button

10. Now, you can test the design by toggling the switches on the Nexys board.

![Intelligent-Traffic-Light-3](https://github.com/pdewar/Intelligent-Traffic-Light/blob/b632367d8c5e55ff0ddad875f5d7af63780124c6/images/Nexys%20Board.png)
