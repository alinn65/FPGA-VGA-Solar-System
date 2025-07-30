# 🌌 FPGA VGA Solar System (Basys-3)

This project simulates a simple 2D solar system on an FPGA using VGA output. It visualizes the Sun at the center and three planets — **Mercury**, **Venus**, and **Earth** — orbiting in real time along circular paths.

---

## 🚀 Features

- Real-time animation of orbits
- Planets follow circular trajectories using lookup tables (ROM)
- Central Sun and visible orbit rings
- Supports **1920×1080 @ 60Hz VGA resolution**
- Color-coded planets:
  - Mercury: orange
  - Venus: red
  - Earth: blue & green
- Fully modular Verilog design — easy to extend
- Using Python to generate coordinates for each angle on the orbit

---

## 🗂️ Module Overview

| Module              | Description                                         |
|---------------------|-----------------------------------------------------|
| `top.v`             | Top-level module connecting all components          |
| `vga_sync.v`        | VGA synchronization: generates pixel coordinates, sync pulses |
| `planets.v`         | Draws planets, orbits, and the sun on screen        |
| `tick_generator.v`  | Generates periodic ticks to control orbit speeds    |
| `angle_counter.v`   | Increments angle values based on ticks              |
| `orbit_rom_mercur.v`| Outputs (x,y) for Mercury based on angle            |
| `orbit_rom_venus.v` | Outputs (x,y) for Venus based on angle              |
| `orbit_rom_earth.v` | Outputs (x,y) for Earth based on angle              |

---

## 🎨 VGA Display Details

- **Resolution:** 1920×1080 (Full HD)
- **Frame Rate:** 60 Hz
- **Pixel Clock:** 148.5 MHz
- **Color Depth:** 12-bit (4 bits per RGB channel)

---

## 🔧 Requirements

- FPGA board with:
  - VGA output
  - Clock input suitable for generating 148.5 MHz (PLL recommended)
- Verilog-compatible toolchain (e.g. Vivado, Quartus)

---

## ⚙️ How It Works

- Each planet has:
  - A **tick generator** that defines its orbital speed
  - An **angle counter** that increases angle values (0–359)
  - A **ROM lookup** that converts angle → (x,y) coordinate on orbit
- The `planets.v` module compares current VGA pixel position `(x, y)`
  against each object's location to draw them accordingly.

---

## 🛠️ Future Improvements

- Add more planets (Mars, Jupiter, etc.)
- Label each planet with names
- Simulate day/night shading on Earth
- Add stars or background using ROM
- User input to control simulation speed

---

## 📷 Demo 

![SS](https://github.com/user-attachments/assets/1cc7ec79-b3df-4f04-a78d-2a04b38ce89d)


---

