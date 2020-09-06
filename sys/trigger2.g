;0:/sys/trigger2.g
M581 S-1 T2
M25
M400
G4 P200              ; Wait 200 milliseconds
M83                  ; relative extruder moves
G1 E-13 F1500        ; Extrude 8mm at 25mm/s
G4 S5                ; Wait 5 seconds
G1 E8 F1500          ; Extrude 10mm to warm the heatbreak filament
G4 P500              ; Wait 500 milliseconds
G1 E-680 F5000       ; retract 680mm of filament
M400                 ; Wait for current moves to finish
G10 P0 S0
M291 P"Insert Filament" R"Filament runout detected!" S2
G10 P0 S220
M116
M83                  ; relative extruder moves
G1 E670 F5000        ; extrude 670mm of filament
G1 E10 F500
M400                 ; Wait for current moves to finish
M98 P"/macros/purge_more"
M581 P1 S0 T2        ; Reactivate trigger 2 
M582 T2              ; Check again there is filament 
M24