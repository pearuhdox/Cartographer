execute store result score @s ca.strength_lvl run data get entity @s ActiveEffects[{Id:5}].Amplifier
execute store result score @s ca.strength_dur run data get entity @s ActiveEffects[{Id:5}].Duration

scoreboard players add @s ca.strength_dur 1
scoreboard players add @s ca.strength_lvl 1