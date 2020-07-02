execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.ravager.celebrate hostile @a[distance=..16] ~ ~ ~ 5 2

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s slowness 1 6 true

execute unless entity @s[scores={ability_charge=1..2}] run data merge entity @s {NoAI:1}

execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s helper_raycast 13

execute unless entity @s[scores={ability_charge=1..2}] positioned ~ ~1 ~ run function cartographer_mob_abilities:charge/hookshot_raycast

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/hookshot

