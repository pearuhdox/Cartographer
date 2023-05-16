function #minecraft:cartographer/events/enchantments/passive/second_wind

tag @s remove true_death


scoreboard players set @s ca.sw_time 200

tag @s add ca.second_wind_fatal_target

scoreboard players set $sw_mob_count ca.ench_var 0

execute as @e[type=#bb:hostile,distance=..16] at @s run function cartographer_custom_enchantments:enchant_effects/second_wind/hostile_branch

tag @s remove ca.second_wind_fatal_target

execute if score $sw_mob_count ca.ench_var matches 0 run function cartographer_custom_enchantments:enchant_effects/second_wind/suffer

execute if score $sw_mob_count ca.ench_var matches 1.. run playsound minecraft:item.totem.use player @a[distance=..16] ~ ~ ~ 1 1.2
execute if score $sw_mob_count ca.ench_var matches 1.. run particle minecraft:totem_of_undying ~ ~2.5 ~ 0 0 0 0.6 80 normal

effect clear @s

tag @s add mortal_coil