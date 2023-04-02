########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Sets up all needed infrastructure for Core. Run on reload.
########################################


#Create the scoreboard used to enable or disable features to dynamically save performance.
scoreboard objectives add ca.enabler dummy
scoreboard objectives add ca.installed dummy

scoreboard players set $charon ca.installed 0
scoreboard players set $custom_durability ca.installed 0
scoreboard players set $custom_enchantments ca.installed 0
scoreboard players set $custom_statuses ca.installed 0
scoreboard players set $loot_additions ca.installed 0
scoreboard players set $loot_table_tweaks ca.installed 0
scoreboard players set $mimics ca.installed 0
scoreboard players set $mob_abilities ca.installed 0
scoreboard players set $pot_injector ca.installed 0
scoreboard players set $repair_stations ca.installed 0


scoreboard players set $#lib_bbl ca.installed 0
scoreboard players set $#lib_del ca.installed 0
scoreboard players set $#lib_ehid ca.installed 0
scoreboard players set $#lib_inv ca.installed 0
scoreboard players set $#lib_pds ca.installed 0
scoreboard players set $#lib_mot ca.installed 0
scoreboard players set $#lib_dies ca.installed 0

#Create UUID Handshake score for Interactions
scoreboard objectives add ca.uuid_interact dummy


#Create mutex score
scoreboard objectives add ca.mutex dummy

#Trigger scoreboards for menus and giving lexica.
scoreboard objectives add lexica trigger
scoreboard objectives add menu trigger

#Initialize Cloud Wolf's Math Lite Datapack
function cartographer_core:helper/math/zprivate/init

#Place Shulker Boxes needed for Shulker Box trick.
forceload add 4206900 4206900
forceload add 4206900 4206890
forceload add 4206890 4206900
forceload add 4206890 4206890

setblock 4206900 0 4206900 purple_shulker_box replace


