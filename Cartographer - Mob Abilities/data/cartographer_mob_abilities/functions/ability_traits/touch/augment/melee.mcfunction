function cartographer_mob_abilities:ability_traits/touch/augment/at_player

execute at @p[tag=touched] run function cartographer_mob_abilities:abilities/augmenter/bonus_damage

tag @s remove ca.aug_running_touch_melee

tag @a remove touched
tag @a remove ability_tagged

#Augment Traits are lost after one use
tag @s remove ca.aug_temp_blazing
tag @s remove ca.aug_temp_glacial
tag @s remove ca.aug_temp_horrifying
tag @s remove ca.aug_temp_webbing
tag @s remove ca.aug_temp_cursing
tag @s remove ca.aug_temp_overloading
tag @s remove ca.aug_temp_venemous
tag @s remove ca.aug_temp_zephyrous
tag @s remove ca.aug_temp_alchemist
tag @s remove ca.aug_temp_volatile