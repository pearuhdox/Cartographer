execute unless entity @s[scores={ability_charge=1}] run playsound minecraft:entity.skeleton.death hostile @a[distance=..24] ~ ~ ~ 1.25 0.5
execute unless entity @s[scores={ability_charge=1}] run playsound minecraft:entity.wither.ambient hostile @a[distance=..24] ~ ~ ~ 1 1

execute unless entity @s[scores={ability_charge=1}] run scoreboard players set @s mob_move_red 101

execute unless entity @s[scores={ability_charge=1}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute unless entity @s[scores={ability_charge=1}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/haunt