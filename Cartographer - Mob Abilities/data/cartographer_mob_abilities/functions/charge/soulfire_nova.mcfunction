effect give @s slowness 1 6 true

execute unless entity @s[scores={ability_charge=4..5}] run playsound minecraft:block.fire.ambient hostile @a[distance=..16] ~ ~ ~ 10 0.5

execute unless entity @s[scores={ability_charge=4..5}] run particle minecraft:soul_fire_flame ~ ~ ~ 4 0.2 4 0.1 350 normal @a

execute unless entity @s[scores={ability_charge=4..5}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=5}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=5}] run function cartographer_mob_abilities:abilities/soulfire_nova
