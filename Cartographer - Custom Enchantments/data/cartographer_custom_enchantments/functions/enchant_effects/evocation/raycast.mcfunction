particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0 10 normal

summon minecraft:evoker_fangs ~ ~ ~ {Warmup:10}

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #bb:can_raycast positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchant_effects/evocation/raycast