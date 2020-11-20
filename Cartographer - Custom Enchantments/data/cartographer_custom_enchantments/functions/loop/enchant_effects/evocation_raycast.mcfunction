particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0 10 normal

summon minecraft:evoker_fangs ~ ~ ~ {Warmup:10}

scoreboard players remove @s[scores={helper_raycast=1..}] helper_raycast 1

execute if entity @s[scores={helper_raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:loop/enchant_effects/evocation_raycast