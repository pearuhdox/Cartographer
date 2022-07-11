# Datapack  : CDL
# Author(s) : RockNRed, gibbs
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Restore
# Use       : Ran to restore absorption to the player via an area of effect cloud.

#Converting into amplifier
scoreboard players set @s cdl.damage_queue 0
scoreboard players operation $player.absorption cdl.temp /= $constant.4 cdl.temp
scoreboard players remove $player.absorption cdl.temp 1

#Restoring effect to nearest value
execute if score $player.absorption cdl.temp matches 0.. run function cd:func/player_damage_true/absorption/restore_cloud