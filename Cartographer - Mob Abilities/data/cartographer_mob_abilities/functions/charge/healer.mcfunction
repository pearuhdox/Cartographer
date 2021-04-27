execute unless entity @s[scores={ability_charge=1..}] run playsound minecraft:block.bell.resonate hostile @a[distance=..16] ~ ~ ~ 3 2
execute unless entity @s[scores={ability_charge=1..}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 0.6
execute if entity @s[scores={ability_charge=1}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1.4
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:block.bell.resonate hostile @a[distance=..16] ~ ~ ~ 3 1.5
execute if entity @s[scores={ability_charge=3}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1.8
execute if entity @s[scores={ability_charge=3}] run playsound minecraft:block.bell.resonate hostile @a[distance=..16] ~ ~ ~ 5 0.7

execute unless entity @s[scores={ability_charge=4..5}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=4..5}] run scoreboard players set @s mob_move_dis 23

execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:firework ~4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:firework ~3 ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:firework ~1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a
execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:end_rod ~4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:end_rod ~3 ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:end_rod ~1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:firework ~-4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:firework ~-1 ~0.5 ~-3 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:firework ~ ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a
execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:end_rod ~-4 ~0.5 ~-4 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:end_rod ~-1 ~0.5 ~-3 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:end_rod ~ ~0.5 ~-1 0.2 0.2 0.2 0.05 15 normal @a

execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:firework ~-4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:firework ~-3 ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:firework ~-1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a
execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:end_rod ~-4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:end_rod ~-3 ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:end_rod ~-1 ~0.5 ~ 0.2 0.2 0.2 0.05 15 normal @a

execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:firework ~4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:firework ~1 ~0.5 ~3 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:firework ~ ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a
execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:end_rod ~4 ~0.5 ~4 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:end_rod ~1 ~0.5 ~3 0.2 0.2 0.2 0.05 15 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:end_rod ~ ~0.5 ~1 0.2 0.2 0.2 0.05 15 normal @a

execute if entity @s[scores={ability_charge=3}] run particle minecraft:firework ~ ~1.5 ~ 0 0.5 0 0.05 50 normal @a
execute if entity @s[scores={ability_charge=3}] run particle minecraft:end_rod ~ ~1.5 ~ 0 0.5 0 0.05 50 normal @a

execute unless entity @s[scores={ability_charge=5}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=5}] run function cartographer_mob_abilities:abilities/healer