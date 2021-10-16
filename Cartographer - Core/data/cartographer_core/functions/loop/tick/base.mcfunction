#Run all Cartographer Effects from Core Timers.
function cartographer_charon:loop/tick/base
function cartographer_custom_enchantments:loop/tick/base
function cartographer_custom_statuses:loop/tick/base
function cartographer_loot_additions:loop/tick/base
function cartographer_mimics:loop/tick/base
function cartographer_mob_abilities:loop/tick/base
function cartographer_potion_util:loop/tick/base
function cartographer_repair_stations:loop/tick/base

#Enable triggers
scoreboard players enable @a lexica
scoreboard players enable @a menu

#Check if the player used a lexica in creative
execute as @a[gamemode=!creative,tag=used_lexica] at @s if score @s ca.use_lex matches 1.. if score @s ca.lexica_sneak matches 1.. run function cartographer_core:options/intercept
execute as @a[gamemode=!creative,tag=used_lexica] at @s if score @s ca.use_lex matches 1.. if score @s ca.lexica_sneak matches 0 run function cartographer_core:lexica/manual
execute as @a[gamemode=!creative,tag=used_lexica] at @s if score @s ca.use_lex matches 1.. run scoreboard players set @s ca.use_lex 0

tag @a remove used_lexica

execute as @a[gamemode=creative] at @s if score @s ca.use_lex matches 1.. if score @s[predicate=cartographer_core:holding_lexica] ca.lexica_count matches 1.. if score @s ca.lexica_sneak matches 1.. run function cartographer_core:options/intercept
execute as @a[gamemode=creative] at @s if score @s ca.use_lex matches 1.. if score @s[predicate=cartographer_core:holding_lexica] ca.lexica_count matches 1.. if score @s ca.lexica_sneak matches 0 run function cartographer_core:lexica/manual
execute as @a[gamemode=creative] at @s if score @s ca.use_lex matches 1.. run scoreboard players set @s ca.use_lex 0

#Test if triggers are activated.
execute as @a at @s if score @s lexica matches 1.. run function cartographer_core:give_lexica
execute as @a at @s if score @s menu matches 1.. run function cartographer_core:load/reload/trigger

#Reset the susile_count counter.
scoreboard players set $giant_count susile_count 0
scoreboard players set $heal_count susile_count 0

#Return heal clouds to proper location
function cartographer_core:helper/heal_player/cloud_follow
function cartographer_core:helper/heal_player/return_cloud

execute as @a[nbt=!{HurtTime:0s}] at @s run function cartographer_core:helper/hurt_player/disguise

#Set the world difficulty to this constant.
execute store result score $core.difficulty ca.CONSTANT run difficulty

#Set defaults for personal set options
execute as @a at @s unless entity @s[scores={ca.reload_type=0..}] run scoreboard players set @s ca.reload_type 0

#Run the crit check system.
execute as @a at @s run function cartographer_core:helper/crit_checker

#Reduce the interal attack timer system scores.
scoreboard players remove @a[scores={ca.atk_time=1..}] ca.atk_time 1
scoreboard players remove @a[scores={ca.atk_time_true=1..}] ca.atk_time_true 1

#Run the lexica.
#execute as @a at @s run function cartographer_core:lexica/is_holding
#execute as @a[scores={ca.use_lexica=1..},tag=holding_lexica] at @s run function cartographer_core:lexica/open
scoreboard players set @a[scores={ca.lexica_time=1}] ca.use_lexica 0
tag @a[scores={ca.lexica_time=1}] remove lexica_holding
tag @a[scores={ca.lexica_time=1}] remove lexica_holding_m
tag @a[scores={ca.lexica_time=1}] remove lexica_holding_o
scoreboard players remove @a[scores={ca.lexica_time=1..}] ca.lexica_time 1
scoreboard players set @a ca.lexica_sneak 0

#Run anvil and grindstone destruction
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_anvil=1..}] at @s run scoreboard players set @s ca.raycast 71
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_anvil=1..}] at @s positioned ~ ~-0.5 ~ run function cartographer_core:disables/anvil/raycast
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_anvil=1..}] at @s run scoreboard players set @s ca.raycast 71
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_anvil=1..}] at @s positioned ~ ~0.5 ~ run function cartographer_core:disables/anvil/raycast
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_anvil=1..}] at @s run scoreboard players set @s ca.raycast 71
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_anvil=1..}] at @s positioned ~ ~1.5 ~ run function cartographer_core:disables/anvil/raycast
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_anvil=1..}] at @s run scoreboard players set @s ca.raycast 71
execute if score $no_anvil ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_anvil=1..}] at @s positioned ~ ~2.5 ~ run function cartographer_core:disables/anvil/raycast

execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_grind=1..}] at @s run scoreboard players set @s ca.raycast 71
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_grind=1..}] at @s positioned ~ ~-0.5 ~ run function cartographer_core:disables/grindstone/raycast
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_grind=1..}] at @s run scoreboard players set @s ca.raycast 71
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_grind=1..}] at @s positioned ~ ~0.5 ~ run function cartographer_core:disables/grindstone/raycast
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_grind=1..}] at @s run scoreboard players set @s ca.raycast 71
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_grind=1..}] at @s positioned ~ ~1.5 ~ run function cartographer_core:disables/grindstone/raycast
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_grind=1..}] at @s run scoreboard players set @s ca.raycast 71
execute if score $no_grindstone ca.gamerule matches 1 as @a[gamemode=!creative,gamemode=!spectator,scores={ca.use_grind=1..}] at @s positioned ~ ~2.5 ~ run function cartographer_core:disables/grindstone/raycast

