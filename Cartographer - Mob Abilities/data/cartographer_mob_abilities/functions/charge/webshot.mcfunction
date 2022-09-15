execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:ability_traits/trait_warnings/mob

execute unless entity @s[scores={ability_charge=1..2}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.spider.ambient hostile @a[distance=..16] ~ ~ ~ 2 0.5

execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_move_dis 23

execute unless entity @s[scores={ability_charge=1..2}] run data merge entity @s {NoAI:1}

execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:charge/webshot/branch

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/webshot