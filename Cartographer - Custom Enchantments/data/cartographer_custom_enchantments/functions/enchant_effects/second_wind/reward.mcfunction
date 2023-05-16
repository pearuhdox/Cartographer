
effect give @s regeneration 1 4
effect clear @s absorption
effect clear @s resistance

playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 2
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 1
playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.6 0.5

tag @s remove mortal_coil
tag @s add fatal_protection

scoreboard players set @s[scores={ca.sw_time=1..}] ca.sw_time 0