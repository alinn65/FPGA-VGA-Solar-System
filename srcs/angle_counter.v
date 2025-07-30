module angle_counter(
    input wire clk1485,          // 148.5 MHz clock
    input wire rst_n,            // Active-low reset

    input wire tick_mercur,      // Tick for Mercury orbit
    input wire tick_venus,       // Tick for Venus orbit
    input wire tick_earth,       // Tick for Earth orbit

    output reg [8:0] angle_mercur, // Mercury angle (0–359)
    output reg [8:0] angle_venus,  // Venus angle (0–359)
    output reg [8:0] angle_earth   // Earth angle (0–359)
);

    // =====================================
    // MERCURY ANGLE COUNTER
    // =====================================
    always @(posedge clk1485 or negedge rst_n) begin
        if (!rst_n) begin
            angle_mercur <= 9'd0;
        end else if (tick_mercur) begin
            if (angle_mercur == 9'd359)
                angle_mercur <= 9'd0;
            else
                angle_mercur <= angle_mercur + 1;
        end
    end

    // =====================================
    // VENUS ANGLE COUNTER
    // =====================================
    always @(posedge clk1485 or negedge rst_n) begin
        if (!rst_n) begin
            angle_venus <= 9'd0;
        end else if (tick_venus) begin
            if (angle_venus == 9'd359)
                angle_venus <= 9'd0;
            else
                angle_venus <= angle_venus + 1;
        end
    end

    // =====================================
    // EARTH ANGLE COUNTER
    // =====================================
    always @(posedge clk1485 or negedge rst_n) begin
        if (!rst_n) begin
            angle_earth <= 9'd0;
        end else if (tick_earth) begin
            if (angle_earth == 9'd359)
                angle_earth <= 9'd0;
            else
                angle_earth <= angle_earth + 1;
        end
    end

endmodule
