function cartographer_mimics:trap_spawner/controlled/vfx

execute store result score $time ca.wave_time run data get block ~ ~0.1 ~ Delay 

scoreboard players add @s ca.trap_clock 1
execute if score @s ca.trap_clock matches 61.. run scoreboard players set @s ca.trap_clock 1


execute if score @s ca.trap_clock matches 59 if entity @s[tag=ca.trap_potentials,tag=ca.spawned_once,tag=ca.swap_potential] run function cartographer_mimics:trap_spawner/potentials


#When the spawner triggers, or more accurately the tick after. Peaceful mode is held with this logic.
execute if entity @s[tag=ca.spawned_once] if score @s ca.trap_clock matches 60 unless score @s ca.wave_time = $time ca.wave_time run function cartographer_mimics:trap_spawner/controlled/mob_check
execute unless entity @s[tag=ca.spawned_once] if score @s ca.wave_time matches 0 unless score @s ca.wave_time = $time ca.wave_time run function cartographer_mimics:trap_spawner/controlled/trigger


#At the end, update the time variable.
scoreboard players operation @s ca.wave_time = $time ca.wave_time