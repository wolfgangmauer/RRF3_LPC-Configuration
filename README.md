# RRF3_LPC-Configuration

BLTouch connected to ZMIN<br>
Filament runout sensor connected to XMAX<br>
Independent Dual Z, connected to Z and E1<br>
Y-Endstop at max (attached at the rear)<br>
BTT Relay 1.2 (Power off after print) connected to ZMAX<br>
WiFi module https://www.tindie.com/products/pcr/reprapfirmware-wifi-adapterboard-for-skr1314/<br>



Add "M98 P"0:/sys/start.g"" to your Slicer startcode

Add "M98 P"0:/sys/stop.g"" to the end of your Slicer endcode

If you want to use the nozzle clean feature(0:/macros/G12), you must adjust the positions,<br>
same for the independent dual Z alignment(0:/macros/G34) and add "M98 P"0:/macros/G12"" "M98 P"0:/macros/G34"" to your Slicer startcode 
