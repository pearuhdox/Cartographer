# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Main
# Use       : Central branching function of dealing true damage.

execute if score @s cdl.death matches 1.. run scoreboard players set @s cdl.death 0
execute store result score $gamerule.death_messages cdl.temp run gamerule showDeathMessages
execute if score $gamerule.death_messages cdl.temp matches 1 run gamerule showDeathMessages false

#Save current health
scoreboard players set $player.health_before_hbc cdl.temp 0
scoreboard players operation $player.health_before_hbc cdl.temp = @s cdl.p_health

#Save health boost
execute if predicate cd:has_health_boost at @s run function cd:func/player_damage_true/save_health_boost

#Absorption damage
execute if score @s cdl.damage_queue matches 1.. if predicate cd:has_absorption run function cd:func/player_damage_true/absorption

#Health damage
execute if score @s cdl.damage_queue matches 1.. run function cd:func/player_damage_true/death_check

scoreboard players set @s cdl.damage_timer 10
function cd:func/player_damage_true/death_timer/loop
function cd:func/custom_death/loop