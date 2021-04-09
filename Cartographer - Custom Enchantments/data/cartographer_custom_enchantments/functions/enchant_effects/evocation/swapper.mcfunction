summon minecraft:evoker_fangs ~ ~ ~ {Warmup:1000000,Tags:["from_evocation"]}

data modify entity @e[type=evoker_fangs,limit=1,sort=nearest,distance=..1] Warmup set from entity @s WaitTime


execute if entity @s[scores={frostbite=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] frostbite = @s frostbite
execute if entity @s[scores={decay=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] decay = @s decay
execute if entity @s[scores={stunning=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] stunning = @s stunning
execute if entity @s[scores={vicious=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] vicious = @s vicious
execute if entity @s[scores={overload=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] overload = @s overload
execute if entity @s[scores={fire_aspect=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] fire_aspect = @s fire_aspect
execute if entity @s[scores={committed=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] committed = @s committed
execute if entity @s[scores={knockback=1..}] run scoreboard players operation @e[type=evoker_fangs,tag=from_evocation,distance=..1,limit=1,sort=nearest] knockback = @s knockback


execute unless entity @s[scores={frostbite=1..}] unless entity @s[scores={decay=1..}] unless entity @s[scores={stunning=1..}] unless entity @s[scores={vicious=1..}] unless entity @s[scores={overload=1..}] unless entity @s[scores={fire_aspect=1..}] unless entity @s[scores={committed=1..}] run particle minecraft:dust 0.62 0.239 0.2 1 ~ ~0.2 ~ 0.25 0 0.25 0 20 normal
execute unless entity @s[scores={frostbite=1..}] unless entity @s[scores={decay=1..}] unless entity @s[scores={stunning=1..}] unless entity @s[scores={vicious=1..}] unless entity @s[scores={overload=1..}] unless entity @s[scores={fire_aspect=1..}] unless entity @s[scores={committed=1..}] run particle minecraft:dust 0.62 0.239 0.2 1 ~ ~0.6 ~ 0.1 0.5 0.1 0 30 normal

execute if entity @s[scores={frostbite=1..}] run particle minecraft:item_snowball ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={frostbite=1..}] run particle minecraft:item_snowball ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={decay=1..}] run particle minecraft:dust 0.1 0 0 1 ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={decay=1..}] run particle minecraft:dust 0.1 0 0 1 ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={vicious=1..}] run particle minecraft:block redstone_block ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={vicious=1..}] run particle minecraft:block redstone_block ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={overload=1..}] run particle minecraft:end_rod ~ ~0.2 ~ 0.25 0 0.25 0 5 normal
execute if entity @s[scores={overload=1..}] run particle minecraft:end_rod ~ ~0.6 ~ 0.1 0.4 0.1 0 10 normal

execute if entity @s[scores={stunning=1..}] run particle minecraft:firework ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={stunning=1..}] run particle minecraft:firework ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={fire_aspect=1..}] run particle minecraft:flame ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={fire_aspect=1..}] run particle minecraft:flame ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal

execute if entity @s[scores={committed=1..}] run particle minecraft:enchanted_hit ~ ~0.2 ~ 0.25 0 0.25 0 10 normal
execute if entity @s[scores={committed=1..}] run particle minecraft:enchanted_hit ~ ~0.6 ~ 0.1 0.5 0.1 0 15 normal


kill @s