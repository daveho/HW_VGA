# Hardware VGA text mode project

![photo of the prototype hardware](Episode01/figures/episode01/prototype.jpg)

This repository documents my attempt to implement a VGA text mode using logic chips and GAL devices for my [8-bit computer project](https://github.com/daveho/DIY8bit).

As of the current time (end of May 2024) the hardware can produce a valid 640x480 VGA video signal and display a solid color.

The project will be documented as a series of youtube videos:

* [Episode 01](https://youtu.be/FBDaKUfpmKo)

This project was inspired by the [Wire Wrap Odyssey](https://wirewrapodyssey.com) project.

I'm using [Logisim Evolution](https://github.com/logisim-evolution/logisim-evolution) to simulate parts of the design before building the hardware.

I'm using [GALasm](https://github.com/daveho/GALasm) to compile the GAL logic equations into fuse maps. Note that even though this is hosted in my Github account, I didn't write it. (I fixed a bug and then posted the code on my Github since there didn't seem to be any existing version control repo for it.)

The [HardwareDesign](HardwareDesign) directory contains the most up-to-date hardware design. The schematics were created using (of course!) [KiCAD](https://www.kicad.org/). There is a [PDF of the schematic](HardwareDesign/HW_VGA.pdf) which may or may not be up to date.

This is a work in progress! I don't make any guarantees about its usefulness or correctness. Feedback can be sent to <mailto:david.hovemeyer@gmail.com>.
