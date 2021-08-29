effect give @s minecraft:speed 12 1
effect give @s minecraft:strength 12 1
effect give @s minecraft:resistance 12 1

function cartographer_mob_abilities:abilities/augmenter/call_parent_traits

particle minecraft:dust 1 0 0 1 ~ ~1.5 ~ 0.3 0.5 0.3 0 210 normal
particle minecraft:flame ~ ~1.5 ~ 0.2 0.2 0.2 0.05 30 normal

scoreboard players set @s augment_time 12