scoreboard players set @s mob_move_red 16

execute unless entity @s[scores={ability_charge=1..}] unless score @s ca.accelerate_stacks matches 1.. run function cartographer_mob_abilities:ability_traits/accelerate/set_stacks

execute unless entity @s[scores={ability_charge=1..2}] run playsound minecraft:item.trident.thunder player @a[distance=..20] ~ ~ ~ 1.5 1.25

execute unless entity @s[scores={ability_charge=1..2}] at @a[distance=..16] positioned ~ ~8 ~ run particle minecraft:cloud ~ ~ ~ 2 0.2 2 0.01 200 normal
execute unless entity @s[scores={ability_charge=1..2}] at @s positioned ~ ~4 ~ run particle minecraft:cloud ~ ~ ~ 1 0.2 1 0.01 80 normal

execute unless entity @s[scores={ability_charge=1..2}] run effect give @s glowing 1 0 true

execute unless entity @s[scores={ability_charge=2}] run scoreboard players add @s ability_charge 1

execute if entity @s[scores={ability_charge=2}] run function cartographer_mob_abilities:abilities/storm

