M581 S-1 T2
M140 S0 	; Set the bed temperature and don't wait for it
M104 S0	    ; set the current hotend temperature to 0 and don't wait for it
M107
G90            ; absolute positioning
G1 X{move.axes[0].min} Y{move.axes[1].max} F6000
M84