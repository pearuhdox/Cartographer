execute unless entity @s[scores={ability_charge=1}] at @p[distance=..25] run playsound minecraft:entity.witch.ambient hostile @a[distance=..16] ~ ~ ~ 3 0.5

execute unless entity @s[scores={ability_charge=1}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/ambush