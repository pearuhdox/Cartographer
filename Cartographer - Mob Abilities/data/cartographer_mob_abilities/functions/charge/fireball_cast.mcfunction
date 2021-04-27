execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:item.firecharge.use hostile @a[distance=..32] ~ ~ ~ 2 0.75

execute unless entity @s[scores={ability_charge=1}] run scoreboard players set @s mob_move_red 23

execute unless entity @s[scores={ability_charge=1}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=1}] run particle minecraft:falling_lava ~ ~1 ~ 0.75 0.75 0.75 0 50 normal @a
execute unless entity @s[scores={ability_charge=1}] run particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 0.2 5 normal @a

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/fireball_cast