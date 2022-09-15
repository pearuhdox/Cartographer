execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute unless entity @s[scores={ability_charge=1..2}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.iron_golem.hurt hostile @a[distance=..16] ~ ~ ~ 5 1.5

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1..2}] run particle minecraft:crit ~ ~1 ~ 0.7 1 0.7 0.2 80 normal

execute unless entity @s[scores={ability_charge=1..2}] run tp @s ~ ~ ~ facing entity @p feet
execute unless entity @s[scores={ability_charge=1..2}] run data modify entity @s NoAI set value 1

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/sweep