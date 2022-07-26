function cartographer_mob_abilities:ability_traits/call_trait_warnings

playsound minecraft:entity.ravager.attack hostile @a[distance=..16] ~ ~ ~ 5 0.85

effect give @s glowing 1 0 true

execute run particle minecraft:crit ~ ~3 ~ 0.7 2 0.7 0 100

tp @s ~ ~ ~ facing entity @p feet

execute if entity @p[distance=..3] run scoreboard players set @s co_send 4
execute if entity @p[distance=..3] run scoreboard players set @s co_y 10

execute if entity @p[distance=3.01..6] run scoreboard players set @s co_send 8
execute if entity @p[distance=3.01..6] run scoreboard players set @s co_y 10

execute if entity @p[distance=6.01..12] run scoreboard players set @s co_send 14
execute if entity @p[distance=6.01..12] run scoreboard players set @s co_y 12

execute if entity @p[distance=12.01..18] run scoreboard players set @s co_send 20
execute if entity @p[distance=12.01..18] run scoreboard players set @s co_y 12

function motion:motion/push

execute unless entity @s[scores={recast_count=0..}] run scoreboard players set @s recast_count 0

execute unless entity @s[scores={recast_count=1..}] if entity @s[tag=ca.recast] run scoreboard players set @s recast_count 2
execute unless entity @s[scores={recast_count=1..}] if entity @s[tag=ca.rerecast] run scoreboard players set @s recast_count 3
execute unless entity @s[scores={recast_count=1..}] run scoreboard players set @s recast_count 1

execute unless entity @s[scores={ability_charge=2..}] run scoreboard players add @s ability_charge 1

tag @s add leaping
tag @s add airborne

scoreboard players set @a mob_sturdy 31