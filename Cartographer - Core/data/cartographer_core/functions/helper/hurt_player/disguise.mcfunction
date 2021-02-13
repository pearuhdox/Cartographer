########################################
# File: Cartographer Core - Helper / Hurt Player / Disguise
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: Disguises the physical damage function.
########################################

execute as @s[nbt={HurtTime:9s}] at @s run stopsound @a[distance=..8] player minecraft:enchant.thorns.hit

execute as @s[nbt={HurtTime:4s}] at @s run attribute @s minecraft:generic.knockback_resistance modifier remove 4-1-13-1-7
execute as @s[nbt={HurtTime:4s}] at @s run tag @s remove damaging