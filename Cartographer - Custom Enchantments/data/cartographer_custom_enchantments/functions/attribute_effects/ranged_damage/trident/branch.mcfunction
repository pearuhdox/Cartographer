data modify entity @s Owner set from storage cartographer_custom_enchantments:custom_trident entity.Owner
data modify entity @s Motion set from storage cartographer_custom_enchantments:custom_trident entity.Motion

execute on passengers run data modify entity @s item set from storage cartographer_custom_enchantments:custom_trident item

execute on passengers run tp @s ~ ~ ~ ~ ~
execute on passengers on passengers run tp @s ~ ~ ~ ~ ~

execute on passengers on passengers run data modify entity @s data.Owner set from storage cartographer_custom_enchantments:custom_trident entity.Owner

execute store result score @s ca.x run data get entity @s Pos[0]
execute store result score @s ca.y run data get entity @s Pos[1]
execute store result score @s ca.z run data get entity @s Pos[2]

scoreboard players operation @s ca.attr_ranged = $val ca.attr_ranged

execute on passengers on passengers run scoreboard players operation @s ca.ricochet = $swap_val ca.ricochet
execute on passengers on passengers run scoreboard players operation @s ca.loyalty = $swap_val ca.loyalty
execute on passengers on passengers run scoreboard players operation @s ca.current = $swap_val ca.current
execute on passengers on passengers run scoreboard players operation @s ca.collapse = $swap_val ca.collapse
execute on passengers on passengers run scoreboard players operation @s ca.attr_ranged = $val ca.attr_ranged

#Reset the scores needed for the hit
function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/set_enchants

execute on passengers on passengers run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/set_enchants


tag @s add ca.checked_custom_ranged_trident