playsound minecraft:entity.generic.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if score @s ca.effect_bleed matches 1.. if score @s ca.effect_bleed_potency matches 1..5 run scoreboard players operation @s cdl.damage_queue = @s ca.bleed_potency
scoreboard players remove @s cdl.damage_queue 1

execute if score @s ca.bleed_potency matches 6.. unless entity @s[tag=boss] run function cartographer_custom_statuses:effects/bleeding/calc_max
execute if score @s ca.bleed_potency matches 6.. if entity @s[tag=boss] run scoreboard players set @s cdl.damage_queue 5

attribute @s minecraft:generic.attack_damage modifier add 31-2125-54-2351-11 "bleeding_weakness" -0.2 multiply

execute if score @s cdl.damage_queue matches 1.. run function cd:lib/mob/damage/true
function cartographer_custom_statuses:effects/do_tick

scoreboard players remove @s ca.effect_bleed 1
execute if score @s ca.effect_bleed matches 0 run function cartographer_custom_statuses:effects/bleeding/clean_effects

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Bleeding.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
