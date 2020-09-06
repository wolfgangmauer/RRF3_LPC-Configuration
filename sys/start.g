M581 P1 S0 T2; Trigger 2 rised if filament is missing. Switch on E1 connect
		     ; signal and ground pin when there is no filament, so trigger 
		     ; on falling edge.  Other extruder switch or user accessible
		     ; pushbutton (closed on action) can be paralleled 
M582 T2  	 ; Check if the Filament absence is detected NOW
M280 P0 S160 ; Alarm Release and Push-Pin UP