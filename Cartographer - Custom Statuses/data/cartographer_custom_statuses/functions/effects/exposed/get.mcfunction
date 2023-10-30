execute store result score @s ca.exposed_lvl run data get entity @s active_effects[{id:"minecraft:haste"}].amplifier
execute store result score @s ca.exposed_dur run data get entity @s active_effects[{id:"minecraft:haste"}].duration

scoreboard players add @s ca.exposed_dur 1
scoreboard players add @s ca.exposed_lvl 1

execute store result score @s ca.exposed_hp run data get entity @s Health 10