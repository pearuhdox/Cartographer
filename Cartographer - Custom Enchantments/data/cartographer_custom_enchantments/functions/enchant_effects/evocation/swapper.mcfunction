summon minecraft:evoker_fangs ~ ~ ~ {Warmup:1000000,Tags:["from_evocation"]}

data modify entity @e[type=evoker_fangs,limit=1,sort=nearest,distance=..1] Warmup set from entity @s WaitTime


execute if entity @s[scores={ca.frostbite=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] ca.frostbite = @s ca.frostbite
execute if entity @s[scores={ca.infection=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] ca.infection = @s ca.infection
execute if entity @s[scores={ca.stunning=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] ca.stunning = @s ca.stunning
execute if entity @s[scores={ca.bleeding=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] ca.bleeding = @s ca.bleeding
execute if entity @s[scores={ca.electrocute=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] ca.electrocute = @s ca.electrocute
execute if entity @s[scores={ca.fire_aspect=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] ca.fire_aspect = @s ca.fire_aspect
execute if entity @s[scores={ca.exposing=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] ca.exposing = @s ca.exposing
execute if entity @s[scores={ca.knockback=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] ca.knockback = @s ca.knockback


execute unless entity @s[scores={ca.frostbite=1..}] unless entity @s[scores={ca.infection=1..}] unless entity @s[scores={ca.stunning=1..}] unless entity @s[scores={ca.bleeding=1..}] unless entity @s[scores={ca.electrocute=1..}] unless entity @s[scores={ca.fire_aspect=1..}] unless entity @s[scores={ca.exposing=1..}] run particle minecraft:dust 0.62 0.239 0.2 1 ~ ~0.2 ~ 0.25 0 0.25 0 20 normal
execute unless entity @s[scores={ca.frostbite=1..}] unless entity @s[scores={ca.infection=1..}] unless entity @s[scores={ca.stunning=1..}] unless entity @s[scores={ca.bleeding=1..}] unless entity @s[scores={ca.electrocute=1..}] unless entity @s[scores={ca.fire_aspect=1..}] unless entity @s[scores={ca.exposing=1..}] run particle minecraft:dust 0.62 0.239 0.2 1 ~ ~0.6 ~ 0.1 0.5 0.1 0 30 normal

execute if entity @s[scores={ca.frostbite=1..}] run particle minecraft:item_snowball ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={ca.frostbite=1..}] run particle minecraft:item_snowball ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={ca.infection=1..}] run particle minecraft:dust 0.1 0 0 1 ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={ca.infection=1..}] run particle minecraft:dust 0.1 0 0 1 ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={ca.bleeding=1..}] run particle minecraft:block redstone_block ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={ca.bleeding=1..}] run particle minecraft:block redstone_block ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={ca.electrocute=1..}] run particle minecraft:end_rod ~ ~0.2 ~ 0.25 0 0.25 0 5 normal
execute if entity @s[scores={ca.electrocute=1..}] run particle minecraft:end_rod ~ ~0.6 ~ 0.1 0.4 0.1 0 10 normal

execute if entity @s[scores={ca.stunning=1..}] run particle minecraft:firework ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={ca.stunning=1..}] run particle minecraft:firework ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={ca.fire_aspect=1..}] run particle minecraft:flame ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={ca.fire_aspect=1..}] run particle minecraft:flame ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={ca.exposing=1..}] run particle minecraft:enchanted_hit ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={ca.exposing=1..}] run particle minecraft:enchanted_hit ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal


kill @s