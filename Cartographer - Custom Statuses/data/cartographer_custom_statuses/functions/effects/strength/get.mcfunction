execute store result score @s ca.strength_lvl run data get entity @s active_effects[{id:"minecraft:strength"}].amplifier
execute store result score @s ca.strength_dur run data get entity @s active_effects[{id:"minecraft:strength"}].duration

scoreboard players add @s ca.strength_dur 1
scoreboard players add @s ca.strength_lvl 1