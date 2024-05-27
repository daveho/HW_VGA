---
title: "Episode 1"
aspectratio: 169
colorlinks: true
pandoc-beamer-block:
  - classes: [info]
  - classes: [alert]
    type: alert
header-includes:
  - \usepackage{graphbox}
  - \usepackage[export]{adjustbox}
  - \usepackage[absolute,overlay]{textpos}
  - \usecolortheme{orchid}
---

## 

::: { .absolute x=0.5in y=0.85in width=3in }

![](figures/episode01/block-diagram.pdf){ width=3in }

:::

## Hello! { .t }

New (but kind of not new) project!

## Hello! { .t }

New (but kind of not new) project!

Why no real videos for quite a while?

## Hello! { .t }

New (but kind of not new) project!

Why no real videos for quite a while?

* 8-bit computer project: initially lots of progress, lots of fun

## Hello! { .t }

New (but kind of not new) project!

Why no real videos for quite a while?

* 8-bit computer project: initially lots of progress, lots of fun
* Display controller: huge road block. Initial options:

## Hello! { .t }

New (but kind of not new) project!

Why no real videos for quite a while?

* 8-bit computer project: initially lots of progress, lots of fun
* Display controller: huge road block. Initial options:
  1. "Retro" display controller (e.g., TMS9918A)

::: { .absolute x=3in y=1.75in width=2.5in }

![](figures/episode01/TMS9918A.jpg)

:::

## Hello! { .t }

New (but kind of not new) project!

Why no real videos for quite a while?

* 8-bit computer project: initially lots of progress, lots of fun
* Display controller: huge road block. Initial options:
  1. "Retro" display controller (e.g., TMS9918A)
  2. FPGA with custom design

::: { .absolute x=3in y=1.75in width=2.5in }

![](figures/episode01/upduino3.jpg)

:::

## Hello! { .t }

New (but kind of not new) project!

Why no real videos for quite a while?

* 8-bit computer project: initially lots of progress, lots of fun
* Display controller: huge road block. Initial options:
  1. "Retro" display controller (e.g., TMS9918A)
  2. FPGA with custom design

Initially I thought option \#2 was best

## FPGAs are hard { .t }

Difficulties:

## FPGAs are hard { .t }

Difficulties:

* Hard to know what is going on inside the FPGA

## FPGAs are hard { .t }

Difficulties:

* Hard to know what is going on inside the FPGA
* Can't probe signals

## FPGAs are hard { .t }

Difficulties:

* Hard to know what is going on inside the FPGA
* Can't probe signals
* Need to use simulation and possibly formal verification

## FPGAs are hard { .t }

Difficulties:

* Hard to know what is going on inside the FPGA
* Can't probe signals
* Need to use simulation and possibly formal verification

My problem: I wasn't having fun!

## FPGAs are hard { .t }

Difficulties:

* Hard to know what is going on inside the FPGA
* Can't probe signals
* Need to use simulation and possibly formal verification

My problem: I wasn't having fun!

* I like building things

## FPGAs are hard { .t }

Difficulties:

* Hard to know what is going on inside the FPGA
* Can't probe signals
* Need to use simulation and possibly formal verification

My problem: I wasn't having fun!

* I like building things
* I like debugging circuits (using multimeter, oscilloscope, etc.)

## What about option \#1? { .t }

I did experiment with the TMS9918A with some success:

![](figures/episode01/TMS9918A-YM2149F-module.jpg){ .center width=3.5in }

I will return to this at some point

## What to do? { .t }

Was feeling very unmotivated: option \#1 unsatisfactory, option \#2 not fun

## What to do? { .t }

Was feeling very unmotivated: option \#1 unsatisfactory, option \#2 not fun

**What if there was a third option?**

## What to do? { .t }

Was feeling very unmotivated: option \#1 unsatisfactory, option \#2 not fun

**What if there was a third option?**

