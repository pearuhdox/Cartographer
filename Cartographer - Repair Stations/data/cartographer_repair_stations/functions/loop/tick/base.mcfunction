#Tell Cartographer this pack is in use
scoreboard players set $repair_stations ca.installed 1

#Run Player Mechs
execute as @a at @s run function cartographer_repair_stations:loop/tick/player

#Ambient particles for repair station
execute if score $state ca.repair_station_state matches 1 as 31182015-1851-6191-8192-000000000001 at @s positioned ~ ~1.1 ~ run function cartographer_repair_stations:loop/tick/particle_tick

# Tesseract Ticking
execute as 31182015-2051-9195-1813-000000000002 at @s if entity @a[distance=..12] run function cartographer_repair_stations:tesseract/tick


execute if score $display_warning ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/warning_display