execute store result score @s ca.weak_lvl run data get entity @s ActiveEffects[{Id:18}].Amplifier
execute store result score @s ca.weak_dur run data get entity @s ActiveEffects[{Id:18}].Duration

scoreboard players add @s ca.weak_dur 1
scoreboard players add @s ca.weak_lvl 1