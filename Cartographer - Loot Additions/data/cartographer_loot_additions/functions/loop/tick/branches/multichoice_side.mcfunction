execute as @s[tag=!filled] if data entity @s Item.id run function cartographer_loot_additions:multichoice/accepting
execute as @s[tag=filled] run function cartographer_loot_additions:loop/tick/branches/multichoice_side/proximity
