`timescale 1ns / 1ps

module planets(

    input [13:0] x,         // Horizontal pixel coordinate
    input [13:0] y,         // Vertical pixel coordinate 
    input video_on,         // High when the current pixel is within the visible VGA area

    // Dynamic positions of the planets
    input [10:0] x_mer,
    input [10:0] y_mer,
    input [10:0] x_ven,
    input [10:0] y_ven,
    input [10:0] x_earth,
    input [10:0] y_earth,

    // VGA color outputs
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue
);

    // Combined output color signals
    wire [3:0] vgaRedCombined;
    wire [3:0] vgaGreenCombined;
    wire [3:0] vgaBlueCombined;

    // ==============================
    // SUN (Static Yellow Circle)
    // ==============================

    localparam sunXcenter = 960;
    localparam sunYcenter = 540;
    localparam radius     = 130;

    wire [3:0] vgaRedCircle;
    wire [3:0] vgaGreenCircle;
    wire [3:0] vgaBlueCircle;

    wire signed [19:0] X = x - sunXcenter;
    wire signed [19:0] Y = y - sunYcenter;
    wire signed [22:0] sum = X * X + Y * Y;
    wire [22:0] radiusSQ = radius * radius;

    wire inside_circle = (sum <= radiusSQ);

    assign vgaRedCircle   = inside_circle ? 4'hF : 4'h0;
    assign vgaGreenCircle = inside_circle ? 4'hF : 4'h0;
    assign vgaBlueCircle  = 4'h0;

    // ==============================
    // PLANETARY ORBITS (Three Rings)
    // ==============================

    localparam orbit1Radius = 260;
    localparam orbit2Radius = 380;
    localparam orbit3Radius = 500;
    localparam tickness     = 2;

    wire [3:0] vgaRedOrbits;
    wire [3:0] vgaGreenOrbits;
    wire [3:0] vgaBlueOrbits;

    wire insideOrbit1;
    wire insideOrbit2;
    wire insideOrbit3;

    wire [21:0] rminSq1 = (orbit1Radius - tickness) * (orbit1Radius - tickness);
    wire [21:0] rmaxSq1 = (orbit1Radius + tickness) * (orbit1Radius + tickness);
    wire [21:0] rminSq2 = (orbit2Radius - tickness) * (orbit2Radius - tickness);
    wire [21:0] rmaxSq2 = (orbit2Radius + tickness) * (orbit2Radius + tickness);
    wire [21:0] rminSq3 = (orbit3Radius - tickness) * (orbit3Radius - tickness);
    wire [21:0] rmaxSq3 = (orbit3Radius + tickness) * (orbit3Radius + tickness);

    assign insideOrbit1 = (sum >= rminSq1) && (sum <= rmaxSq1);
    assign insideOrbit2 = (sum >= rminSq2) && (sum <= rmaxSq2);
    assign insideOrbit3 = (sum >= rminSq3) && (sum <= rmaxSq3);

    wire inside_any_orbit = insideOrbit1 || insideOrbit2 || insideOrbit3;

    assign vgaRedOrbits   = inside_any_orbit ? 4'hF : 4'h0;
    assign vgaGreenOrbits = inside_any_orbit ? 4'hF : 4'h0;
    assign vgaBlueOrbits  = inside_any_orbit ? 4'hF : 4'h0;

    // ==============================
    // PLANETS: Mercury, Venus, Earth
    // ==============================

    // ----------- MERCURY -----------
    localparam rMer = 20;

    wire signed [19:0] Xm1 = x - x_mer;
    wire signed [19:0] Ym1 = y - y_mer;
    wire [22:0] sum1 = Xm1 * Xm1 + Ym1 * Ym1;
    wire [22:0] rMerSq = rMer * rMer;
    wire inside_mercur = (sum1 <= rMerSq);

    wire [3:0] vgaRedMerc   = inside_mercur ? 4'hA : 4'h0;  // Orange
    wire [3:0] vgaGreenMerc = inside_mercur ? 4'h5 : 4'h0;
    wire [3:0] vgaBlueMerc  = 4'h0;

    // ------------ VENUS ------------
    localparam rVen = 40;

    wire signed [19:0] Xm2 = x - x_ven;
    wire signed [19:0] Ym2 = y - y_ven;
    wire [22:0] sum2 = Xm2 * Xm2 + Ym2 * Ym2;
    wire [22:0] rVenSq = rVen * rVen;
    wire inside_venus = (sum2 <= rVenSq);

    wire [3:0] vgaRedVen   = inside_venus ? 4'hF : 4'h0;  // Red
    wire [3:0] vgaGreenVen = 4'h0;
    wire [3:0] vgaBlueVen  = 4'h0;

    // ------------ EARTH ------------
    localparam rEarth = 80;

    wire signed [19:0] Xm3 = x - x_earth;
    wire signed [19:0] Ym3 = y - y_earth;
    wire [22:0] sum3 = Xm3 * Xm3 + Ym3 * Ym3;
    wire [22:0] rEarthSq = rEarth * rEarth;
    wire inside_earth = (sum3 <= rEarthSq);

    wire [3:0] vgaRedEarth   = 4'h0;
    wire [3:0] vgaGreenEarth = inside_earth ? 4'hF : 4'h0;  // Green
    wire [3:0] vgaBlueEarth  = inside_earth ? 4'hF : 4'h0;  // Blue

    // ==============================
    // COMBINE ALL ELEMENTS FOR VGA
    // ==============================

    assign vgaRedCombined =
        inside_earth     ? vgaRedEarth   :
        inside_venus     ? vgaRedVen     :
        inside_mercur    ? vgaRedMerc    :
        inside_any_orbit ? vgaRedOrbits  :
        inside_circle    ? vgaRedCircle  : 4'h1;

    assign vgaGreenCombined =
        inside_earth     ? vgaGreenEarth :
        inside_venus     ? vgaGreenVen   :
        inside_mercur    ? vgaGreenMerc  :
        inside_any_orbit ? vgaGreenOrbits:
        inside_circle    ? vgaGreenCircle: 4'h0;

    assign vgaBlueCombined =
        inside_earth     ? vgaBlueEarth  :
        inside_venus     ? vgaBlueVen    :
        inside_mercur    ? vgaBlueMerc   :
        inside_any_orbit ? vgaBlueOrbits :
        inside_circle    ? vgaBlueCircle : 4'h4;

    // Only output color if within visible area
    assign vgaRed   = video_on ? vgaRedCombined   : 4'h0;
    assign vgaGreen = video_on ? vgaGreenCombined : 4'h0;
    assign vgaBlue  = video_on ? vgaBlueCombined  : 4'h0;

endmodule
