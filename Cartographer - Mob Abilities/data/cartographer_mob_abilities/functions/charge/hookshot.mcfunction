execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

scoreboard players set @s ca.accelerate_stacks 0

execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.ravager.celebrate hostile @a[distance=..16] ~ ~ ~ 5 2

execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_move_dis 23

execute unless entity @s[scores={ability_charge=1..2}] run tp @s ~ ~ ~ facing entity @p feet

execute unless entity @s[scores={ability_charge=1..2}] run data merge entity @s {NoAI:1}

execute unless entity @s[scores={ability_charge=1..2}] run tag @s add is_casting

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true


execute unless entity @s[scores={ability_charge=1..2}] at @s run function cartographer_mob_abilities:charge/hookshot/branch

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run tag @s remove is_casting

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/hookshot