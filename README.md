# RRF3_LPC-Configuration

Add "M98 P"0:/sys/start.g"" to your Slicer startcode

Add "M98 P"0:/sys/stop.g"" to the end of your Slicer endcode

If you want to use the nozzle clean feature(0:/macros/G12), you must adjust the positions,
same for the independent dual Z alignment(0:/macros/G34) and add "M98 P"0:/macros/G12"" "M98 P"0:/macros/G34"" to your Slicer startcode 
