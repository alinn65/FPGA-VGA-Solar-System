`timescale 1ns / 1ps

module vga_sync(
    input wire clk1485,         // 148.5 MHz clock for 1080p
    input wire rst_n,           // Active-low reset

    output wire video_on,       // High when pixel is in visible area
    output wire h_sync,         // Horizontal sync signal
    output wire v_sync,         // Vertical sync signal
    output wire [13:0] x,       // Current horizontal pixel position
    output wire [13:0] y        // Current vertical pixel position
);

    // ==============================
    // VGA 1080p Timing Parameters
    // ==============================

    // Horizontal timing (in pixels)
    localparam display_h    = 1920;
    localparam backporch_h  = 148;
    localparam retrace_h    = 44;
    localparam frontporch_h = 88; 
    localparam total_h      = display_h + backporch_h + retrace_h + frontporch_h;

    // Vertical timing (in lines)
    localparam display_v    = 1080;
    localparam backporch_v  = 36;
    localparam retrace_v    = 5;
    localparam frontporch_v = 4; 
    localparam total_v      = display_v + backporch_v + retrace_v + frontporch_v;

    // ==============================
    // Horizontal and Vertical Counters
    // ==============================

    reg [13:0] h_counter;  // Counts pixels horizontally
    reg [13:0] v_counter;  // Counts lines vertically

    // Horizontal counter
    always @(posedge clk1485 or negedge rst_n) begin
        if (!rst_n)
            h_counter <= 14'd0;
        else if (h_counter == total_h - 1)
            h_counter <= 14'd0;
        else
            h_counter <= h_counter + 1;
    end

    // Vertical counter (increments when horizontal counter wraps)
    always @(posedge clk1485 or negedge rst_n) begin
        if (!rst_n)
            v_counter <= 14'd0;
        else if (h_counter == total_h - 1) begin
            if (v_counter == total_v - 1)
                v_counter <= 14'd0;
            else
                v_counter <= v_counter + 1;
        end
    end

    // ==============================
    // Output Assignments
    // ==============================

    assign x = h_counter;
    assign y = v_counter;

    // Video is "on" only during active display area
    assign video_on = (h_counter < display_h) && (v_counter < display_v);

    // Horizontal sync pulse (active low)
    assign h_sync = !((h_counter >= display_h + backporch_h) &&
                      (h_counter <  display_h + backporch_h + retrace_h));

    // Vertical sync pulse (active low)
    assign v_sync = !((v_counter >= display_v + backporch_v) &&
                      (v_counter <  display_v + backporch_v + retrace_v));

endmodule
