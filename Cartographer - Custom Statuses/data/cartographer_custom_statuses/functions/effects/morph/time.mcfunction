scoreboard players remove @s ca.morph_time 1

execute if score @s ca.morph_time matches 65 run function cartographer_custom_statuses:popup/morph
execute if score @s ca.morph_time matches 45 run function cartographer_custom_statuses:popup/morph
execute if score @s ca.morph_time matches 25 run function cartographer_custom_statuses:popup/morph
execute if score @s ca.morph_time matches 5 run playsound minecraft:block.note_block.hat hostile @a[distance=..10] ~ ~ ~ 0.75 0.5

execute if score @s ca.morph_time matches 0 run function cartographer_custom_statuses:effects/morph/turn_back