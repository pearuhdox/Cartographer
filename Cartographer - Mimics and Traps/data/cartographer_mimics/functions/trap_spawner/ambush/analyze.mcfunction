function cartographer_mimics:trap_spawner/ambush/vfx

execute store result score $time ca.wave_time run data get block ~ ~0.1 ~ Delay 

#When the spawner triggers, or more accurately the tick after. Peaceful mode is held with this logic.
execute if score @s ca.wave_time matches 0 unless score @s ca.wave_time = $time ca.wave_time run function cartographer_mimics:trap_spawner/ambush/trigger

#At the end, update the time variable.
scoreboard players operation @s ca.wave_time = $time ca.wave_time