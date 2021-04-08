########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Sets up all needed infrastructure for Core. Run on reload.
########################################

#Create Randomizer scoreboards
scoreboard objectives add randomSalt dummy                
scoreboard objectives add random dummy
scoreboard players set Random3 randomSalt 100011001
scoreboard players set Random1 randomSalt 100 
scoreboard players set @s randomSalt 100 

#Create player ID scores
scoreboard objectives add ca.pldata.id dummy
scoreboard objectives add ca.pldata.var dummy

#Place Shulker Boxes needed for Shulker Box trick.
forceload add 4206900 4206900
setblock 4206900 0 4206900 purple_shulker_box replace

kill @e[type=armor_stand,tag=vector]
summon armor_stand 4206900 256 4206900 {Tags:["vector"],NoGravity:1,Invisible:1,Marker:1,Small:1}

#Create vector related scoreboards
scoreboard objectives add vectorX dummy
scoreboard objectives add vectorY dummy
scoreboard objectives add vectorZ dummy

#Create the global option scoreboard.
scoreboard objectives add global_options dummy
scoreboard objectives add no_hndbk_pmpt dummy

#Create scores for custom damage
scoreboard objectives add damage_queue dummy
scoreboard objectives add custom_death deathCount
scoreboard objectives add ca.invul_abs dummy
scoreboard objectives add helper_health dummy
scoreboard objectives add helper_abs dummy
scoreboard objectives add ca.death_time minecraft.custom:minecraft.time_since_death

scoreboard objectives add ca.crit_y dummy
scoreboard objectives add ca.crit_y_past dummy
scoreboard objectives add ca.crit_y_comp dummy

scoreboard objectives add ca.atk_spd_val dummy
scoreboard objectives add ca.atk_time dummy

#Add score for difficulty
execute as @p at @s run execute unless entity @s[scores={no_hndbk_pmpt=0..}] run scoreboard players set @s no_hndbk_pmpt 0

#Setup a score for any and all constant values.
scoreboard objectives add ca.CONSTANT dummy

scoreboard players set $core.100x ca.CONSTANT 100
scoreboard players set $core.-1 ca.CONSTANT -1
scoreboard players set $core.1 ca.CONSTANT 1
scoreboard players set $core.20 ca.CONSTANT 20
scoreboard players set $core.2 ca.CONSTANT 2
scoreboard players set $core.difficulty ca.CONSTANT 0

#Create the Lexica score.
scoreboard objectives add use_lexica minecraft.used:minecraft.knowledge_book
scoreboard objectives add lexica_time dummy
scoreboard objectives add lexica_sneak minecraft.custom:sneak_time

#Give all players the dummy recipe for Lexica.
recipe give @a cartographer_core:lexica_dummy

#Schedule the loading message.

schedule function cartographer_core:load/load_message 5t
schedule function cartographer_core:load/force_load 1t

#Analyse what gamerules feedback and death messages are set to.
function cartographer_core:load/gamerule_states

#Schedule core clocks.

schedule function cartographer_core:loop/tick/base 1t
schedule function cartographer_core:loop/1_second/base 25t
schedule function cartographer_core:loop/3_seconds/base 3s
schedule function cartographer_core:loop/5_seconds/base 5s
schedule function cartographer_core:loop/10_seconds/base 10s
schedule function cartographer_core:loop/15_seconds/base 15s
schedule function cartographer_core:loop/30_seconds/base 30s
schedule function cartographer_core:loop/60_seconds/base 60s