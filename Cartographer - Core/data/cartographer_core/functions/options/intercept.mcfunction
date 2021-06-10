execute if entity @s[gamemode=creative] unless entity @s[tag=not_operator] run function cartographer_core:options/main
execute if entity @s[gamemode=creative] if entity @s[tag=not_operator] run function cartographer_core:options/player/main
execute unless entity @s[gamemode=creative] run function cartographer_core:options/player/main