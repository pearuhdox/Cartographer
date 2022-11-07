execute if score $aug_bla ca.var matches 1 run tag @s add ca.aug_temp_blazing
execute if score $aug_gla ca.var matches 1 run tag @s add ca.aug_temp_glacial
execute if score $aug_ove ca.var matches 1 run tag @s add ca.aug_temp_overloading
execute if score $aug_ven ca.var matches 1 run tag @s add ca.aug_temp_venemous
execute if score $aug_cur ca.var matches 1 run tag @s add ca.aug_temp_cursing
execute if score $aug_web ca.var matches 1 run tag @s add ca.aug_temp_webbing
execute if score $aug_hor ca.var matches 1 run tag @s add ca.aug_temp_horrifying
execute if score $aug_vol ca.var matches 1 run tag @s add ca.aug_temp_volatile
execute if score $aug_zep ca.var matches 1 run tag @s add ca.aug_temp_zephyrous

execute if score $aug_alc ca.var matches 1 run tag @s add ca.aug_temp_alchemist
execute if score $aug_alc ca.var matches 1 unless data entity @s HandItems[1].id run item replace entity @s weapon.offhand with potion{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],CustomPotionColor:16711680} 1
execute if score $aug_alc ca.var matches 1 if data entity @s HandItems[1].id run function cartographer_mob_abilities:abilities/augmenter/alchemist_apply

tag @s add ca.aug_temp_touch