module tick_generator(
    input  wire clk1485,         // 148.5 MHz system clock
    input  wire rst_n,           // Active-low reset
    output reg  tick_mercur,     // Tick for Mercury orbit update
    output reg  tick_venus,      // Tick for Venus orbit update
    output reg  tick_earth       // Tick for Earth orbit update
);

    // ==============================
    // TICK PERIODS (number of clock cycles)
    // ==============================
    localparam MERCUR_PERIOD = 22'd1_000_000;  // ~6.7 ms @ 148.5 MHz
    localparam VENUS_PERIOD  = 22'd2_000_000;  // ~13.5 ms
    localparam EARTH_PERIOD  = 23'd4_000_000;  // ~27 ms

    // ==============================
    // COUNTERS FOR EACH PLANET
    // ==============================
    reg [21:0] counter_mercur;
    reg [21:0] counter_venus;
    reg [22:0] counter_earth;

    // ==============================
    // MERCURY TICK LOGIC
    // ==============================
    always @(posedge clk1485 or negedge rst_n) begin
        if (!rst_n) begin
            counter_mercur <= 0;
            tick_mercur    <= 0;
        end else begin
            if (counter_mercur == MERCUR_PERIOD) begin
                counter_mercur <= 0;
                tick_mercur    <= 1;  // Generate tick for 1 clock cycle
            end else begin
                counter_mercur <= counter_mercur + 1;
                tick_mercur    <= 0;
            end
        end
    end

    // ==============================
    // VENUS TICK LOGIC
    // ==============================
    always @(posedge clk1485 or negedge rst_n) begin
        if (!rst_n) begin
            counter_venus <= 0;
            tick_venus    <= 0;
        end else begin
            if (counter_venus == VENUS_PERIOD) begin
                counter_venus <= 0;
                tick_venus    <= 1;
            end else begin
                counter_venus <= counter_venus + 1;
                tick_venus    <= 0;
            end
        end
    end

    // ==============================
    // EARTH TICK LOGIC
    // ==============================
    always @(posedge clk1485 or negedge rst_n) begin
        if (!rst_n) begin
            counter_earth <= 0;
            tick_earth    <= 0;
        end else begin
            if (counter_earth == EARTH_PERIOD) begin
                counter_earth <= 0;
                tick_earth    <= 1;
            end else begin
                counter_earth <= counter_earth + 1;
                tick_earth    <= 0;
            end
        end
    end

endmodule
