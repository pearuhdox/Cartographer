execute store result score $aug_bonus_dmg ca.mob_var run attribute @s minecraft:generic.attack_damage get

execute if entity @s[tag=ca.aug_ranged_check] run function cartographer_mob_abilities:abilities/augmenter/get_ranged_damage

scoreboard players operation $aug_bonus_dmg ca.mob_var /= $2 ca.CONSTANT

scoreboard players operation @p ca.damage_queue = $aug_bonus_dmg ca.mob_var

function cartographer_mob_abilities:abilities/augmenter/do_damage

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" priming Augmenter bonus damage.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]