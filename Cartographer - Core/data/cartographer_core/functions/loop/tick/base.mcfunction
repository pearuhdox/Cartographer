execute as @a at @s run tp @e[distance=..2,type=area_effect_cloud,tag=helper_cloud] @s

execute as @e[type=area_effect_cloud,tag=helper_cloud_entity] at @s run tp @s @e[type=!area_effect_cloud,sort=nearest,limit=1]

execute as @a[nbt=!{HurtTime:0s}] at @s run function cartographer_core:helper/hurt_player/disguise

execute as @a[scores={custom_death=1..},tag=damaging] at @s run function cartographer_mob_abilities:helper/custom_death_msg
execute as @a[scores={custom_death=1..},tag=damaging] at @s run function cartographer_custom_enchantments:helper/custom_death_msg
scoreboard players set @a[scores={custom_death=1..}] custom_death 0

#Assign ids to players
execute unless score #current ca.pldata.id matches 0.. run scoreboard players set #current ca.pldata.id 0
execute if score #current ca.pldata.id matches 0.. as @a[tag=!ca.pldata.id] run function cartographer_core:data_ids/get_id

#Recover id on name change
execute as @a[tag=ca.pldata.id] unless score @s ca.pldata.id matches 1.. run function cartographer_core:data_ids/recover_id

#Set the world difficulty to this constant.
execute store result score $core.difficulty ca.CONSTANT run difficulty

#Run all Cartographer Effects from Core Timers.
schedule function cartographer_custom_enchantments:loop/tick/base 1t
schedule function cartographer_custom_statuses:loop/tick/base 1t
schedule function cartographer_loot_additions:loop/tick/base 1t
schedule function cartographer_mimics:loop/tick/base 1t
schedule function cartographer_mob_abilities:loop/tick/base 1t
schedule function cartographer_pot_injector:loop/tick/base 1t
schedule function cartographer_repair_stations:loop/tick/base 1t

#Add anything else to run per tick here!



#Add anything else to run per tick above.

schedule function cartographer_core:loop/tick/base 1t