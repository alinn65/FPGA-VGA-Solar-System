module top(
    input  wire clk,         // Main input clock
    input  wire rst_n,       // Active-low reset
    output wire [3:0] vgaRed,   // VGA Red output
    output wire [3:0] vgaGreen, // VGA Green output
    output wire [3:0] vgaBlue,  // VGA Blue output
    output wire h_sync,         // VGA horizontal sync
    output wire v_sync          // VGA vertical sync
);

    // ==============================
    // INTERNAL SIGNAL DECLARATIONS
    // ==============================

    wire clk1485;              // 148.5 MHz clock for 1080p VGA
    wire [13:0] x, y;          // VGA pixel coordinates
    wire video_on;             // Indicates visible display area

    // Angles for each planet (used as ROM index)
    wire [8:0] angle_mercur;
    wire [8:0] angle_venus;
    wire [8:0] angle_earth;

    // Planet position coordinates from ROM
    wire [10:0] x_mer, y_mer;
    wire [10:0] x_ven, y_ven;
    wire [10:0] x_earth, y_earth;

    // Clock ticks that control orbit speed
    wire tick_mercur;
    wire tick_venus;
    wire tick_earth;

    // ==============================
    // CLOCK GENERATION (148.5 MHz)
    // ==============================

    clk1485 i_clk1485 (
        .clk_out1(clk1485),  // Output 148.5 MHz clock
        .reset(rst_n),       // Reset input (active high)
        .locked(locked),     // Unused in this design
        .clk_in1(clk)        // Input clock (e.g., 100 MHz)
    );

    // ==============================
    // TICK GENERATOR (Planet Speeds)
    // ==============================

    tick_generator i_tick_generator (
        .clk1485     (clk1485),
        .rst_n       (!rst_n),
        .tick_mercur (tick_mercur),
        .tick_venus  (tick_venus),
        .tick_earth  (tick_earth)
    );

    // ==============================
    // ANGLE COUNTERS (Orbit Index)
    // ==============================

    angle_counter i_angle_counter (
        .clk1485     (clk1485),
        .rst_n       (!rst_n),
        .tick_mercur (tick_mercur),
        .tick_venus  (tick_venus),
        .tick_earth  (tick_earth),
        .angle_mercur(angle_mercur),
        .angle_venus (angle_venus),
        .angle_earth (angle_earth)
    );

    // ==============================
    // ROM LOOKUPS FOR ORBIT COORDINATES
    // ==============================

    orbit_rom_mercur i_orbit_rom_mercur (
        .angle_index(angle_mercur),
        .x_out       (x_mer),
        .y_out       (y_mer)
    );

    orbit_rom_venus i_orbit_rom_venus (
        .angle_index(angle_venus),
        .x_out       (x_ven),
        .y_out       (y_ven)
    );

    orbit_rom_earth i_orbit_rom_earth (
        .angle_index(angle_earth),
        .x_out       (x_earth),
        .y_out       (y_earth)
    );

    // ==============================
    // VGA SYNC SIGNALS AND COORDINATES
    // ==============================

    vga_sync i_vga_sync (
        .clk1485  (clk1485),
        .rst_n    (!rst_n),
        .x        (x),
        .y        (y),
        .video_on (video_on),
        .h_sync   (h_sync),
        .v_sync   (v_sync)
    );

    // ==============================
    // PLANET RENDERING MODULE
    // ==============================

    planets i_planets (
        .x        (x),
        .y        (y),
        .video_on (video_on),
        .x_mer    (x_mer),
        .y_mer    (y_mer),
        .x_ven    (x_ven),
        .y_ven    (y_ven),
        .x_earth  (x_earth),
        .y_earth  (y_earth),
        .vgaRed   (vgaRed),
        .vgaGreen (vgaGreen),
        .vgaBlue  (vgaBlue)
    );

endmodule