execute as @a[scores={ca.use_anvil=1..}] at @s run scoreboard players set @s ca.raycast 0
execute as @a[scores={ca.use_grind=1..}] at @s run scoreboard players set @s ca.raycast 0

scoreboard players set @a ca.use_anvil 0
scoreboard players set @a ca.use_grind 0
scoreboard players set @a use_enchant_tb 0

#Reset and Run Lexica Trigger
execute as @a unless score @s ca.lexica_trig matches 1.. run scoreboard players set @s ca.lexica_trig 0
execute as @a at @s if score @s ca.lexica_trig matches 1.. run function cartographer_core:lexica/trigger

#Reset and Run Options Trigger
execute as @a unless score @s ca.options_trig matches 1.. run scoreboard players set @s ca.options_trig 0
execute as @a at @s if score @s ca.options_trig matches 1.. run function cartographer_core:options/player/trigger

#Do Checks for Player created projectiles.
execute as @a[scores={ca.shoot_bow=1..}] at @s run function cartographer_core:helper/tag_player_projectile
execute as @a[scores={ca.shoot_cross=1..}] at @s run function cartographer_core:helper/tag_player_projectile
execute as @a[scores={ca.throw_trident=1..}] at @s run function cartographer_core:helper/tag_player_projectile

#Run all ticking entity effects.
execute as @e[type=!#cartographer_core:not_tracked] at @s run function cartographer_core:loop/entity_calls/tick

#Run post entity tick base clock.
function cartographer_core:loop/tick/base_post_entity

#Reset token kill check (Mob Abilities)
scoreboard players set @a[scores={token_kill_check=1..}] token_kill_check 0

#Set defaults on players (new spawns).
execute as @a at @s unless score @s ehp_listen matches 0.. run scoreboard players add @s ehp_listen 1
execute as @a at @s unless score @s phe_listen matches 0.. run scoreboard players add @s phe_listen 1
execute as @a at @s unless score @s ca.reload_type matches 0.. run scoreboard players set @s ca.reload_type 0
execute as @a at @s unless score @s ca.ui_loc matches 0.. run scoreboard players set @s ca.ui_loc 0

#Resets
scoreboard players set @a ca.use_lectern 0

#Mimic Reset
scoreboard players set @a[scores={helper_open_trap=1..}] helper_open_trap 0

#Add anything else to run per tick here!
#
#
#
#Add anything else to run per tick above.

#Get Gamerule Settings
execute unless score $gmr_freeze ca.mutex matches 1.. run function cartographer_core:load/gamerule_defaults
execute if score $gmr_freeze ca.mutex matches 1 run schedule function cartographer_core:load/fix_gamerules 1t
execute if score $gmr_freeze ca.mutex matches 1 run scoreboard players set $gmr_freeze ca.mutex 2

scoreboard players add $ca_timer ca.timer 1

#Reset Draw/Load/Use Timers and Booleans
scoreboard players set @a[scores={ca.is_draw_bow=0}] ca.draw_bow_time 0
scoreboard players set @a[scores={ca.is_load_cro=0}] ca.load_cro_time 0
scoreboard players set @a[scores={ca.is_use_ee=0}] ca.use_ee_time 0
scoreboard players set @a[scores={ca.is_hold_shi=0}] ca.hold_shi_time 0
scoreboard players set @a[scores={ca.is_hold_tri=0}] ca.hold_tri_time 0

scoreboard players set @a ca.is_draw_bow 0
scoreboard players set @a ca.is_load_cro 0
scoreboard players set @a ca.is_hold_shi 0
scoreboard players set @a ca.is_hold_tri 0
scoreboard players set @a ca.is_use_ee 0

scoreboard players remove @a[scores={ca.draw_bow_time=1..}] ca.draw_bow_time 1
scoreboard players remove @a[scores={ca.load_cro_time=1..}] ca.load_cro_time 1
scoreboard players remove @a[scores={ca.hold_shi_time=1..}] ca.hold_shi_time 1
scoreboard players remove @a[scores={ca.hold_tri_time=1..}] ca.hold_tri_time 1
scoreboard players remove @a[scores={ca.use_ee_time=1..}] ca.use_ee_time 1

#Modulo checks for alternative timers.

#Half second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $10 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run function cartographer_core:loop/half_second/base

#1 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $20 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run function cartographer_core:loop/1_second/base

#3 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $60 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run function cartographer_core:loop/3_seconds/base

#5 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $100 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run function cartographer_core:loop/5_seconds/base

#10 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $200 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run function cartographer_core:loop/10_seconds/base

#15 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $300 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run function cartographer_core:loop/15_seconds/base

#30 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $600 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run function cartographer_core:loop/30_seconds/base

#60 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $1200 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run function cartographer_core:loop/60_seconds/base