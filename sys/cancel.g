M581 S-1 T2
G90            ; absolute positioning
G1 X{move.axes[0].min} Y{move.axes[1].max} F6000
M140 S0 R0
G10 S-273.1
M140 S-273.1 R0
G92 E0
M84
M106 S255
echo "Cool down, please wait"
while true
	if heat.heaters[1].current < 50.0 ; Wait until T0 dropped below 50°C
		break
	G4 S5

M107
