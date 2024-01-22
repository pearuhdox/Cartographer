playsound minecraft:entity.blaze.ambient player @a[distance=..12] ~ ~ ~ 1 1.3
playsound minecraft:entity.blaze.shoot player @a[distance=..12] ~ ~ ~ 1 0.75

particle minecraft:soul_fire_flame ~ ~1 ~ 0.1 0.4 0.1 0.1 40 normal

execute unless entity @s[type=#cartographer_core:fire_immune] store result score @s ca.effect_oiled_duration run data get entity @s Fire
scoreboard players add @s ca.effect_oiled_duration 19
execute store result entity @s Fire short 1 run scoreboard players get @s ca.effect_oiled_duration

scoreboard players add @s ca.effect_oiled_duration 1
tag @s add ca.oil_ignited

function cartographer_custom_statuses:effects/oiled/damage