Wire Wrap Odyssey project (<https://wirewrapodyssey.com>)

VGA text display implemented using logic chips!

::: { .absolute x=2.75in y=1.625in width=3in }

![](figures/episode01/wirewrapodyssey.jpg){ width=3in }

:::

## What to do? { .t }

Was feeling very unmotivated: option \#1 unsatisfactory, option \#2 not fun

**What if there was a third option?**

Wire Wrap Odyssey project (<https://wirewrapodyssey.com>)

VGA text display implemented using logic chips!

::: { .absolute x=2.75in y=1.625in width=3in }

![](figures/episode01/wirewrapodyssey.jpg){ width=3in }

:::

``` {=latex}
\vskip .1in
\hspace{.2in}\fbox{\parbox{1.5in}{
\Large Could I do\\
something similar?
}}
```

## Why VGA text mode using logic chips? { .t }

## Why VGA text mode using logic chips? { .t }

1. Fun!

## Why VGA text mode using logic chips? { .t }

1. Fun!
2. Use actual hardware!

## Why VGA text mode using logic chips? { .t }

1. Fun!
2. Use actual hardware!
3. Direct access to signals

## Why VGA text mode using logic chips? { .t }

1. Fun!
2. Use actual hardware!
3. Direct access to signals
4. Modular design $\rightarrow$ build and test incrementally

## Why VGA text mode using logic chips? { .t }

1. Fun!
2. Use actual hardware!
3. Direct access to signals
4. Modular design $\rightarrow$ build and test incrementally

There are challenges...

## Why VGA text mode using logic chips? { .t }

1. Fun!
2. Use actual hardware!
3. Direct access to signals
4. Modular design $\rightarrow$ build and test incrementally

There are challenges...

`\hspace{.25in}`{=latex} ...but I think they can be managed

## Challenge \#1: Hardware Complexity { .t }

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

GAL devices! (e.g., GAL22V10)

::: { .absolute x=4.25in y=1in width=2in }

![](figures/episode01/GAL22V10-datasheet.png){ width=2in }

:::

::: { .absolute x=4in y=1.5in width=2in }

![](figures/episode01/GAL22V10B.jpg){ width=2in }

:::

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

GAL devices! (e.g., GAL22V10)

* Can replace multiple discrete chips

::: { .absolute x=4.25in y=1in width=2in }

![](figures/episode01/GAL22V10-datasheet.png){ width=2in }

:::

::: { .absolute x=4in y=1.5in width=2in }

![](figures/episode01/GAL22V10B.jpg){ width=2in }

:::

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

GAL devices! (e.g., GAL22V10)

* Can replace multiple discrete chips
* Easy to source (EBay, etc.)

::: { .absolute x=4.25in y=1in width=2in }

![](figures/episode01/GAL22V10-datasheet.png){ width=2in }

:::

::: { .absolute x=4in y=1.5in width=2in }

![](figures/episode01/GAL22V10B.jpg){ width=2in }

:::

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

GAL devices! (e.g., GAL22V10)

* Can replace multiple discrete chips
* Easy to source (EBay, etc.)
* Atmel has compatible parts still in  
  production!

::: { .absolute x=4.25in y=1in width=2in }

![](figures/episode01/GAL22V10-datasheet.png){ width=2in }

:::

::: { .absolute x=3.75in y=1.5in width=2.5in }

![](figures/episode01/ATF22V10C.jpg){ width=2.5in }

:::

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

GAL devices! (e.g., GAL22V10)

* Can replace multiple discrete chips
* Easy to source (EBay, etc.)
* Atmel has compatible parts still in  
  production!
* Easily programmed

::: { .absolute x=4.25in y=1in width=2in }

![](figures/episode01/GAL22V10-datasheet.png){ width=2in }

:::

::: { .absolute x=3.75in y=1.5in width=2.5in }

![](figures/episode01/ATF22V10C.jpg){ width=2.5in }

:::

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

GAL devices! (e.g., GAL22V10)

* Can replace multiple discrete chips
* Easy to source (EBay, etc.)
* Atmel has compatible parts still in  
  production!
* Easily programmed
* Fast enough for 640x480 VGA

::: { .absolute x=4.25in y=1in width=2in }

![](figures/episode01/GAL22V10-datasheet.png){ width=2in }

:::

::: { .absolute x=3.75in y=1.5in width=2.5in }

![](figures/episode01/ATF22V10C.jpg){ width=2.5in }

:::

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

GAL devices! (e.g., GAL22V10)

* Can replace multiple discrete chips
* Easy to source (EBay, etc.)
* Atmel has compatible parts still in  
  production!
* Easily programmed
* Fast enough for 640x480 VGA
* Have pins you can probe directly!

::: { .absolute x=4.25in y=1in width=2in }

![](figures/episode01/GAL22V10-datasheet.png){ width=2in }

:::

::: { .absolute x=3.75in y=1.5in width=2.5in }

![](figures/episode01/ATF22V10C.jpg){ width=2.5in }

:::

## Challenge \#1: Hardware Complexity { .t }

Problem: design could require a large number of logic chips

Solution: use programmable logic!

Wait, didn't you say that programmable logic wasn't fun?

GAL devices! (e.g., GAL22V10)

* Can replace multiple discrete chips
* Easy to source (EBay, etc.)
* Atmel has compatible parts still in  
  production!
* Easily programmed
* Fast enough for 640x480 VGA
* Have pins you can probe directly!
* Reprogrammable: fix bugs easily

::: { .absolute x=4.25in y=1in width=2in }

![](figures/episode01/GAL22V10-datasheet.png){ width=2in }

:::

::: { .absolute x=3.75in y=1.5in width=2.5in }

![](figures/episode01/ATF22V10C.jpg){ width=2.5in }

:::

## Challenge \#2: Design Complexity { .t }

## Challenge \#2: Design Complexity { .t }

Problems:

## Challenge \#2: Design Complexity { .t }

Problems:

* With $25.175$ MHz clock, need to generate a pixel every $39.7$ ns

## Challenge \#2: Design Complexity { .t }

Problems:

* With $25.175$ MHz clock, need to generate a pixel every $39.7$ ns
* Logic to fetch data from VRAM and rasterize it will be intricate

## Challenge \#2: Design Complexity { .t }

Problems:

* With $25.175$ MHz clock, need to generate a pixel every $39.7$ ns
* Logic to fetch data from VRAM and rasterize it will be intricate
* Will be important to validate design before implementing

## Challenge \#2: Design Complexity { .t }

Problems:

* With $25.175$ MHz clock, need to generate a pixel every $39.7$ ns
* Logic to fetch data from VRAM and rasterize it will be intricate
* Will be important to validate design before implementing

Solution: simulation using Logisim Evolution

## Challenge \#2: Design Complexity { .t }

Problems:

* With $25.175$ MHz clock, need to generate a pixel every $39.7$ ns
* Logic to fetch data from VRAM and rasterize it will be intricate
* Will be important to validate design before implementing

Solution: simulation using Logisim Evolution

* Simulate design before building it

## Challenge \#2: Design Complexity { .t }

Problems:

* With $25.175$ MHz clock, need to generate a pixel every $39.7$ ns
* Logic to fetch data from VRAM and rasterize it will be intricate
* Will be important to validate design before implementing

Solution: simulation using Logisim Evolution

* Simulate design before building it
* Includes 74 series devices in library (e.g., 74x163 counter)

## Challenge \#2: Design Complexity { .t }

Problems:

* With $25.175$ MHz clock, need to generate a pixel every $39.7$ ns
* Logic to fetch data from VRAM and rasterize it will be intricate
* Will be important to validate design before implementing

Solution: simulation using Logisim Evolution

* Simulate design before building it
* Includes 74 series devices in library (e.g., 74x163 counter)
* GALs can easily be modeled using combinational logic and
  D-type flip flops

## Challenge \#3: High Frequency { .t }

## Challenge \#3: High Frequency { .t }

Problem: dot clock is $25.175$ MHz

## Challenge \#3: High Frequency { .t }

Problem: dot clock is $25.175$ MHz

* 74HC and 74HCT series chips can't operate reliably!

## Challenge \#3: High Frequency { .t }

Problem: dot clock is $25.175$ MHz

* 74HC and 74HCT series chips can't operate reliably!
* I have limited experience with implementing designs at this frequency

## Challenge \#3: High Frequency { .t }

Problem: dot clock is $25.175$ MHz

* 74HC and 74HCT series chips can't operate reliably!
* I have limited experience with implementing designs at this frequency

Solution: 74ACT series, GALs

## Challenge \#3: High Frequency { .t }

Problem: dot clock is $25.175$ MHz

* 74HC and 74HCT series chips can't operate reliably!
* I have limited experience with implementing designs at this frequency

Solution: 74ACT series, GALs

* 74ACT chips: can operate up to 125 MHz or so

## Challenge \#3: High Frequency { .t }

Problem: dot clock is $25.175$ MHz

* 74HC and 74HCT series chips can't operate reliably!
* I have limited experience with implementing designs at this frequency

Solution: 74ACT series, GALs

* 74ACT chips: can operate up to 125 MHz or so
* GALs can also operate at high frequency, so can use them
  for any functions where a 74ACT chip isn't readily available

## Challenge \#3: High Frequency { .t }

Problem: dot clock is $25.175$ MHz

* 74HC and 74HCT series chips can't operate reliably!
* I have limited experience with implementing designs at this frequency

Solution: 74ACT series, GALs

* 74ACT chips: can operate up to 125 MHz or so
* GALs can also operate at high frequency, so can use them
  for any functions where a 74ACT chip isn't readily available

Some initial high-speed parts of the design are already working!

## Challenge \#4: Video Memory { .t }

## Challenge \#4: Video Memory { .t }

Problem: how to allow host system and display controller to
share access to VRAM?

## Challenge \#4: Video Memory { .t }

Problem: how to allow host system and display controller to
share access to VRAM?

* Could time-share: complex, possibly detrimental for performance

## Challenge \#4: Video Memory { .t }

Problem: how to allow host system and display controller to
share access to VRAM?

* Could time-share: complex, possibly detrimental for performance

Solution: dual-port static RAM

## Challenge \#4: Video Memory { .t }

Problem: how to allow host system and display controller to
share access to VRAM?

* Could time-share: complex, possibly detrimental for performance

Solution: dual-port static RAM

* Specifically 2 $\times$ IDT7134 for a total  
  of 8 KB VRAM

::: { .absolute x=3.5in y=1.5in width=2.5in }

![](figures/episode01/IDT7134.jpg){ width=2.5in }

:::

## Challenge \#4: Video Memory { .t }

Problem: how to allow host system and display controller to
share access to VRAM?

* Could time-share: complex, possibly detrimental for performance

Solution: dual-port static RAM

* Specifically 2 $\times$ IDT7134 for a total  
  of 8 KB VRAM
* Display controller can read while host  
  system  is reading or writing

::: { .absolute x=3.5in y=1.5in width=2.5in }

![](figures/episode01/IDT7134.jpg){ width=2.5in }

:::

## Challenge \#4: Video Memory { .t }

Problem: how to allow host system and display controller to
share access to VRAM?

* Could time-share: complex, possibly detrimental for performance

Solution: dual-port static RAM

* Specifically 2 $\times$ IDT7134 for a total  
  of 8 KB VRAM
* Display controller can read while host  
  system  is reading or writing
* Map into host system address space using  
  2 KB  of  4 KB I/O area

::: { .absolute x=3.5in y=1.5in width=2.5in }

![](figures/episode01/IDT7134.jpg){ width=2.5in }

:::

## Challenge \#4: Video Memory { .t }

Problem: how to allow host system and display controller to
share access to VRAM?

* Could time-share: complex, possibly detrimental for performance

Solution: dual-port static RAM

* Specifically 2 $\times$ IDT7134 for a total  
  of 8 KB VRAM
* Display controller can read while host  
  system  is reading or writing
* Map into host system address space using  
  2 KB  of  4 KB I/O area
  * Have a writable register to select a  
    2 KB bank

::: { .absolute x=3.5in y=1.5in width=2.5in }

![](figures/episode01/IDT7134.jpg){ width=2.5in }

:::

## Challenge \#5: Rendering Pipeline { .t }

## Challenge \#5: Rendering Pipeline { .t }

Problem: need to fetch character and attribute data, look up
font data, and deliver to pixel output hardware *exactly* when
needed

## Challenge \#5: Rendering Pipeline { .t }

Problem: need to fetch character and attribute data, look up
font data, and deliver to pixel output hardware *exactly* when
needed

* Timing of control signals will need to be very precise

## Challenge \#5: Rendering Pipeline { .t }

Problem: need to fetch character and attribute data, look up
font data, and deliver to pixel output hardware *exactly* when
needed

* Timing of control signals will need to be very precise

IDT7134 chips have access time of 70 ns or better, so 2 clock
cycles

## Challenge \#5: Rendering Pipeline { .t }

Problem: need to fetch character and attribute data, look up
font data, and deliver to pixel output hardware *exactly* when
needed

* Timing of control signals will need to be very precise

IDT7134 chips have access time of 70 ns or better, so 2 clock
cycles

This will be the most challenging part of the design!

## Challenge \#6: Physical Size { .t }

## Challenge \#6: Physical Size { .t }

Problem: cards are 15 cm $\times$ 9 cm in size

## Challenge \#6: Physical Size { .t }

Problem: cards are 15 cm $\times$ 9 cm in size

* Design will likely require quite a few chips

## Challenge \#6: Physical Size { .t }

Problem: cards are 15 cm $\times$ 9 cm in size

* Design will likely require quite a few chips
* Using through-hole parts, might not fit!

## Challenge \#6: Physical Size { .t }

Problem: cards are 15 cm $\times$ 9 cm in size

* Design will likely require quite a few chips
* Using through-hole parts, might not fit!

Solution: use surface mount parts

## Challenge \#6: Physical Size { .t }

Problem: cards are 15 cm $\times$ 9 cm in size

* Design will likely require quite a few chips
* Using through-hole parts, might not fit!

Solution: use surface mount parts

* Should be able to fit quite a few SOIC footprint parts on one card

## Challenge \#6: Physical Size { .t }

Problem: cards are 15 cm $\times$ 9 cm in size

* Design will likely require quite a few chips
* Using through-hole parts, might not fit!

Solution: use surface mount parts

* Should be able to fit quite a few SOIC footprint parts on one card
* Will probably leave VRAM and GALs as through-hole so they
  can be socketed

## Challenge \#7: Time and Effort { .t }

Problem: this project will take some time

## Challenge \#7: Time and Effort { .t }

Problem: this project will take some time

Solution: I should have some time!

## Challenge \#7: Time and Effort { .t }

Problem: this project will take some time

Solution: I should have some time!

* No accreditation self study report

::: { .absolute x=4in y=1.5in width=1.25in }

![](figures/episode01/ABET_logo.svg){ width=1.25in }

:::

## Challenge \#7: Time and Effort { .t }

Problem: this project will take some time

Solution: I should have some time!

* No accreditation self study report
* No new Zelda or DLC

::: { .absolute x=3.75in y=0.75in width=1.75in }

![](figures/episode01/totk.jpg){ width=1.75in }

:::

## Challenge \#7: Time and Effort { .t }

Problem: this project will take some time

Solution: I should have some time!

* No accreditation self study report
* No new Zelda or DLC
* I'm excited about working on this!

::: { .absolute x=3.25in y=1in width=2.75in }

![](figures/episode01/prototype.jpg){ width=2.75in }

:::

## Getting Started... { .t }

## Getting Started... { .t }

Initial goals:

## Getting Started... { .t }

Initial goals:

* Generate horizontal and vertical sync signals

## Getting Started... { .t }

Initial goals:

* Generate horizontal and vertical sync signals
* Generate pixel visibility

## Getting Started... { .t }

Initial goals:

* Generate horizontal and vertical sync signals
* Generate pixel visibility
* Implement sync and color output

## Getting Started... { .t }

Initial goals:

* Generate horizontal and vertical sync signals
* Generate pixel visibility
* Implement sync and color output

This should allow us to display a solid foreground or background
color on a VGA monitor

## Getting Started... { .t }

Initial goals:

* Generate horizontal and vertical sync signals
* Generate pixel visibility
* Implement sync and color output

This should allow us to display a solid foreground or background
color on a VGA monitor

Might not sound too exciting, but this is a fairly substantial
part of the overall problem

## Getting Started... { .t }

Initial goals:

* Generate horizontal and vertical sync signals
* Generate pixel visibility
* Implement sync and color output

This should allow us to display a solid foreground or background
color on a VGA monitor

Might not sound too exciting, but this is a fairly substantial
part of the overall problem

* Timing of sync signals can be leveraged for other internal
  control signals
