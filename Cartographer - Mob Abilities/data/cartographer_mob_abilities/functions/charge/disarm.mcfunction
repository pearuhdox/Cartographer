execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings
execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.witch.celebrate hostile @a[distance=..16] ~ ~ ~ 5 1.3

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_atk_red 31
execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_move_red 31
execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_sturdy 31

execute unless entity @s[scores={ability_charge=1..2}] positioned ^ ^ ^3 run particle minecraft:effect ~ ~0.2 ~ 1.2 0 1.2 0 50

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/disarm