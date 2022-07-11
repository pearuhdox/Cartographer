execute at @s run playsound minecraft:entity.slime.attack hostile @a[distance=..16] ~ ~ ~ 1.5 0.5

scoreboard players set @s cdl.damage_queue 2

function cd:lib/mob/damage/normal

scoreboard players remove @s ca.effect_infect 1

execute as @a[scores={ca.effect_infect=0}] run attribute @s minecraft:generic.movement_speed modifier remove 31-4531-2600-000-01
execute as @a[scores={ca.effect_infect=0}] run attribute @s minecraft:generic.attack_damage modifier remove 31-4531-2600-000-02

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Infection.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
