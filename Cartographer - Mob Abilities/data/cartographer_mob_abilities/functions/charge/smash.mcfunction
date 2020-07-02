execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.ravager.attack hostile @a[distance=..16] ~ ~ ~ 5 0.85

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1..2}] run execute as @s at @s run particle minecraft:crit ~ ~3 ~ 0.7 2 0.7 0 100

execute unless entity @s[scores={ability_charge=1..2}] run data merge entity @s {Motion:[0.0,0.75,0.0]}

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/smash