scoreboard players set @e[distance=..20,type=#cartographer_core:hostile,tag=thorns_mark] damage_queue 0

scoreboard players operation @e[distance=0.2..20,tag=thorns_mark,type=#cartographer_core:hostile] damage_queue = @s thorns

execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/deal_damage/by_score
execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick

execute unless entity @s[scores={t_knock=1..}] as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/push_half

execute if entity @s[scores={t_knock=1}] as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/push
execute if entity @s[scores={t_knock=2}] as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/push_2
execute if entity @s[scores={t_knock=3}] as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/push_3
execute if entity @s[scores={t_knock=4}] as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/push_4
execute if entity @s[scores={t_knock=5}] as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/push_5


execute if entity @s[scores={t_fire=1}] run execute as @e[distance=..20,type=#cartographer_core:hostile] at @s run data modify entity @s Fire set value 101
execute if entity @s[scores={t_fire=2}] run execute as @e[distance=..20,type=#cartographer_core:hostile] at @s run data modify entity @s Fire set value 181
execute if entity @s[scores={t_fire=3..}] run execute as @e[distance=..20,type=#cartographer_core:hostile] at @s run data modify entity @s Fire set value 241

execute if entity @s[scores={t_frost=1}] run execute as @e[distance=..20,type=#cartographer_core:hostile] at @s run effect give @s slowness 4 0
execute if entity @s[scores={t_frost=2}] run execute as @e[distance=..20,type=#cartographer_core:hostile] at @s run effect give @s slowness 4 1
execute if entity @s[scores={t_frost=3}] run execute as @e[distance=..20,type=#cartographer_core:hostile] at @s run effect give @s slowness 4 2
execute if entity @s[scores={t_frost=4}] run execute as @e[distance=..20,type=#cartographer_core:hostile] at @s run effect give @s slowness 4 3
execute if entity @s[scores={t_frost=5..}] run execute as @e[distance=..20,type=#cartographer_core:hostile] at @s run effect give @s slowness 4 4

function cartographer_core:helper/randomize
scoreboard players operation @s helper_melee = @s random

execute if entity @s[scores={t_stun=1,helper_melee=..10}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={t_stun=2,helper_melee=..20}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={t_stun=3,helper_melee=..30}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={t_stun=4,helper_melee=..40}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_stunned 21
execute if entity @s[scores={t_stun=5..,helper_melee=..50}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_stunned 21

execute if entity @s[scores={t_bleed=1..}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players add @s[scores={effect_bleed=1..}] effect_bleed 11

execute if entity @s[scores={t_bleed=1}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run execute unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 3
execute if entity @s[scores={t_bleed=2}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run execute unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 5
execute if entity @s[scores={t_bleed=3..}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run execute unless entity @s[scores={effect_bleed=1..}] run scoreboard players add @s effect_bleed 7

execute if entity @s[scores={t_shock=1}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_shocked 3
execute if entity @s[scores={t_shock=2}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_shocked 5
execute if entity @s[scores={t_shock=3..}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_shocked 7

execute if entity @s[scores={t_vuln=1}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run effect give @s bad_omen 4 0
execute if entity @s[scores={t_vuln=2}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run effect give @s bad_omen 4 1
execute if entity @s[scores={t_vuln=3..}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run effect give @s bad_omen 4 2

execute if entity @s[scores={t_decay=1}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_infect 3
execute if entity @s[scores={t_decay=2}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_infect 5
execute if entity @s[scores={t_decay=3..}] run execute as @e[distance=..20,tag=thorns_mark,type=#cartographer_core:hostile] at @s run scoreboard players set @s effect_infect 7


execute as @s at @s run playsound minecraft:enchant.thorns.hit ambient @a[distance=..8] ~ ~ ~ 1.5 1

#Debug Message
tellraw @a[tag=debug,scores={thorns=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Thorns.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]