scoreboard players set @e[distance=0.2..5,type=#cartographer_core:hostile] damage_queue 0

execute if entity @s[scores={thorns=1..}] run function cartographer_custom_enchantments:loop/enchant_effects/thorns_recurse

scoreboard players add @e[distance=0.2..5,type=#cartographer_core:hostile] damage_queue 2

execute as @e[distance=0.2..5,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/deal_damage/by_score
execute as @e[distance=0.2..5,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/deal_damage/invulnerable_tick
execute as @e[distance=0.2..5,type=#cartographer_core:hostile] at @s run function cartographer_core:helper/push_half

execute as @s at @s run function cartographer_custom_enchantments:loop/enchant_effects/thorns_effects

execute as @s at @s run playsound minecraft:enchant.thorns.hit ambient @a[distance=..8] ~ ~ ~ 1.5 1

particle minecraft:block dead_bush ~5 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~4 ~0.5 ~0.5 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~3 ~0.5 ~2 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~2 ~0.5 ~3 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~0.5 ~0.5 ~4 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~ ~0.5 ~5 0.4 0 0.4 0.01 6 normal @a

particle minecraft:block dead_bush ~-5 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~-4 ~0.5 ~0.5 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~-3 ~0.5 ~2 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~-2 ~0.5 ~3 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~-0.5 ~0.5 ~4 0.4 0 0.4 0.01 6 normal @a

particle minecraft:block dead_bush ~-5 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~-4 ~0.5 ~-0.5 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~-3 ~0.5 ~-2 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~-2 ~0.5 ~-3 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~-0.5 ~0.5 ~-4 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~ ~0.5 ~-5 0.4 0 0.4 0.01 6 normal @a

particle minecraft:block dead_bush ~5 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~4 ~0.5 ~-0.5 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~3 ~0.5 ~-2 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~2 ~0.5 ~-3 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block dead_bush ~0.5 ~0.5 ~-4 0.4 0 0.4 0.01 6 normal @a

particle minecraft:block jungle_leaves ~5 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~4 ~0.5 ~1 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~3 ~0.5 ~2 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~2 ~0.5 ~3 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~1 ~0.5 ~4 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~ ~0.5 ~5 0.4 0 0.4 0.01 6 normal @a

particle minecraft:block jungle_leaves ~-5 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~-4 ~0.5 ~0.5 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~-3 ~0.5 ~2 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~-2 ~0.5 ~3 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~-0.5 ~0.5 ~4 0.4 0 0.4 0.01 6 normal @a

particle minecraft:block jungle_leaves ~-5 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~-4 ~0.5 ~-0.5 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~-3 ~0.5 ~-2 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~-2 ~0.5 ~-3 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~-0.5 ~0.5 ~-4 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~ ~0.5 ~-5 0.4 0 0.4 0.01 6 normal @a

particle minecraft:block jungle_leaves ~5 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~4 ~0.5 ~-0.5 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~3 ~0.5 ~-2 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~2 ~0.5 ~-3 0.4 0 0.4 0.01 6 normal @a
particle minecraft:block jungle_leaves ~0.5 ~0.5 ~-4 0.4 0 0.4 0.01 6 normal @a