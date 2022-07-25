execute as @e[type=#bb:hostile,distance=1..9,limit=1,tag=!ricochet_hit,sort=random] at @s run tag @s add ricochet_hit
execute if entity @s[tag=is_ricochet_2] as @e[type=#bb:hostile,distance=1..9,limit=1,tag=!ricochet_hit,sort=random] at @s run tag @s add ricochet_hit
execute if entity @s[tag=is_ricochet_3] as @e[type=#bb:hostile,distance=1..9,limit=1,tag=!ricochet_hit,sort=random] at @s run tag @s add ricochet_hit
execute if entity @s[tag=is_ricochet_3] as @e[type=#bb:hostile,distance=1..9,limit=1,tag=!ricochet_hit,sort=random] at @s run tag @s add ricochet_hit

execute if entity @s[tag=is_tempest_1] as @e[type=#bb:hostile,distance=..9,tag=ricochet_hit] at @s run tag @s add rt_1
execute if entity @s[tag=is_tempest_2] as @e[type=#bb:hostile,distance=..9,tag=ricochet_hit] at @s run tag @s add rt_2
execute if entity @s[tag=is_tempest_3] as @e[type=#bb:hostile,distance=..9,tag=ricochet_hit] at @s run tag @s add rt_3
execute if entity @s[tag=is_tempest_4] as @e[type=#bb:hostile,distance=..9,tag=ricochet_hit] at @s run tag @s add rt_4
execute if entity @s[tag=is_tempest_5] as @e[type=#bb:hostile,distance=..9,tag=ricochet_hit] at @s run tag @s add rt_5

execute as @e[type=#bb:hostile,tag=ricochet_hit] at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 normal
execute as @e[type=#bb:hostile,tag=ricochet_hit] at @s run particle minecraft:nautilus ~ ~1 ~ 0.5 0.5 0.5 0.3 50 normal
execute as @e[type=#bb:hostile,tag=ricochet_hit] at @s run scoreboard players set @s cdl.damage_queue 8


execute as @e[type=#bb:hostile,tag=ricochet_hit,tag=rt_1] at @s run scoreboard players add @s cdl.damage_queue 3
execute as @e[type=#bb:hostile,tag=ricochet_hit,tag=rt_2] at @s run scoreboard players add @s cdl.damage_queue 6
execute as @e[type=#bb:hostile,tag=ricochet_hit,tag=rt_3] at @s run scoreboard players add @s cdl.damage_queue 9
execute as @e[type=#bb:hostile,tag=ricochet_hit,tag=rt_4] at @s run scoreboard players add @s cdl.damage_queue 12
execute as @e[type=#bb:hostile,tag=ricochet_hit,tag=rt_5] at @s run scoreboard players add @s cdl.damage_queue 15


execute as @e[type=#bb:hostile,tag=ricochet_hit] at @s run function cartographer_custom_enchantments:enchant_effects/ricochet/hit_effect

tag @e[tag=ricochet_hit] remove rt_1
tag @e[tag=ricochet_hit] remove rt_2
tag @e[tag=ricochet_hit] remove rt_3
tag @e[tag=ricochet_hit] remove rt_4
tag @e[tag=ricochet_hit] remove rt_5

tag @e[tag=ricochet_hit] remove ricochet_hit

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Ricochet.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]