#Shulker Box for Lexica, so a mapmaker can change the format.
setblock 4206900 5 4206900 purple_shulker_box{Items:[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Lexica Cartographia","color":"#FFE0A3","bold":true,"italic":false}',Lore:['{"text":"Your in game guide to all things Cartographer.","color":"dark_gray","italic":false}','{"text":"A compendium that contains all discovered","color":"dark_gray","italic":false}','{"text":"knowledge of custom mechanics and features.","color":"dark_gray","italic":false}','{"text":" "}','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":"] ","color":"white","italic":false},{"text":"to open this manual.","color":"dark_gray","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"aqua","italic":false},{"text":" + ","color":"white","italic":false},{"keybind":"key.sneak","color":"aqua","italic":false},{"text":"] ","color":"white","italic":false},{"text":"to configure settings.","color":"dark_gray","italic":false}]','{"text":" "}','[{"text":"Use the command \\"","color":"dark_gray","italic":false},{"text":"/trigger lexica","color":"aqua","italic":false},{"text":"\\"","color":"dark_gray","italic":false}]','{"text":"to give yourself another Lexica.","color":"dark_gray","italic":false}']},HideFlags:1,Lexica:1,Enchantments:[{id:"minecraft:mending",lvl:1s}],Recipes:["cartographer_core:lexica_dummy"]}}]} destroy


#Create var scoreboard
scoreboard objectives add ca.var dummy

#Create logout scoreboard
scoreboard objectives add ca.logout minecraft.custom:minecraft.leave_game

#Create vector related scoreboards
scoreboard objectives add ca.vectorX dummy
scoreboard objectives add ca.vectorY dummy
scoreboard objectives add ca.vectorZ dummy

#Create scoreboards for drawing bows, holding tridents, loading crossbows, using ender eyes, and holding up shields.
scoreboard objectives add ca.combat_timer dummy

scoreboard objectives add ca.draw_bow_time dummy
scoreboard objectives add ca.load_cro_time dummy
scoreboard objectives add ca.use_ee_time dummy
scoreboard objectives add ca.hold_shi_time dummy
scoreboard objectives add ca.hold_tri_time dummy

scoreboard objectives add ca.is_draw_bow dummy
scoreboard objectives add ca.is_load_cro dummy
scoreboard objectives add ca.is_use_ee dummy
scoreboard objectives add ca.is_hold_shi dummy
scoreboard objectives add ca.is_hold_tri dummy

scoreboard objectives add ca.shoot_bow minecraft.used:minecraft.bow
scoreboard objectives add ca.shoot_cross minecraft.used:minecraft.crossbow
scoreboard objectives add ca.throw_trident minecraft.used:minecraft.trident

#Delta compat
scoreboard objectives add ca.delta_fuse_max dummy
scoreboard objectives add ca.delta_fuse dummy

scoreboard objectives add ca.fireball_speed dummy
scoreboard objectives add ca.fireball_no_ex dummy
scoreboard objectives add ca.cf_xyz dummy

#Create raycast score
scoreboard objectives add ca.raycast dummy

#Create lifetime score
scoreboard objectives add ca.lifetime dummy


#Create scores for custom damage
scoreboard objectives add bbl.damage_queue dummy
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

scoreboard objectives add ca.health health

scoreboard objectives add ca.epf_prot dummy
scoreboard objectives add ca.epf_proj dummy
scoreboard objectives add ca.epf_blas dummy
scoreboard objectives add ca.epf_fire dummy
scoreboard objectives add ca.epf_fall dummy

scoreboard objectives add ca.epf dummy

scoreboard objectives add ca.delta.cooldown dummy

#Create Delta Carto Marker
# 31182015-4512-2011-3118-115180000000
# [I;823664661,1158815761,823660881,-2147483648]
summon marker 4206900 128 4206900 {UUID:[I;823664661,1158815761,823660881,-2147483648]}


#Add the phe_listen and ehp_listen scores
scoreboard objectives add ehp_listen dummy
scoreboard objectives add phe_listen dummy

#Create timer variable
scoreboard objectives add ca.timer dummy
scoreboard players set $ca_timer ca.timer 0

#Solve this stupid bug made by how mojang coded right click armor equipping
scoreboard objectives add ca.equip_leather_boots minecraft.used:minecraft.leather_boots
scoreboard objectives add ca.equip_leather_leggings minecraft.used:minecraft.leather_leggings
scoreboard objectives add ca.equip_leather_chestplate minecraft.used:minecraft.leather_chestplate
scoreboard objectives add ca.equip_leather_helmet minecraft.used:minecraft.leather_helmet

scoreboard objectives add ca.equip_golden_boots minecraft.used:minecraft.golden_boots
scoreboard objectives add ca.equip_golden_leggings minecraft.used:minecraft.golden_leggings
scoreboard objectives add ca.equip_golden_chestplate minecraft.used:minecraft.golden_chestplate
scoreboard objectives add ca.equip_golden_helmet minecraft.used:minecraft.golden_helmet

scoreboard objectives add ca.equip_chainmail_boots minecraft.used:minecraft.chainmail_boots
scoreboard objectives add ca.equip_chainmail_leggings minecraft.used:minecraft.chainmail_leggings
scoreboard objectives add ca.equip_chainmail_chestplate minecraft.used:minecraft.chainmail_chestplate
scoreboard objectives add ca.equip_chainmail_helmet minecraft.used:minecraft.chainmail_helmet

scoreboard objectives add ca.equip_iron_boots minecraft.used:minecraft.iron_boots
scoreboard objectives add ca.equip_iron_leggings minecraft.used:minecraft.iron_leggings
scoreboard objectives add ca.equip_iron_chestplate minecraft.used:minecraft.iron_chestplate
scoreboard objectives add ca.equip_iron_helmet minecraft.used:minecraft.iron_helmet

scoreboard objectives add ca.equip_diamond_boots minecraft.used:minecraft.diamond_boots
scoreboard objectives add ca.equip_diamond_leggings minecraft.used:minecraft.diamond_leggings
scoreboard objectives add ca.equip_diamond_chestplate minecraft.used:minecraft.diamond_chestplate
scoreboard objectives add ca.equip_diamond_helmet minecraft.used:minecraft.diamond_helmet

scoreboard objectives add ca.equip_netherite_boots minecraft.used:minecraft.netherite_boots
scoreboard objectives add ca.equip_netherite_leggings minecraft.used:minecraft.netherite_leggings
scoreboard objectives add ca.equip_netherite_chestplate minecraft.used:minecraft.netherite_chestplate
scoreboard objectives add ca.equip_netherite_helmet minecraft.used:minecraft.netherite_helmet

scoreboard objectives add ca.equip_turtle_helmet minecraft.used:minecraft.turtle_helmet

scoreboard objectives add ca.core_delay_check dummy

scoreboard objectives add ca.damage_queue dummy

scoreboard players set $no_anvil ca.gamerule 0

#Setup a score for any and all constant values.
scoreboard objectives add ca.CONSTANT dummy

scoreboard players reset * ca.CONSTANT

scoreboard players set $-1 ca.CONSTANT -1

scoreboard players set $10000 ca.CONSTANT 10000
scoreboard players set $1000 ca.CONSTANT 1000
scoreboard players set $100 ca.CONSTANT 100
scoreboard players set $10 ca.CONSTANT 10

scoreboard players set $13 ca.CONSTANT 13

scoreboard players set $15 ca.CONSTANT 15
scoreboard players set $17 ca.CONSTANT 17
scoreboard players set $18 ca.CONSTANT 18
scoreboard players set $19 ca.CONSTANT 19
scoreboard players set $20 ca.CONSTANT 20
scoreboard players set $21 ca.CONSTANT 21
scoreboard players set $25 ca.CONSTANT 25
scoreboard players set $30 ca.CONSTANT 30
scoreboard players set $33 ca.CONSTANT 33
scoreboard players set $35 ca.CONSTANT 35

scoreboard players set $40 ca.CONSTANT 40
scoreboard players set $41 ca.CONSTANT 41
scoreboard players set $50 ca.CONSTANT 50
scoreboard players set $55 ca.CONSTANT 55
scoreboard players set $65 ca.CONSTANT 65
scoreboard players set $67 ca.CONSTANT 67
scoreboard players set $60 ca.CONSTANT 60
scoreboard players set $70 ca.CONSTANT 70
scoreboard players set $75 ca.CONSTANT 75
scoreboard players set $77 ca.CONSTANT 77
scoreboard players set $80 ca.CONSTANT 80
scoreboard players set $81 ca.CONSTANT 81
scoreboard players set $100 ca.CONSTANT 100
scoreboard players set $125 ca.CONSTANT 125
scoreboard players set $133 ca.CONSTANT 133
scoreboard players set $150 ca.CONSTANT 150
scoreboard players set $200 ca.CONSTANT 200
scoreboard players set $210 ca.CONSTANT 210
scoreboard players set $225 ca.CONSTANT 225
scoreboard players set $300 ca.CONSTANT 300
scoreboard players set $600 ca.CONSTANT 600
scoreboard players set $1000 ca.CONSTANT 1000
scoreboard players set $1200 ca.CONSTANT 1200

scoreboard players set $1 ca.CONSTANT 1
scoreboard players set $2 ca.CONSTANT 2
scoreboard players set $3 ca.CONSTANT 3
scoreboard players set $4 ca.CONSTANT 4
scoreboard players set $5 ca.CONSTANT 5
scoreboard players set $6 ca.CONSTANT 6
scoreboard players set $7 ca.CONSTANT 7
scoreboard players set $8 ca.CONSTANT 8
scoreboard players set $9 ca.CONSTANT 9

scoreboard players set $core.difficulty ca.CONSTANT 0

#Gamerule tracking and management
scoreboard objectives add ca.gamerule dummy
scoreboard objectives add ca.reload_type dummy
#For Custom Enchantments
scoreboard objectives add ca.ui_loc dummy

execute unless score $gl_reload_msg ca.gamerule matches 0.. run scoreboard players set $gl_reload_msg ca.gamerule 0
execute unless score $lexica_stand ca.gamerule matches 0.. run scoreboard players set $lexica_stand ca.gamerule 0
execute unless score $no_lexica_prompt ca.gamerule matches 0.. run scoreboard players set $no_lexica_prompt ca.gamerule 0

#Create the Lexica scores.
scoreboard objectives add ca.use_lex minecraft.used:minecraft.knowledge_book
scoreboard objectives add ca.lexica_count dummy

scoreboard objectives add ca.lexica_time dummy
scoreboard objectives add ca.lexica_sneak minecraft.custom:sneak_time

scoreboard objectives add ca.lexica_trig trigger
scoreboard objectives add give_dev_box trigger


scoreboard objectives add ca.use_lectern minecraft.custom:minecraft.interact_with_lectern

#Create options trigger score (for player options)
scoreboard objectives add ca.options_trig trigger
scoreboard players enable @a ca.options_trig

#Create the anvil, enchant table, and grindstone destruction scores.
scoreboard objectives add ca.use_anvil minecraft.custom:minecraft.interact_with_anvil
scoreboard objectives add ca.use_grind minecraft.custom:minecraft.interact_with_grindstone

#Give all players the dummy recipe for Lexica.
#recipe give @a cartographer_core:lexica_dummy

#Setup LoE data space
function cartographer_core:load/integration/active/clear

#Schedule the loading message.
execute as @a at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 1 0.75

tag @a add gmr_frozen
schedule function cartographer_core:load/reload_panel 5t
schedule function cartographer_core:load/force_load 1t
schedule function cartographer_core:load/make_dev_box 7t
schedule function cartographer_core:load/cleanup_forceload 20t

#Analyse what gamerules feedback and death messages are set to.

#Schedule core clocks.