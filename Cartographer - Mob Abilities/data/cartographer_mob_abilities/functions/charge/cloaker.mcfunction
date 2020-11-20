execute unless entity @s[scores={ability_charge=4..5}] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..16] ~ ~ ~ 2 1.5

execute unless entity @s[scores={ability_charge=4..5}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=4..5}] run effect give @s slowness 1 6 true

execute unless entity @s[scores={ability_charge=4..5}] run particle minecraft:large_smoke ~ ~0.5 ~ 0.2 0.5 0.2 0.05 25 normal @a

execute unless entity @s[scores={ability_charge=5}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=5}] run function cartographer_mob_abilities:abilities/cloaker