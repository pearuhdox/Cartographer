tag @s add bounce
effect give @s wither 1 1 true
function cartographer_core:helper/deal_damage/6

tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,distance=0.1..7,tag=!bounce,limit=1,sort=nearest] feet
execute if entity @e[type=#cartographer_core:hostile,distance=0.1..7,tag=!bounce,limit=1,sort=nearest] run scoreboard players set @s helper_raycast 7
execute if entity @e[type=#cartographer_core:hostile,distance=0.1..7,tag=!bounce,limit=1,sort=nearest] run execute at @s positioned ~ ~1 ~ run function cartographer_custom_enchantments:loop/enchant_effects/ricochet_raycast

execute if entity @e[type=#cartographer_core:hostile,distance=0.1..7,tag=!bounce,limit=1,sort=nearest] run execute as @e[type=#cartographer_core:hostile,distance=0.1..7,tag=!bounce,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:loop/enchant_effects/ricochet_bounce_2