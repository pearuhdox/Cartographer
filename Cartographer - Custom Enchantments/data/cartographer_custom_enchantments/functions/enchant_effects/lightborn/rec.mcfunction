scoreboard players remove @s ca.raycast 1

execute positioned ^ ^ ^0.5 if block ^ ^ ^ #cartographer_core:can_raycast unless block ^ ^ ^0.5 #cartographer_core:can_raycast if predicate cartographer_custom_enchantments:lightborn_dark run function cartographer_custom_enchantments:enchant_effects/lightborn/place
execute if score @s ca.raycast matches 0 positioned ^ ^ ^0.5 if block ^ ^ ^ #cartographer_core:can_raycast if predicate cartographer_custom_enchantments:lightborn_dark run function cartographer_custom_enchantments:enchant_effects/lightborn/place

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 if block ^ ^ ^ #cartographer_core:can_raycast if block ^ ^ ^0.5 #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchant_effects/lightborn/rec