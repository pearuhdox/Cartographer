execute unless entity @s[scores={ability_charge=1..2}] run function cartographer_mob_abilities:ability_traits/call_trait_warnings
execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:entity.warden.emerge hostile @a[distance=..16] ~ ~ ~ 1 2

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_atk_red 31
execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_move_red 31
execute unless entity @s[scores={ability_charge=1..2}] run scoreboard players set @s mob_sturdy 31

execute unless entity @s[scores={ability_charge=1..2}] positioned ~ ~ ~ run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.5 0.5 0.5 0 30

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/orbit