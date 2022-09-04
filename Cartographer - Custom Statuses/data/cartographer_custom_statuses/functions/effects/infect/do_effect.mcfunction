execute at @s run playsound minecraft:entity.slime.attack hostile @a[distance=..16] ~ ~ ~ 1.5 0.5

scoreboard players set @s cdl.damage_queue 1
function cd:lib/mob/damage/true
function cartographer_custom_statuses:effects/do_tick

execute if score @s ca.effect_infect matches 1 run function cartographer_custom_statuses:effects/infect/clean_effects

execute unless entity @s[tag=decaying] run function cartographer_custom_statuses:effects/infect/debilitate

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Infection.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]