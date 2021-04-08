playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 1 2

execute unless entity @s[tag=shocked_tick] run scoreboard players set @s damage_queue 2
execute unless entity @s[tag=shocked_tick] run function cartographer_core:helper/deal_damage/by_score
execute unless entity @s[tag=shocked_tick] run function cartographer_core:helper/deal_damage/invulnerable_tick

function cartographer_core:helper/randomize
execute if entity @s run scoreboard players operation @s random += @s ca.pity_shock

execute if block ~ ~ ~ water run scoreboard players add @s random 30
execute if entity @s[scores={random=101..}] run scoreboard players set @s random 100

execute if entity @s[scores={random=61..80}] unless entity @s[tag=shocked_tick] run execute as @e[type=#cartographer_core:hostile,distance=..3,limit=3,sort=nearest,tag=!shocked_tick] at @s run function cartographer_core:helper/push_third
execute if entity @s[scores={random=81..100}] unless entity @s[tag=shocked_tick] run scoreboard players set @e[type=#cartographer_core:hostile,distance=..3,limit=3,sort=nearest,tag=!shocked_tick] effect_stunned 11
execute if entity @s[scores={random=..60}] unless entity @s[tag=shocked_tick] run scoreboard players add @s ca.pity_shock 10
execute if entity @s[scores={random=61..}] unless entity @s[tag=shocked_tick] run scoreboard players set @s ca.pity_shock 0

execute unless entity @s[tag=shocked_tick] run tag @s add shocked_tick

execute as @e[type=#cartographer_core:hostile,distance=0.5..3,limit=3,sort=nearest,tag=!shocked_tick] at @s run execute unless entity @s[scores={effect_shocked=1..}] run function cartographer_custom_statuses:effects/shocked_neighbors

particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.2 10 normal

scoreboard players remove @s effect_shocked 1

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Shocked.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
