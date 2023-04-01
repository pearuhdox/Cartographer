playsound minecraft:entity.slime.squish_small hostile @a[distance=..16] ~ ~ ~ 3 0.5
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 3 0.5

scoreboard players set $infect_pass_time ca.var 0
scoreboard players operation $infect_pass_time ca.var = @s ca.effect_infect
scoreboard players add $infect_pass_time ca.var 2

scoreboard players set $did_spread_infect ca.var 0

#Attempt to Spread Decay
execute as @e[type=#bb:hostile,distance=..6,limit=2,sort=random,tag=!ca.infected] at @s run function cartographer_custom_statuses:effects/infect/do_spread

execute unless score $did_spread_infect ca.var matches 1.. run function cartographer_custom_statuses:effects/infect/pool
execute if score $did_spread_infect ca.var matches 1.. run particle minecraft:witch ~ ~1 ~ 0.15 0.4 0.15 0 10 normal
execute if score $did_spread_infect ca.var matches 1.. run function cartographer_custom_statuses:death/infect/circle_vfx


tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" spreading Infection.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]
