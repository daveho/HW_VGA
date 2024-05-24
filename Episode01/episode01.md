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

## FPGAs are hard { .t }

Difficulties:

* Hard to know what is going on inside the FPGA
* Can't probe signals
* Need to use simulation and possibly formal verification

My problem: I wasn't having fun!

* I like building things
* I like debugging circuits (using multimeter, oscilloscope, etc.)

**What to do?**
