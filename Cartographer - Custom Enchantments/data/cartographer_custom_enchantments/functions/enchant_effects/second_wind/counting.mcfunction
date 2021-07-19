execute if score @s ca.sw_time matches 180 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 180 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 160 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 160 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 140 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 140 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 120 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 120 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 110 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 110 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 100 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 100 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 90 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 90 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 80 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 80 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 70 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 70 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 60 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 60 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 50 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 50 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 40 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 40 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 35 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 35 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 30 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 30 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 25 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 25 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 20 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 20 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 15 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 15 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 10 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 10 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute if score @s ca.sw_time matches 5 run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 2
execute if score @s ca.sw_time matches 5 run playsound minecraft:block.netherite_block.place player @s ~ ~ ~ 1 0.5

execute store result score $sw_abs_check ca.second_wind run data get entity @s AbsorptionAmount

execute if score @s ca.kill_entity matches 1.. run function cartographer_custom_enchantments:enchant_effects/second_wind/reward

execute if score $sw_abs_check ca.second_wind matches 0 run scoreboard players set @s ca.sw_time 0


particle minecraft:totem_of_undying ~ ~0.2 ~ 0.3 0.1 0.3 0.25 2 normal

scoreboard players remove @s[scores={ca.sw_time=1..}] ca.sw_time 1