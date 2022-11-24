# Datapack  : Black Box Library
# Author(s) : PearUhDox, RockNRed
# Created   : 8/16/21
# Last Edit : 8/16/21
# Name      : Crit Checker / Falling
# Use       : Gives a player the "can_crit" tag when they can crit.

execute unless block ~ ~ ~ #bb:no_crit unless block ~ ~1 ~ #bb:no_crit run tag @s[tag=!sliding_down_honey_block] add can_crit

execute unless score $blind_crit ca.ganerule matches 1.. if entity @s[predicate=bb:has_blindness] run tag @s remove can_crit