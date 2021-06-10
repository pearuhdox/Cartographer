playsound minecraft:entity.generic.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if entity @s[scores={effect_bleed=51..}] run scoreboard players set @s effect_bleed 50

execute if entity @s[scores={effect_bleed=1..9}] run scoreboard players set @s damage_queue 1
execute if entity @s[scores={effect_bleed=11..19}] run scoreboard players set @s damage_queue 2
execute if entity @s[scores={effect_bleed=21..29}] run scoreboard players set @s damage_queue 3
execute if entity @s[scores={effect_bleed=31..39}] run scoreboard players set @s damage_queue 4
execute if entity @s[scores={effect_bleed=41..}] run scoreboard players set @s damage_queue 5

execute if entity @s[scores={effect_bleed=1..}] run function cartographer_core:helper/deal_damage/by_score

function cartographer_core:helper/deal_damage/invulnerable_tick

scoreboard players remove @s effect_bleed 1

scoreboard players set @s[scores={effect_bleed=10}] effect_bleed 0
scoreboard players set @s[scores={effect_bleed=20}] effect_bleed 0
scoreboard players set @s[scores={effect_bleed=30}] effect_bleed 0
scoreboard players set @s[scores={effect_bleed=40}] effect_bleed 0

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Bleeding.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
