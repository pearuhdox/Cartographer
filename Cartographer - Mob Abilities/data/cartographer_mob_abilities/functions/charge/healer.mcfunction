execute unless entity @s[scores={ability_charge=4..5}] run playsound minecraft:block.bell.resonate hostile @a[distance=..16] ~ ~ ~ 3 2

execute unless entity @s[scores={ability_charge=4..5}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=4..5}] run particle minecraft:firework ~ ~0.5 ~ 1 0.2 1 0.01 50 normal @a

execute unless entity @s[scores={ability_charge=5}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=5}] run function cartographer_mob_abilities:abilities/healer