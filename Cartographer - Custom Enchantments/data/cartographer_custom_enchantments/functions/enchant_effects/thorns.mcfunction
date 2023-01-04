scoreboard players set $thorns ca.thorns 0
scoreboard players set $thorns ca.t_fire 0
scoreboard players set $thorns ca.t_frost 0
scoreboard players set $thorns ca.t_stun 0
scoreboard players set $thorns ca.t_bleed 0
scoreboard players set $thorns ca.t_shock 0
scoreboard players set $thorns ca.t_expose 0
scoreboard players set $thorns ca.t_infection 0
scoreboard players set $thorns ca.t_poss 0
scoreboard players set $thorns ca.t_exec 0

scoreboard players set $thorns ca.cauterize 0

scoreboard players operation $thorns ca.thorns = @s ca.thorns
scoreboard players operation $thorns ca.t_fire = @s ca.t_fire
scoreboard players operation $thorns ca.t_frost = @s ca.t_frost
scoreboard players operation $thorns ca.t_stun = @s ca.t_stun
scoreboard players operation $thorns ca.t_bleed = @s ca.t_bleed
scoreboard players operation $thorns ca.t_shock = @s ca.t_shock
scoreboard players operation $thorns ca.t_expose = @s ca.t_expose
scoreboard players operation $thorns ca.t_infection = @s ca.t_infection
scoreboard players operation $thorns ca.t_knock = @s ca.t_knock
scoreboard players operation $thorns ca.t_poss = @s ca.t_poss
scoreboard players operation $thorns ca.t_exec = @s ca.t_exec

scoreboard players operation $thorns ca.cauterize = @s ca.cauterize

function #minecraft:cartographer/events/enchantments/passive/thorns

execute at @s as @e[type=#bb:hostile,tag=thorns_mark,distance=..30] at @s run function cartographer_custom_enchantments:enchant_effects/thorns/effects

playsound minecraft:enchant.thorns.hit ambient @a[distance=..8] ~ ~ ~ 1.5 1
playsound minecraft:entity.cat.hiss player @a[distance=..8] ~ ~ ~ 0.8 2

particle minecraft:crit ~ ~0.2 ~ 0.5 0.2 0.5 0.1 20 normal