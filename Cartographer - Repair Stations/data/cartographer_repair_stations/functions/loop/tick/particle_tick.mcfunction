scoreboard players add $time ca.repair_station_state 1
scoreboard players add $time2 ca.repair_station_state 1
scoreboard players add $time3 ca.repair_station_state 1

execute if score $time ca.repair_station_state matches 101.. run scoreboard players set $time ca.repair_station_state 1
execute if score $time2 ca.repair_station_state matches 25.. run scoreboard players set $time2 ca.repair_station_state 1
execute if score $time3 ca.repair_station_state matches 21.. run scoreboard players set $time3 ca.repair_station_state 1


execute if score $time2 ca.repair_station_state matches 1 run particle minecraft:composter ~0.40 ~ ~ 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 3 run particle minecraft:composter ~0.36 ~ ~0.17 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 5 run particle minecraft:composter ~0.17 ~ ~0.36 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 7 run particle minecraft:composter ~ ~ ~0.40 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 9 run particle minecraft:composter ~-0.17 ~ ~0.36 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 11 run particle minecraft:composter ~-0.36 ~ ~0.17 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 13 run particle minecraft:composter ~-0.40 ~ ~ 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 15 run particle minecraft:composter ~-0.36 ~ ~-0.17 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 17 run particle minecraft:composter ~-0.17 ~ ~-0.36 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 19 run particle minecraft:composter ~ ~ ~-0.40 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 21 run particle minecraft:composter ~0.17 ~ ~-0.36 0 0 0 0 1 force
execute if score $time2 ca.repair_station_state matches 23 run particle minecraft:composter ~0.36 ~ ~-0.17 0 0 0 0 1 force

execute if score $time3 ca.repair_station_state matches 1 run particle minecraft:totem_of_undying ~0.3 ~1.4 ~0.15 0 0.1 0 0 2 force
execute if score $time3 ca.repair_station_state matches 1 run particle minecraft:totem_of_undying ~-0.3 ~1.4 ~0.15 0 0.1 0 0 2 force
execute if score $time3 ca.repair_station_state matches 1 run particle minecraft:totem_of_undying ~ ~1.4 ~0.15 0 0.1 0 0 2 force

execute if score $time ca.repair_station_state matches 1 run playsound minecraft:block.conduit.ambient block @a[distance=..12] ~ ~ ~ 1 0.8

execute if score $time ca.repair_station_state matches 40 run data merge entity 31182015-1851-6191-8192-000000000007 {interpolation_duration:40,start_interpolation:0,transformation:[-0.6f,0f,0f,0f,0f,0.6f,0f,1.5f,0f,0f,-0.6f,0f,0f,0f,0f,1f]}

execute if score $time ca.repair_station_state matches 80 run data merge entity 31182015-1851-6191-8192-000000000007 {interpolation_duration:60,start_interpolation:0,transformation:[-0.8f,0f,0f,0f,0f,0.8f,0f,1.7000000000000002f,0f,0f,-0.8f,0f,0f,0f,0f,1f]}