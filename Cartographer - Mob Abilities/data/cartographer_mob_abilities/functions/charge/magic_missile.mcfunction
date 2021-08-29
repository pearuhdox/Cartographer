execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings

execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..32] ~ ~ ~ 5 0.6

execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_move_dis 23

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1..2}] run particle minecraft:falling_obsidian_tear ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
execute unless entity @s[scores={ability_charge=1..2}] run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.2 20 normal @a

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/magic_missile/cast