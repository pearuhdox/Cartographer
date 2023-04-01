playsound minecraft:entity.generic.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5

attribute @s minecraft:generic.attack_damage modifier add 31-2125-54-2351-11 "bleeding_weakness" -0.15 multiply

function cartographer_custom_statuses:effects/bleeding/calc_damage
function cartographer_custom_statuses:effects/bleeding/do_damage

scoreboard players remove @s ca.effect_bleed 1
execute if score @s ca.effect_bleed matches 0 run function cartographer_custom_statuses:effects/bleeding/clean_effects


tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Bleeding.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
