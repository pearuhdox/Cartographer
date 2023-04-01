#Execute Run Execute but I think this is correct for the actual logic of what I want? idfk maybe the executes arent needed, probably harmless
scoreboard players set $mob_count ca.wave_count -1

execute if entity @a[distance=..24,gamemode=!creative,gamemode=!spectator] run execute store result score $mob_count ca.wave_count run execute if entity @e[type=#cartographer_core:hostile,distance=..24]

execute if score $mob_count ca.wave_count matches 0 run function cartographer_mimics:trap_spawner/controlled/trigger
