execute if entity @s[tag=is_executioner_1] run scoreboard players set $exec ca.executioner 1
execute if entity @s[tag=is_executioner_2] run scoreboard players set $exec ca.executioner 2
execute if entity @s[tag=is_executioner_3] run scoreboard players set $exec ca.executioner 3

tag @s[type=#bb:hostile] remove is_executioner_1
tag @s[type=#bb:hostile] remove is_executioner_2
tag @s[type=#bb:hostile] remove is_executioner_3

function cartographer_custom_enchantments:enchant_effects/executioner/branch