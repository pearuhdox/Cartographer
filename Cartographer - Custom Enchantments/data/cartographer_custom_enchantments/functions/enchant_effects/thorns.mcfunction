scoreboard players operation $thorns thorns = @s thorns
scoreboard players operation $thorns t_fire = @s t_fire
scoreboard players operation $thorns t_frost = @s t_frost
scoreboard players operation $thorns t_stun = @s t_stun
scoreboard players operation $thorns t_bleed = @s t_bleed
scoreboard players operation $thorns t_shock = @s t_shock
scoreboard players operation $thorns t_vuln = @s t_vuln
scoreboard players operation $thorns t_decay = @s t_decay
scoreboard players operation $thorns t_knock = @s t_knock

execute at @s as @e[type=#cartographer_core:hostile,tag=thorns_mark,distance=..30] at @s run function cartographer_custom_enchantments:enchant_effects/thorns/effects

execute at @s run playsound minecraft:enchant.thorns.hit ambient @a[distance=..8] ~ ~ ~ 1.5 1

scoreboard players set $thorns thorns 0
scoreboard players set $thorns t_fire 0
scoreboard players set $thorns t_frost 0
scoreboard players set $thorns t_stun 0
scoreboard players set $thorns t_bleed 0
scoreboard players set $thorns t_shock 0
scoreboard players set $thorns t_vuln 0
scoreboard players set $thorns t_decay 0

#Debug Message
tellraw @a[tag=debug,scores={thorns=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Thorns.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]