attribute @s minecraft:generic.movement_speed modifier remove 31-4531-2600-000-01
attribute @s minecraft:generic.movement_speed modifier remove 31-4531-2600-000-02

execute at @s run playsound minecraft:entity.slime.attack hostile @a[distance=..16] ~ ~ ~ 1.5 0.5

scoreboard players set @s damage_queue 2

function cartographer_core:helper/deal_damage/by_score
function cartographer_core:helper/deal_damage/invulnerable_tick

execute store result score @s ca.decay_min run data get entity @s Health
execute store result score @s ca.decay_max run attribute @s minecraft:generic.max_health base get

scoreboard players operation @s ca.decay_max /= @s ca.decay_min

execute if score @s ca.decay_max matches 1 run attribute @s minecraft:generic.movement_speed modifier add 31-4531-2600-000-01 decay_speed -0.1 multiply
execute if score @s ca.decay_max matches 1 run attribute @s minecraft:generic.attack_damage modifier add 31-4531-2600-000-02 decay_dmg -0.1 multiply

execute if score @s ca.decay_max matches 2 run attribute @s minecraft:generic.movement_speed modifier add 31-4531-2600-000-01 decay_speed -0.2 multiply
execute if score @s ca.decay_max matches 2 run attribute @s minecraft:generic.attack_damage modifier add 31-4531-2600-000-02 decay_dmg -0.2 multiply

execute if score @s ca.decay_max matches 3 run attribute @s minecraft:generic.movement_speed modifier add 31-4531-2600-000-01 decay_speed -0.3 multiply
execute if score @s ca.decay_max matches 3 run attribute @s minecraft:generic.attack_damage modifier add 31-4531-2600-000-02 decay_dmg -0.3 multiply

execute if score @s ca.decay_max matches 4 run attribute @s minecraft:generic.movement_speed modifier add 31-4531-2600-000-01 decay_speed -0.4 multiply
execute if score @s ca.decay_max matches 4 run attribute @s minecraft:generic.attack_damage modifier add 31-4531-2600-000-02 decay_dmg -0.4 multiply

execute if score @s ca.decay_max matches 5.. run attribute @s minecraft:generic.movement_speed modifier add 31-4531-2600-000-01 decay_speed -0.5 multiply
execute if score @s ca.decay_max matches 5.. run attribute @s minecraft:generic.attack_damage modifier add 31-4531-2600-000-02 decay_dmg -0.5 multiply

scoreboard players remove @s effect_infect 1

execute as @a[scores={ca.ce.cur_spd=2..}] run attribute @s minecraft:generic.attack_speed modifier add 31-321-1818-514-20 current_effect_spd 1024 add
execute as @a[scores={ca.ce.cur_spd=1}] run attribute @s minecraft:generic.attack_speed modifier remove 31-321-1818-514-20

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" affected by Infection.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
