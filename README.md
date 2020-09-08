# RRF3_LPC-Configuration

BLTouch connected to ZMIN<br>
Filament runout sensor connected to XMAX<br>
Independent Dual Z, connected to Z and E1<br>
Y-Endstop at max (attached at the rear)<br>
BTT Relay 1.2 (Power off after print) connected to ZMAX<br>
WiFi module https://www.tindie.com/products/pcr/reprapfirmware-wifi-adapterboard-for-skr1314/<br>

For your purposes adjust the dimensions/locations in the config.g<br>
```
; Axis Limits
M208 X-37:235 Y-67:306 Z0:195                          ; set axis min/max
```
and Z-Probe location<br>
```
M558 P9 H5 F300 T10000 X117.5 Y117.5 Z1 C"^zstop"      ; disable Z probe but set dive height, probe speed and travel speed
M950 S0 C"servo0"                                      ; Setup servo 0 as servo port on SKR
M671 X-37:274.5 Y117.5:117.5 S3                        ; Z alignment
M557 X20:215 Y20:215 P3:3                              ; define mesh grid, 3 points X 3 points Y
G31 P500 X41 Y-1 Z2.55                         	       ; set Z probe trigger value, offset and trigger height
```
Add "M98 P"0:/sys/start.g"" to your Slicer startcode

Add "M98 P"0:/sys/stop.g"" to the end of your Slicer endcode

If you want to use the nozzle clean feature(0:/macros/G12), you must adjust the positions,<br>
same for the independent dual Z alignment(0:/macros/G34) and add "M98 P"0:/macros/G12""<br>
"M98 P"0:/macros/G34"" to your Slicer startcode 
