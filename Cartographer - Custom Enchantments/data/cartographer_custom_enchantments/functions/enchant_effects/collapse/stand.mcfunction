execute unless score @s ca.collapse matches 0.. run function cartographer_custom_enchantments:enchant_effects/collapse/setup_stand

scoreboard players remove @s ca.collapse 1

execute if entity @a[distance=..10] run function cartographer_custom_enchantments:enchant_effects/collapse/nearby_player

execute if score @s ca.collapse matches 0 run particle poof ~ ~0.6 ~ 0 0 0 0.1 8 normal 
execute if score @s ca.collapse matches 0 run kill @s

scoreboard players operation $mod_20 ca.collapse = @s ca.collapse
scoreboard players operation $mod_20 ca.collapse %= $20 ca.CONSTANT

tp @s ~ ~ ~ ~15 ~

particle minecraft:rain ~10 ~ ~ 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~8.75 ~ ~1.25 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~8.75 ~ ~2.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~7.5 ~ ~3.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~7.5 ~ ~5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~6.25 ~ ~6.25 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~5 ~ ~7.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~3.75 ~ ~7.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~2.5 ~ ~8.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~1.25 ~ ~8.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~ ~ ~10 0.3 0 0.3 0.01 12 normal @a

particle minecraft:rain ~-10 ~ ~ 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-8.75 ~ ~1.25 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-8.75 ~ ~2.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-7.5 ~ ~3.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-7.5 ~ ~5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-6.25 ~ ~6.25 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-5 ~ ~7.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-3.75 ~ ~7.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-2.5 ~ ~8.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-1.25 ~ ~8.75 0.3 0 0.3 0.01 12 normal @a

particle minecraft:rain ~-8.75 ~ ~-1.25 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-8.75 ~ ~-2.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-7.5 ~ ~-3.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-7.5 ~ ~-5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-6.25 ~ ~-6.25 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-5 ~ ~-7.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-3.75 ~ ~-7.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-2.5 ~ ~-8.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~-1.25 ~ ~-8.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~ ~ ~-10 0.3 0 0.3 0.01 12 normal @a

particle minecraft:rain ~8.75 ~ ~-1.25 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~8.75 ~ ~-2.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~7.5 ~ ~-3.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~7.5 ~ ~-5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~6.25 ~ ~-6.25 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~5 ~ ~-7.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~3.75 ~ ~-7.5 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~2.5 ~ ~-8.75 0.3 0 0.3 0.01 12 normal @a
particle minecraft:rain ~1.25 ~ ~-8.75 0.3 0 0.3 0.01 12 normal @a

execute unless block ~ ~ ~ spawner run function cartographer_custom_enchantments:enchant_effects/collapse/break_spawner

execute if score @s ca.collapse matches 121.. run function cartographer_custom_enchantments:enchant_effects/collapse/break_spawner