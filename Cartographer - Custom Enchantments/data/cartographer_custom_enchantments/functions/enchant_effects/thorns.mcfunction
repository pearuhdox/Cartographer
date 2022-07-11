scoreboard players set $thorns ca.thorns 0
scoreboard players set $thorns ca.t_fire 0
scoreboard players set $thorns ca.t_frost 0
scoreboard players set $thorns ca.t_stun 0
scoreboard players set $thorns ca.t_bleed 0
scoreboard players set $thorns ca.t_shock 0
scoreboard players set $thorns ca.t_vuln 0
scoreboard players set $thorns ca.t_infection 0
scoreboard players set $thorns ca.t_poss 0
scoreboard players set $thorns ca.cauterize 0

scoreboard players operation $thorns ca.thorns = @s ca.thorns
scoreboard players operation $thorns ca.t_fire = @s ca.t_fire
scoreboard players operation $thorns ca.t_frost = @s ca.t_frost
scoreboard players operation $thorns ca.t_stun = @s ca.t_stun
scoreboard players operation $thorns ca.t_bleed = @s ca.t_bleed
scoreboard players operation $thorns ca.t_shock = @s ca.t_shock
scoreboard players operation $thorns ca.t_vuln = @s ca.t_vuln
scoreboard players operation $thorns ca.t_infection = @s ca.t_infection
scoreboard players operation $thorns ca.t_knock = @s ca.t_knock
scoreboard players operation $thorns ca.t_poss = @s ca.t_poss

scoreboard players operation $thorns ca.cauterize = @s ca.cauterize

execute at @s as @e[type=#bb:hostile,tag=thorns_mark,distance=..30] at @s run function cartographer_custom_enchantments:enchant_effects/thorns/effects

execute at @s run playsound minecraft:enchant.thorns.hit ambient @a[distance=..8] ~ ~ ~ 1.5 1

#Debug Message
tellraw @a[tag=debug,scores={ca.thorns=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Thorns.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]