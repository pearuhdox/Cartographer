# Datapack  : CDL
# Author(s) : RockNRed
# Created   : Unknown
# Last Edit : 7/22/21
# Name      : Custom Death Message Loop
# Use       : Ran on loop when a player takes custom damage to check for a death.

execute as @a[scores={cdl.death=1..,cdl.damage_timer=4}] at @s if score $gamerule.death_messages cdl.temp matches 1 run function cd:func/custom_death/dead_player_found/message
execute as @a[scores={cdl.damage_timer=4}] run function cd:func/custom_death/dead_player_found/reset_scores

execute unless entity @a[scores={cdl.death_id=1..}] if score $gamerule.death_messages cdl.temp matches 1 run gamerule showDeathMessages true
execute if entity @a[scores={cdl.damage_timer=1..}] run schedule function cd:func/custom_death/loop 1t