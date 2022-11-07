effect give @s minecraft:speed 12 1
effect give @s minecraft:resistance 12 1

function cartographer_mob_abilities:abilities/augmenter/call_parent_traits

function cartographer_mob_abilities:abilities/augmenter/add_temp_touch_traits

particle minecraft:dust_color_transition 0 0 0 1 1 0 0 ~ ~1.5 ~ 0.3 0.5 0.3 0 210 normal

scoreboard players set @s augment_time 13

scoreboard players add $augment_count ca.mob_var 1