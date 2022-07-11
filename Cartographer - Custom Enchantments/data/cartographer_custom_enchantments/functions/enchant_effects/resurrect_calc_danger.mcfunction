#Set the danger level equal to whatever the player's health is in the negative +1 (so 10 health is -9)
scoreboard players set @s danger_lvl 0
execute store result score @s danger_lvl run data get entity @s Health
scoreboard players operation @s danger_lvl *= $-1 ca.CONSTANT
scoreboard players add @s danger_lvl 1

#If danger level ever goes equal to 1 or above, the player is "at risk" and any death preparation effects should activate.

#What adds to the danger level? Danger level is equal to whatever is the highest damage attack around the player.
#If the difficulty is easy or hard, then we apply a -30% or +50% effect to the result of an entity damage.

#All mobs within 16 blocks are considered.
scoreboard players set @a threat_lvl 0

execute as @e[type=#bb:hostile,distance=..16] at @s run function cartographer_custom_enchantments:enchant_effects/resurrect_calc_threat

#Exceptions:
# - The player's health is 4 or lower.
# - The player is under 8 health and in lava.
# - The player is within 3 blocks of tnt or a creeper.