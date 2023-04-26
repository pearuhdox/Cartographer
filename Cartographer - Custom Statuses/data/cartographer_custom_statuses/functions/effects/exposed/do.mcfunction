scoreboard players operation $past_health ca.exposed_hp = @s ca.exposed_hp
execute store result score @s ca.exposed_hp run data get entity @s Health 10

execute unless score @s ca.exposed_cdl matches 1.. if score @s ca.exposed_lvl matches 1.. if entity @s[nbt={HurtTime:10s}] run function cartographer_custom_statuses:effects/exposed/hit


execute if entity @s[scores={ca.exposed_lvl=1..,ca.exposed_hit=9}] run particle minecraft:glow ~ ~1 ~ 0.2 0.5 0.2 10 10 normal

particle minecraft:dust 0.067 0.525 0.412 1 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal
particle minecraft:dust 0.067 0.525 0.412 0.75 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal
particle minecraft:dust 0.067 0.525 0.412 0.5 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal
particle minecraft:dust 0.067 0.525 0.412 0.25 ~ ~1 ~ 0.25 0.4 0.25 0 1 normal

scoreboard players remove @s ca.exposed_dur 1