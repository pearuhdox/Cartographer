#Set the world difficulty to this constant.
execute store result score $core.difficulty ca.CONSTANT run difficulty

#Get Player Count
execute store result score $player_count ca.gamerule if entity @a

#Debug Code Line to Force Multiplayer Testing
#scoreboard players set $player_count ca.gamerule 2

#Run the list track for Helper Damage No Knockback
function cartographer_core:helper/damage_knockback/list_track


#Run all Cartographer Effects from Core Timers.
#function cartographer_charon:loop/tick/base
function cartographer_custom_durability:loop/tick/base
function cartographer_custom_enchantments:loop/tick/base
function cartographer_custom_statuses:loop/tick/base
function cartographer_loot_additions:loop/tick/base
function cartographer_mimics:loop/tick/base
function cartographer_mob_abilities:loop/tick/base
function cartographer_repair_stations:loop/tick/base

execute as @a[predicate=cartographer_core:in_valid_dimension] at @s run function cartographer_core:loop/tick/player

#Set Setup Mode to on if no acceptable value found
execute unless score $setup_mode ca.gamerule matches 0.. run scoreboard players set $setup_mode ca.gamerule 1

#Run all ticking entity effects.
execute as @e[type=!#cartographer_core:not_tracked,predicate=cartographer_core:in_valid_dimension,tag=!no_tick] at @s run function cartographer_core:loop/entity_calls/branch_tick

#Reset token kill check (Mob Abilities)
scoreboard players set @a[scores={token_kill_check=1..}] token_kill_check 0

#Mimic Reset
scoreboard players set @a[scores={helper_open_trap=1..}] helper_open_trap 0

#Loot Additions Resets
execute as @a at @s if score @s ca.get_soul matches 1.. run scoreboard players remove @s ca.get_soul 1

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

#Specifically reset logout score here as the last possible thing to ever be run
scoreboard players set @a ca.logout 0

#Run UUID Ticking
function cartographer_core:loop/tick/uuid_tick