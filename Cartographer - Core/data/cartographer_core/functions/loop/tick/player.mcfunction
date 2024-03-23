#Approximate if the player is in an inventory or in their inventory
#data modify storage cartographer_core:player_pos Rotation set value []
#data modify storage cartographer_core:player_pos Pos set value []

#data modify storage cartographer_core:player_pos Rotation set from entity @s Rotation
#data modify storage cartographer_core:player_pos Pos set from entity @s Pos

#scoreboard players operation @s ca.pitch_past = @s ca.pitch
#execute store result score @s ca.pitch run data get storage cartographer_core:player_pos Rotation[0] 100

#scoreboard players operation @s ca.yaw_past = @s ca.yaw
#execute store result score @s ca.yaw run data get storage cartographer_core:player_pos Rotation[1] 100

#scoreboard players operation @s ca.x_pos_past = @s ca.x_pos
#execute store result score @s ca.x_pos run data get storage cartographer_core:player_pos Pos[0] 100

#scoreboard players operation @s ca.y_pos_past = @s ca.y_pos
#execute store result score @s ca.y_pos run data get storage cartographer_core:player_pos Pos[1] 100

#scoreboard players operation @s ca.z_pos_past = @s ca.z_pos
#execute store result score @s ca.z_pos run data get storage cartographer_core:player_pos Pos[2] 100

#execute if score @s ca.x_pos = @s ca.x_pos_past if score @s ca.y_pos = @s ca.y_pos_past if score @s ca.z_pos = @s ca.z_pos_past if score @s ca.pitch = @s ca.pitch_past if score @s ca.yaw = @s ca.yaw_past run say inventory!


execute if score @s ca.drop_box matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_white matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_orange matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_magenta matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_light_blue matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_yellow matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_lime matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_pink matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_gray matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_light_gray matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_cyan matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_purple matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_blue matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_brown matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_green matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_red matches 1.. run function cartographer_core:quick_drop/shulker/find
execute if score @s ca.drop_box_black matches 1.. run function cartographer_core:quick_drop/shulker/find


scoreboard players set @s ca.drop_box 0
scoreboard players set @s ca.drop_box_white 0
scoreboard players set @s ca.drop_box_orange 0
scoreboard players set @s ca.drop_box_magenta 0
scoreboard players set @s ca.drop_box_light_blue 0
scoreboard players set @s ca.drop_box_yellow 0
scoreboard players set @s ca.drop_box_lime 0
scoreboard players set @s ca.drop_box_pink 0
scoreboard players set @s ca.drop_box_gray 0
scoreboard players set @s ca.drop_box_light_gray 0
scoreboard players set @s ca.drop_box_cyan 0
scoreboard players set @s ca.drop_box_purple 0
scoreboard players set @s ca.drop_box_blue 0
scoreboard players set @s ca.drop_box_brown 0
scoreboard players set @s ca.drop_box_green 0
scoreboard players set @s ca.drop_box_red 0
scoreboard players set @s ca.drop_box_black 0

execute if score @s ca.glass_cdl matches 1.. run scoreboard players remove @s ca.glass_cdl 1

execute if entity @s[tag=!ca.init] run function cartographer_core:load/init_player

execute unless score @s ca.player_id matches 1.. run function cartographer_core:helper/player_id/assign

execute if score @s ca.core_delay_check matches 1.. run scoreboard players remove @s ca.core_delay_check 1
execute if entity @s[tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:helper/inventory/do_inventory_check

function cartographer_custom_enchantments:loop/tick/player
function cartographer_custom_statuses:loop/tick/player
function cartographer_mob_abilities:loop/tick/player
function cartographer_mimics:loop/tick/player
function cartographer_loot_table_tweaks:loop/tick/player

#Remove the inventory check from core here so it can be used in other functionality
execute unless score @s ca.core_delay_check matches 1.. run tag @s remove ca.core_check_inv

#Enable triggers
scoreboard players enable @s lexica
scoreboard players enable @s menu
scoreboard players enable @s give_dev_box

#Get the count of lexica on the player
scoreboard players operation $old_lex_count ca.lexica_count = @s ca.lexica_count
execute store result score @s ca.lexica_count run clear @s minecraft:knowledge_book{Lexica:1} 0

#Check if the player used a lexica in creative
execute if score @s ca.use_lex matches 1.. run function cartographer_core:loop/tick/branch/lexica_use

#Test if triggers are activated.
execute if score @s lexica matches 1.. run function cartographer_core:give_lexica
execute if score @s menu matches 1.. run function cartographer_core:load/reload/full
execute if score @s give_dev_box matches 1.. run function cartographer_core:give_dev_box

#Check if the player used the options menu
execute if score @s ca.options_trig matches 1.. run function cartographer_core:options/player/trigger
execute if score @s ca.lexica_trig matches 1.. run function cartographer_core:lexica/trigger

#Reduce the interal attack timer system scores.
execute if score @s ca.atk_time matches 1.. run scoreboard players remove @s ca.atk_time 1
execute if score @s ca.atk_time_true matches 1.. run scoreboard players remove @s ca.atk_time_true 1

#Run the lexica.
#execute as @a at @s run function cartographer_core:lexica/is_holding
#execute as @a[scores={ca.use_lexica=1..},tag=holding_lexica] at @s run function cartographer_core:lexica/open
execute if score @s ca.lexica_time matches 1 run function cartographer_core:loop/tick/branch/lexica_time
scoreboard players set @s ca.lexica_sneak 0

#Run anvil and grindstone destruction
execute if score $no_anvil ca.gamerule matches 1 if score @s ca.use_anvil matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator] run function cartographer_core:loop/tick/branch/anvil_disable

