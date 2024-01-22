execute store result score @s ca.weak_lvl run data get entity @s active_effects[{id:"minecraft:weakness"}].amplifier
execute store result score @s ca.weak_dur run data get entity @s active_effects[{id:"minecraft:weakness"}].duration

scoreboard players add @s ca.weak_dur 1
scoreboard players add @s ca.weak_lvl 1