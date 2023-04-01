kill @e[tag=ca.multichoice_piece,distance=..1.2]

setblock ~ ~ ~ air replace

particle minecraft:firework ~ ~0.7 ~ 0 0 0 0.07 30 normal

particle minecraft:dust 0.667 0.059 0.059 3 ~ ~0.6 ~ 0 0 0 0 2 force
particle minecraft:dust 0.667 0.059 0.059 2 ~ ~0.3 ~ 0 0 0 0 2 force
particle minecraft:dust 0.667 0.059 0.059 1 ~ ~ ~ 0.1 0.1 0.1 0 3 force
particle minecraft:dust 0.667 0.059 0.059 1 ~ ~-0.3 ~ 0 0 0 0 2 force

particle minecraft:wax_on ~ ~0.6 ~ 0.15 0.15 0.15 2 10 normal

playsound minecraft:entity.firework_rocket.blast block @a[distance=..12] ~ ~ ~ 0.7 0.85
playsound minecraft:entity.firework_rocket.launch block @a[distance=..12] ~ ~ ~ 0.7 1.15
playsound minecraft:entity.shulker.open block @a[distance=..16] ~ ~ ~ 2 0.85

execute as @e[type=item_display,tag=ca.is_multichoice,limit=4,distance=..1] at @s run function cartographer_loot_additions:multichoice/remove_frames