execute if score $no_grindstone ca.gamerule matches 1 if score @s ca.use_grind matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator] run function cartographer_core:loop/tick/branch/grindstone_disable


#Do Checks for Player created projectiles.
execute if score @s ca.shoot_bow matches 1.. run function cartographer_core:helper/tag_player_projectile
execute if score @s ca.shoot_cross matches 1.. run function cartographer_core:helper/tag_player_projectile
execute if score @s ca.throw_trident matches 1.. run function cartographer_core:helper/tag_player_projectile

#Custom Absorption Handler Reset
execute unless predicate cartographer_core:has_absorption if entity @s[tag=ca.carto_abs_applied] run function cartographer_core:helper/abs_handler/reset

#Resets
scoreboard players set @s ca.use_lectern 0

scoreboard players set @s[scores={ca.sprint=6..}] ca.sprint 5
scoreboard players remove @s[scores={ca.sprint=1..}] ca.sprint 1
scoreboard players set @s[scores={ca.walk=6..}] ca.walk 5
scoreboard players remove @s[scores={ca.walk=1..}] ca.walk 1
scoreboard players set @s[scores={ca.swim=6..}] ca.swim 5
scoreboard players remove @s[scores={ca.swim=1..}] ca.swim 1
scoreboard players set @s[scores={ca.water_walk=201..}] ca.water_walk 200
scoreboard players remove @s[scores={ca.water_walk=5..}] ca.water_walk 5
scoreboard players set @s ca.sneak 0

#Reduce Delta Cooldown Time
execute if score @s ca.delta.cooldown matches 1.. run scoreboard players remove @s ca.delta.cooldown 1
execute unless score @s ca.delta.cooldown matches 0.. run scoreboard players set @s ca.delta.cooldown 0

#Reset Draw/Load/Use Timers and Booleans
execute if score @s ca.is_draw_bow matches 0 run scoreboard players set @s ca.draw_bow_time 0
execute if score @s ca.is_load_cro matches 0 run scoreboard players set @s ca.load_cro_time 0
execute if score @s ca.is_use_ee matches 0 run scoreboard players set @s ca.use_ee_time 0
execute if score @s ca.is_hold_shi matches 0 run scoreboard players set @s ca.hold_shi_time 0
execute if score @s ca.is_hold_tri matches 0 run scoreboard players set @s ca.hold_tri_time 0

execute if score @s ca.is_draw_bow matches 1.. run scoreboard players remove @s ca.is_draw_bow 1
execute if score @s ca.is_load_cro matches 1.. run scoreboard players remove @s ca.is_load_cro 1
execute if score @s ca.is_hold_shi matches 1.. run scoreboard players remove @s ca.is_hold_shi 1
execute if score @s ca.is_hold_tri matches 1.. run scoreboard players remove @s ca.is_hold_tri 1
execute if score @s ca.is_use_ee matches 1.. run scoreboard players remove @s ca.is_use_ee 1

execute if score @s ca.draw_bow_time matches 1.. run scoreboard players remove @s ca.draw_bow_time 1
execute if score @s ca.load_cro_time matches 1.. run scoreboard players remove @s ca.load_cro_time 1
execute if score @s ca.hold_shi_time matches 1.. run scoreboard players remove @s ca.hold_shi_time 1
execute if score @s ca.hold_tri_time matches 1.. run scoreboard players remove @s ca.hold_tri_time 1
execute if score @s ca.use_ee_time matches 1.. run scoreboard players remove @s ca.use_ee_time 1

execute if score @s ca.throw_pot matches 1.. as @e[type=potion,sort=nearest,limit=1] at @s run function cartographer_core:potion_mark/test_player_owned
execute if score @s ca.throw_linger_pot matches 1.. as @e[type=potion,sort=nearest,limit=1] at @s run function cartographer_core:potion_mark/test_player_owned

scoreboard players set @s ca.throw_pot 0
scoreboard players set @s ca.throw_linger_pot 0