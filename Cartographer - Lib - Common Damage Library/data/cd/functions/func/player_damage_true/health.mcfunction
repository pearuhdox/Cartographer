# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Health
# Use       : Ran to damage the player with true damage.

#Checking if damage was taken from max health clear
scoreboard players operation $player.health cdl.temp = @s cdl.p_health
execute if score $player.health_before_hbc cdl.temp > $player.health cdl.temp store result score $player.lost_health cdl.temp run scoreboard players operation $player.health cdl.temp -= $player.health_before_hbc cdl.temp
execute if score $player.health cdl.temp matches -99..-1 run scoreboard players operation @s cdl.damage_queue += $player.health cdl.temp

#Setting health offset
execute store result score $player.health cdl.temp run attribute @s minecraft:generic.max_health get
scoreboard players operation $player.max_health cdl.temp = $player.health cdl.temp
scoreboard players operation $player.health cdl.temp -= @s cdl.p_health
scoreboard players operation @s cdl.damage_queue += $player.health cdl.temp

#Setting up to initialize health
effect give @s minecraft:health_boost 1 3 true

#Setting health
execute if score @s cdl.damage_queue matches 1..15 run function cd:func/player_damage_true/damage_intervals/1-15
execute if score @s cdl.damage_queue matches 16..30 run function cd:func/player_damage_true/damage_intervals/16-30
execute if score @s cdl.damage_queue matches 31.. run function cd:func/player_damage_true/damage_intervals/31-40

#Finalization
effect clear @s minecraft:health_boost
attribute @s minecraft:generic.max_health modifier remove 31514192-0114-2651-8151-950000000006

execute if score @s cdl.damage_queue matches -99..-1 run function cd:func/player_damage_true/heal_from_hb_damage
