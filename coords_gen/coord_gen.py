import math
#generating coordinates for angle 1 to 360 for each planet
radius = 500
center_x = 960
center_y = 540


for i in range(359):
    angle_rad = math.radians(i)
    x = int(center_x + radius * math.cos(angle_rad))
    y = int(center_y - radius * math.sin(angle_rad)) 

    print(f"9'd{i}: begin x_out = {x}; y_out = {y}; end")
#260
#380
#500