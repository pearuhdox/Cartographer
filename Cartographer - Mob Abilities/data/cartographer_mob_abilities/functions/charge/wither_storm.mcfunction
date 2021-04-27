scoreboard players set @s mob_move_dis 41
effect give @s blindness 2 0 false

execute unless entity @s[scores={ability_charge=3..4}] run playsound minecraft:entity.wither.ambient hostile @a[distance=..24] ~ ~ ~ 2 2

execute unless entity @s[scores={ability_charge=3..4}] run particle minecraft:large_smoke ~ ~4 ~ 2 0.2 2 0.05 400 normal

execute unless entity @s[scores={ability_charge=3..4}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=4}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=4}] run function cartographer_mob_abilities:abilities/wither_storm

