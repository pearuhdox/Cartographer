scoreboard players operation $aug_bonus_dmg ca.mob_var /= $2 ca.CONSTANT

scoreboard players operation @s bbl.damage_queue = $aug_bonus_dmg ca.mob_var

tag @s add augment_dmg_prime

schedule function cartographer_mob_abilities:abilities/augmenter/stagger_damage 2t

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" priming Augmenter bonus damage.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]