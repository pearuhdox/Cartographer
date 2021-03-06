scoreboard players set @s mob_move_red 23

execute unless entity @s[scores={ability_charge=3..4}] run playsound minecraft:entity.spider.step hostile @a[distance=..16] ~ ~ ~ 2 0.5
execute unless entity @s[scores={ability_charge=1..}] run playsound minecraft:block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 2 0.5
execute if entity @s[scores={ability_charge=1}] run playsound minecraft:block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 2 0.7
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:block.end_portal_frame.fill player @a[distance=..16] ~ ~ ~ 2 0.9

execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:witch ~ ~0.5 ~ 3 0.2 3 0 100 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:witch ~ ~1 ~ 1.5 0.6 1.5 0 75 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:witch ~ ~1 ~ 0.5 1 0.5 0 50 normal @a

execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~8 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~7 ~0.5 ~1 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~7 ~0.5 ~2 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~6 ~0.5 ~3 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~6 ~0.5 ~4 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~5 ~0.5 ~5 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~4 ~0.5 ~6 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~3 ~0.5 ~6 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~2 ~0.5 ~7 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~1 ~0.5 ~7 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~ ~0.5 ~8 0.4 0 0.4 0.01 6 normal @a

execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-8 ~0.5 ~ 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-7 ~0.5 ~1 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-7 ~0.5 ~2 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-6 ~0.5 ~3 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-6 ~0.5 ~4 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-5 ~0.5 ~5 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-4 ~0.5 ~6 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-3 ~0.5 ~6 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-2 ~0.5 ~7 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-1 ~0.5 ~7 0.4 0 0.4 0.01 6 normal @a

execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-7 ~0.5 ~-1 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-7 ~0.5 ~-2 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-6 ~0.5 ~-3 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-6 ~0.5 ~-4 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-5 ~0.5 ~-5 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-4 ~0.5 ~-6 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-3 ~0.5 ~-6 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-2 ~0.5 ~-7 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~-1 ~0.5 ~-7 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~ ~0.5 ~-8 0.4 0 0.4 0.01 6 normal @a

execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~7 ~0.5 ~-1 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~7 ~0.5 ~-2 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~6 ~0.5 ~-3 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~6 ~0.5 ~-4 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~5 ~0.5 ~-5 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~4 ~0.5 ~-6 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~3 ~0.5 ~-6 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~2 ~0.5 ~-7 0.4 0 0.4 0.01 6 normal @a
execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:item_slime ~1 ~0.5 ~-7 0.4 0 0.4 0.01 6 normal @a

execute unless entity @s[scores={ability_charge=3..4}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=4}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:abilities/venom_nova

