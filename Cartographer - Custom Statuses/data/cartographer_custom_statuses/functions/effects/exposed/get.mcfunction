execute store result score @s ca.exposed_lvl run data get entity @s ActiveEffects[{Id:31}].Amplifier
execute store result score @s ca.exposed_dur run data get entity @s ActiveEffects[{Id:31}].Duration

scoreboard players add @s ca.exposed_dur 1
scoreboard players add @s ca.exposed_lvl 1

execute store result score @s ca.exposed_hp run data get entity @s Health 10