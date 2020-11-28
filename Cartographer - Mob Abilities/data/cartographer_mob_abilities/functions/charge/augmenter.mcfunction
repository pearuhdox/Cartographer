execute unless entity @s[scores={ability_charge=1..}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 4 0.5
execute unless entity @s[scores={ability_charge=1..}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 0.6
execute if entity @s[scores={ability_charge=1}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1.4
execute if entity @s[scores={ability_charge=2}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..16] ~ ~ ~ 4 0.75
execute if entity @s[scores={ability_charge=3}] run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1.8

execute unless entity @s[scores={ability_charge=4..5}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=4..5}] run effect give @s slowness 1 6 true

execute unless entity @s[scores={ability_charge=1..}] run particle minecraft:dust 1 0 0 1 ~ ~0.5 ~ 1.25 0 1.25 0.1 200 normal @a
execute if entity @s[scores={ability_charge=1}] run particle minecraft:dust 1 0 0 1 ~ ~0.75 ~ 1 0 1 0.1 150 normal @a
execute if entity @s[scores={ability_charge=2}] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.75 0 0.75 0.1 100 normal @a
execute if entity @s[scores={ability_charge=3}] run particle minecraft:dust 1 0 0 1 ~ ~1.5 ~ 0.3 1 0.3 0.1 100 normal @a

execute unless entity @s[scores={ability_charge=4..5}] run execute as @e[distance=0.5..15,limit=3,sort=nearest,type=#cartographer_core:hostile] at @s run particle minecraft:dust 1 0 0 1 ~ ~1.5 ~ 0.3 0.5 0.3 0 30 normal

execute unless entity @s[scores={ability_charge=5}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=5}] run function cartographer_mob_abilities:abilities/augmenter