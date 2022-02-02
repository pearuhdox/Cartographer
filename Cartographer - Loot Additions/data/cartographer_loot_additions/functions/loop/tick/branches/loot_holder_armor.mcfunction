execute as @s[tag=!filled] at @s run function cartographer_loot_additions:stand/accepting
execute as @s[tag=filled] run function cartographer_loot_additions:loop/tick/branches/armor_stands/filled