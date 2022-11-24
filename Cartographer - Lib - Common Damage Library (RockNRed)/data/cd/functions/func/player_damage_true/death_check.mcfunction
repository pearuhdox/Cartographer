# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Death Check
# Use       : Check if the player would die from the damage before actually dealing the damage.

##Store damage being done
#Resets
scoreboard players set $player.start_damage cdl.temp 0
scoreboard players set $player.start_health cdl.temp 0
#Store
scoreboard players operation $player.start_damage cdl.temp = @s cdl.damage_queue
scoreboard players operation $player.start_health cdl.temp = @s cdl.p_health
#Kill if projected to die
execute if score $player.start_damage cdl.temp >= $player.start_health cdl.temp run kill @s

#Continue calculations if alive
execute unless score $player.start_damage cdl.temp >= $player.start_health cdl.temp run function cd:func/player_damage_true/health