execute if entity @s[scores={eruption=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run tp @s ~ ~ ~ facing entity @p[scores={eruption=1..}] feet
execute if entity @s[scores={eruption=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..8] at @s run function cartographer_core:helper/push_half

execute if entity @s[scores={eruption=1..}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..8] run effect give @s wither 1 1 true

execute if entity @s[scores={eruption=1}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..8] run function cartographer_core:helper/deal_damage/2
execute if entity @s[scores={eruption=2}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..8] run function cartographer_core:helper/deal_damage/5
execute if entity @s[scores={eruption=3}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..8] run function cartographer_core:helper/deal_damage/8
execute if entity @s[scores={eruption=4}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..8] run function cartographer_core:helper/deal_damage/11
execute if entity @s[scores={eruption=5}] run execute as @s at @s run execute as @e[type=#cartographer_core:hostile,distance=..8] run function cartographer_core:helper/deal_damage/14

execute as @s at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..8] ~ ~ ~ 0.5 0.5
execute as @s at @e[type=minecraft:experience_orb,limit=1,sort=nearest] run particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 1 3 normal 