playsound minecraft:entity.slime.squish_small hostile @a[distance=..16] ~ ~ ~ 3 0.5
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 3 0.5

execute store result score $infect_pass_time ca.var run data get entity @s Item.tag.Spread 1

scoreboard players set $did_spread_infect ca.var 0

#Attempt to Spread Decay
execute as @e[type=#bb:hostile,distance=..6,limit=2,tag=!decaying] at @s run function cartographer_custom_statuses:effects/infect/debilitate_spread

execute unless score $did_spread_infect ca.var matches 1.. run function cartographer_custom_statuses:effects/infect/pool
execute if score $did_spread_infect ca.var matches 1.. run particle minecraft:witch ~ ~1 ~ 0.15 0.4 0.15 0 10 normal

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" spreading Infection.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

kill @s