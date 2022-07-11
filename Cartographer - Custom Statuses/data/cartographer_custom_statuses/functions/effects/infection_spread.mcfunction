playsound minecraft:entity.slime.squish_small hostile @a[distance=..16] ~ ~ ~ 3 0.5
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 3 0.5

scoreboard players add @e[type=#bb:hostile,distance=..7] ca.effect_infect 0

tag @e[type=#bb:hostile,distance=0.2..6,scores={ca.effect_infect=0},limit=2,sort=nearest] add decay_spread_target

#Spread Decay at Tier 1
execute as @s[nbt={Item:{tag:{Spread:1}}}] at @s as @e[type=#bb:hostile,scores={ca.effect_infect=0},distance=..6,tag=decay_spread_target] at @s run scoreboard players set @s ca.effect_infect 2

#Spread Decay at Tier 2
execute as @s[nbt={Item:{tag:{Spread:2}}}] at @s as @e[type=#bb:hostile,scores={ca.effect_infect=0},distance=..6,tag=decay_spread_target] at @s run scoreboard players set @s ca.effect_infect 3

#Spread Decay at Tier 3
execute as @s[nbt={Item:{tag:{Spread:3}}}] at @s as @e[type=#bb:hostile,scores={ca.effect_infect=0},distance=..6,tag=decay_spread_target] at @s run scoreboard players set @s ca.effect_infect 4

#Spread Decay at Tier 4
execute as @s[nbt={Item:{tag:{Spread:4}}}] at @s as @e[type=#bb:hostile,scores={ca.effect_infect=0},distance=..6,tag=decay_spread_target] at @s run scoreboard players set @s ca.effect_infect 5

#Spread Decay at Tier 5
execute as @s[nbt={Item:{tag:{Spread:5}}}] at @s as @e[type=#bb:hostile,scores={ca.effect_infect=0},distance=..6,tag=decay_spread_target] at @s run scoreboard players set @s ca.effect_infect 6

execute as @e[type=#bb:hostile,tag=decay_spread_target,distance=..6] at @s run function cartographer_custom_statuses:effects/infect_debilitate

execute unless entity @e[type=#bb:hostile,tag=decay_spread_target,distance=..6] run function cartographer_custom_statuses:effects/infect_pool

execute if entity @e[type=#bb:hostile,distance=..6,tag=decay_spread_target] at @s run particle minecraft:witch ~ ~1 ~ 0.15 0.4 0.15 0 10 normal

tag @e[type=#bb:hostile,distance=..6,tag=decay_spread_target] remove decay_spread_target

tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" spreading Infection.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

kill @s