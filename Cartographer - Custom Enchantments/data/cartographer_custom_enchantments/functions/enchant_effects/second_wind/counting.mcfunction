execute if score @s ca.sw_time matches 180.. run effect give @s resistance 9 4

execute if score @s ca.sw_time matches 300 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0.5
execute if score @s ca.sw_time matches 300 run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 200 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0.5
execute if score @s ca.sw_time matches 200 run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 0.5


execute if score @s ca.sw_time matches 100 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0.6
execute if score @s ca.sw_time matches 100 run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 0.6

execute if score @s ca.sw_time matches 80 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0.65
execute if score @s ca.sw_time matches 80 run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 0.65

execute if score @s ca.sw_time matches 60 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0.7
execute if score @s ca.sw_time matches 60 run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 0.7

execute if score @s ca.sw_time matches 40 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0.75
execute if score @s ca.sw_time matches 40 run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 0.75

execute if score @s ca.sw_time matches 20 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 0.8
execute if score @s ca.sw_time matches 20 run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 1 0.8

scoreboard players set $check_sw_clear ca.ench_var 1
execute as @e[distance=..32,tag=ca.second_wind_marked] at @s on target run scoreboard players set $check_sw_clear ca.ench_var 0

execute if score $check_sw_clear ca.ench_var matches 1 run function cartographer_custom_enchantments:enchant_effects/second_wind/reward

execute if score @s ca.sw_time matches 100 run particle minecraft:totem_of_undying ~ ~0.2 ~ 0.3 0 0.3 0.25 15 normal
execute if score @s ca.sw_time matches 80 run particle minecraft:totem_of_undying ~ ~0.2 ~ 0.3 0 0.3 0.25 15 normal
execute if score @s ca.sw_time matches 60 run particle minecraft:totem_of_undying ~ ~0.2 ~ 0.3 0 0.3 0.25 15 normal
execute if score @s ca.sw_time matches 40 run particle minecraft:totem_of_undying ~ ~0.2 ~ 0.3 0 0.3 0.25 15 normal
execute if score @s ca.sw_time matches 20 run particle minecraft:totem_of_undying ~ ~0.2 ~ 0.3 0 0.3 0.25 15 normal

scoreboard players remove @s[scores={ca.sw_time=1..}] ca.sw_time 1