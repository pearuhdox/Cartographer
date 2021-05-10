########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Sets up all needed infrastructure for Core. Run on reload.
########################################

#Order Datapacks Properly
#datapack disable "file/Cartographer - Custom Enchantments"
#datapack disable "file/Cartographer - Custom Statuses"
#datapack disable "file/Cartographer - Mob Abilities"
#datapack disable "file/Cartographer - Mimics"
#datapack disable "file/Cartographer - Repair Stations"
#datapack disable "file/Cartographer - Loot Additions"
#datapack disable "file/Cartographer - Potion Injector"

#datapack enable "file/Cartographer - Custom Enchantments" before "file/Cartographer - Core"
#datapack enable "file/Cartographer - Custom Statuses" before "file/Cartographer - Core"
#datapack enable "file/Cartographer - Mob Abilities" before "file/Cartographer - Core"
#datapack enable "file/Cartographer - Mimics" before "file/Cartographer - Core"
#datapack enable "file/Cartographer - Repair Stations" before "file/Cartographer - Core"
#datapack enable "file/Cartographer - Loot Additions" before "file/Cartographer - Core"
#datapack enable "file/Cartographer - Potion Injector" before "file/Cartographer - Core"

#Create Randomizer scoreboards
scoreboard objectives add randomSalt dummy                
scoreboard objectives add random dummy
scoreboard players set Random3 randomSalt 100011001
scoreboard players set Random1 randomSalt 100
scoreboard players set @s randomSalt 100

#Place Shulker Boxes needed for Shulker Box trick.
forceload add 4206900 4206900
forceload add 4206900 4206890
forceload add 4206890 4206900
forceload add 4206890 4206890

setblock 4206900 0 4206900 purple_shulker_box replace

kill @e[type=armor_stand,tag=vector]
summon armor_stand 4206900 256 4206900 {Tags:["vector"],NoGravity:1,Invisible:1,Marker:1,Small:1}

#Place the Susile Pincushions for proper abuse.
kill @e[type=iron_golem,tag=susile_pincushion]
kill @e[type=area_effect_cloud,tag=susile_healer]

schedule function cartographer_core:load/pincushion_creation 30t

scoreboard objectives add susile_count dummy 
scoreboard players set $giant_count susile_count 0
scoreboard players set $heal_count susile_count 0

#Create vector related scoreboards
scoreboard objectives add vectorX dummy
scoreboard objectives add vectorY dummy
scoreboard objectives add vectorZ dummy

#Create the global option scoreboard.
scoreboard objectives add global_options dummy
scoreboard objectives add no_hndbk_pmpt dummy

#Create raycast score
scoreboard objectives add helper_raycast dummy

#Create scores for custom damage
scoreboard objectives add damage_queue dummy
scoreboard objectives add heal_queue dummy
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

scoreboard objectives add ca.res.amp dummy
scoreboard objectives add ca.res.par dummy
scoreboard objectives add ca.res.dur dummy
scoreboard objectives add ca.res.amb dummy
scoreboard objectives add ca.res.icn dummy

scoreboard objectives add true_abs dummy

scoreboard objectives add true_health health

scoreboard objectives add epf_prot dummy
scoreboard objectives add epf_proj dummy
scoreboard objectives add epf_blas dummy
scoreboard objectives add epf_fire dummy
scoreboard objectives add epf_fall dummy

scoreboard objectives add ca.epf dummy

#Add score for difficulty
execute as @p at @s run execute unless entity @s[scores={no_hndbk_pmpt=0..}] run scoreboard players set @s no_hndbk_pmpt 0

#Setup a score for any and all constant values.
scoreboard objectives add ca.CONSTANT dummy

scoreboard players set $100 ca.CONSTANT 100
scoreboard players set $-1 ca.CONSTANT -1
scoreboard players set $1 ca.CONSTANT 1
scoreboard players set $10 ca.CONSTANT 10
scoreboard players set $20 ca.CONSTANT 20
scoreboard players set $2 ca.CONSTANT 2
scoreboard players set $3 ca.CONSTANT 3
scoreboard players set $4 ca.CONSTANT 4
scoreboard players set $core.difficulty ca.CONSTANT 0

#Gamerule tracking and management
scoreboard objectives add ca.gamerule dummy

execute unless score $gl_reload_msg ca.gamerule matches 0.. run scoreboard players set $gl_reload_msg ca.gamerule 0
execute unless score $lexica_stand ca.gamerule matches 0.. run scoreboard players set $lexica_stand ca.gamerule 0

#Create the Lexica score.
scoreboard objectives add use_lexica minecraft.used:minecraft.knowledge_book
scoreboard objectives add lexica_time dummy
scoreboard objectives add lexica_sneak minecraft.custom:sneak_time

scoreboard objectives add lexica_trig trigger

scoreboard objectives add ca.use_lectern minecraft.custom:minecraft.interact_with_lectern

#Create the anvil, enchant table, and grindstone destruction scores.
scoreboard objectives add use_anvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add use_grindstone minecraft.custom:minecraft.interact_with_grindstone

#Give all players the dummy recipe for Lexica.
recipe give @a cartographer_core:lexica_dummy

#Schedule the loading message.
execute as @a at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 0.75

schedule function cartographer_core:load/reload_panel 5t
schedule function cartographer_core:load/force_load 1t

#Analyse what gamerules feedback and death messages are set to.
function cartographer_core:load/gamerule_states

#Schedule core clocks.

schedule function cartographer_core:loop/tick/base 1t
schedule function cartographer_core:loop/half_second/base 25t
schedule function cartographer_core:loop/1_second/base 25t
schedule function cartographer_core:loop/3_seconds/base 3s
schedule function cartographer_core:loop/5_seconds/base 5s
schedule function cartographer_core:loop/10_seconds/base 10s
schedule function cartographer_core:loop/15_seconds/base 15s
schedule function cartographer_core:loop/30_seconds/base 30s
schedule function cartographer_core:loop/60_seconds/base 60s