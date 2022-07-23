playsound minecraft:entity.generic.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if entity @s[scores={ca.effect_bleed=1..,ca.bleed_potency=1}] run scoreboard players set @s cdl.damage_queue 1
execute if entity @s[scores={ca.effect_bleed=1..,ca.bleed_potency=2}] run scoreboard players set @s cdl.damage_queue 2
execute if entity @s[scores={ca.effect_bleed=1..,ca.bleed_potency=3}] run scoreboard players set @s cdl.damage_queue 3
execute if entity @s[scores={ca.effect_bleed=1..,ca.bleed_potency=4}] run scoreboard players set @s cdl.damage_queue 4
execute if entity @s[scores={ca.effect_bleed=1..,ca.bleed_potency=5}] run scoreboard players set @s cdl.damage_queue 5

execute if entity @s[scores={ca.effect_bleed=1..,ca.bleed_potency=6..},tag=!boss] run function cartographer_custom_statuses:effects/bleeding_calc_max
execute if entity @s[scores={ca.effect_bleed=1..,ca.bleed_potency=6..},tag=boss] run scoreboard players set @s cdl.damage_queue 6

execute if entity @s[scores={ca.effect_bleed=1..}] run attribute @s minecraft:generic.attack_damage modifier add 31-2125-54-2351-11 "bleeding_weakness" -0.2 multiply

execute if entity @s[scores={ca.effect_bleed=1..}] run function cd:lib/mob/damage/normal

scoreboard players remove @s ca.effect_bleed 1

execute if entity @s[scores={ca.effect_bleed=0}] run attribute @s minecraft:generic.movement_speed modifier remove 31-2125-54-2351-11
execute if entity @s[scores={ca.effect_bleed=0}] run scoreboard players set @s ca.bleed_potency 0

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Bleeding.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
