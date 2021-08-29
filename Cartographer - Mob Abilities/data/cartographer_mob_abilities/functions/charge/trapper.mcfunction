execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings

execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:block.anvil.destroy hostile @a[distance=..20] ~ ~ ~ 2 2

execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_move_red 23

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1..2}] run particle minecraft:crit ~ ~1 ~ 0.75 0.75 0.75 0.3 50 normal @a
execute unless entity @s[scores={ability_charge=1..2}] run particle minecraft:sneeze ~ ~1 ~ 0.5 0.5 0.5 0 5 normal @a

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/trapper/cast