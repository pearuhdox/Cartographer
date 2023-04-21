function cartographer_mob_abilities:ability_traits/touch/augment/at_player

execute at @p[tag=touched] run function cartographer_mob_abilities:abilities/augmenter/bonus_damage

tag @s remove ca.aug_running_touch_melee

tag @a remove touched
tag @a remove ability_tagged