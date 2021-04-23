#Reset the susile_count counter.
scoreboard players set $giant_count susile_count 0
scoreboard players set $heal_count susile_count 0

#Return heal clouds to proper location
function cartographer_core:helper/heal_player/cloud_follow
function cartographer_core:helper/heal_player/return_cloud

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
scoreboard players remove @a[scores={ca.atk_time_true=1..}] ca.atk_time_true 1

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
execute as @e[type=armor_stand,tag=placed_lexica] at @s run function cartographer_core:lexica/placed
scoreboard players set @a ca.use_lectern 0

#Run anvil and grindstone destruction


execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_anvil=1..}] at @s run scoreboard players set @s helper_raycast 71
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_anvil=1..}] at @s positioned ~ ~-0.5 ~ run function cartographer_core:disables/anvil/raycast
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_anvil=1..}] at @s run scoreboard players set @s helper_raycast 71
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_anvil=1..}] at @s positioned ~ ~0.5 ~ run function cartographer_core:disables/anvil/raycast
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_anvil=1..}] at @s run scoreboard players set @s helper_raycast 71
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_anvil=1..}] at @s positioned ~ ~1.5 ~ run function cartographer_core:disables/anvil/raycast
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_anvil=1..}] at @s run scoreboard players set @s helper_raycast 71
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_anvil=1..}] at @s positioned ~ ~2.5 ~ run function cartographer_core:disables/anvil/raycast

execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_grindstone=1..}] at @s run scoreboard players set @s helper_raycast 71
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_grindstone=1..}] at @s positioned ~ ~-0.5 ~ run function cartographer_core:disables/grindstone/raycast
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_grindstone=1..}] at @s run scoreboard players set @s helper_raycast 71
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_grindstone=1..}] at @s positioned ~ ~0.5 ~ run function cartographer_core:disables/grindstone/raycast
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_grindstone=1..}] at @s run scoreboard players set @s helper_raycast 71
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_grindstone=1..}] at @s positioned ~ ~1.5 ~ run function cartographer_core:disables/grindstone/raycast
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_grindstone=1..}] at @s run scoreboard players set @s helper_raycast 71
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={use_grindstone=1..}] at @s positioned ~ ~2.5 ~ run function cartographer_core:disables/grindstone/raycast

execute as @a[scores={use_anvil=1..}] at @s run scoreboard players set @s helper_raycast 0
execute as @a[scores={use_grindstone=1..}] at @s run scoreboard players set @s helper_raycast 0

scoreboard players set @a use_anvil 0
scoreboard players set @a use_grindstone 0
scoreboard players set @a use_enchant_tb 0

#Reset and Run Lexica Trigger
gamerule sendCommandFeedback false
execute as @a unless score @s lexica_trig matches 1.. run scoreboard players set @s lexica_trig 0
execute as @a at @s if score @s lexica_trig matches 1.. run function cartographer_core:lexica/trigger
gamerule sendCommandFeedback true

#Add anything else to run per tick here!
#
#
#
#Add anything else to run per tick above.

schedule function cartographer_core:loop/tick/base 1t