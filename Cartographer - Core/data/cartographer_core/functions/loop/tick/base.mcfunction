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

#Run the crit check system.
execute as @a at @s run function cartographer_core:helper/crit_checker

#Reduce the interal attack timer system scores.
scoreboard players remove @a[scores={ca.atk_time=1..}] ca.atk_time 1

#Run all Cartographer Effects from Core Timers.
schedule function cartographer_custom_enchantments:loop/tick/base 1t
schedule function cartographer_custom_statuses:loop/tick/base 1t
schedule function cartographer_loot_additions:loop/tick/base 1t
schedule function cartographer_mimics:loop/tick/base 1t
schedule function cartographer_mob_abilities:loop/tick/base 1t
schedule function cartographer_pot_injector:loop/tick/base 1t
schedule function cartographer_repair_stations:loop/tick/base 1t

#Run the lexica.
execute as @a at @s run function cartographer_core:lexica/is_holding
execute as @a[scores={use_lexica=1..},tag=holding_lexica] at @s run function cartographer_core:lexica/open
scoreboard players set @a[scores={lexica_time=1}] use_lexica 0
tag @a[scores={lexica_time=1}] remove lexica_holding
tag @a[scores={lexica_time=1}] remove lexica_holding_m
tag @a[scores={lexica_time=1}] remove lexica_holding_o
scoreboard players remove @a[scores={lexica_time=1..}] lexica_time 1
scoreboard players set @a lexica_sneak 0

#Run in world lexicas
execute as @e[type=armor_stand,tag=placed_lexica] at @s run particle dust 0.627 1 0.627 0.5 ~ ~1.1 ~ 0.25 0.1 0.25 0 2 normal
execute as @e[type=armor_stand,tag=placed_lexica] at @s run particle dust 0.627 1 0.627 0.5 ~ ~1.2 ~ 0.1 0.2 0.1 0 2 normal
execute as @e[type=armor_stand,tag=placed_lexica] at @s run execute if entity @a[scores={ca.use_lectern=1..},distance=..5] run clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force
execute as @e[type=armor_stand,tag=placed_lexica] at @s run execute as @a[scores={ca.use_lectern=1..},distance=..5] at @s run execute if entity @s[scores={lexica_sneak=0}] run function cartographer_core:lexica/manual

scoreboard players set @a ca.use_lectern 0

execute as @e[type=armor_stand,tag=placed_lexica] at @s if block ~ ~ ~ air run kill @s

#Add anything else to run per tick here!



#Add anything else to run per tick above.

schedule function cartographer_core:loop/tick/base 1t