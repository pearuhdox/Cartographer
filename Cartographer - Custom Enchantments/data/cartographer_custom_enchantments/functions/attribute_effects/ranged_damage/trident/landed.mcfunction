data modify storage cartographer_custom_enchantments:custom_trident item set value {}
execute on vehicle run data modify storage cartographer_custom_enchantments:custom_trident item set from entity @s item

data modify storage cartographer_custom_enchantments:custom_trident owner set value []
data modify storage cartographer_custom_enchantments:custom_trident owner set from entity @s data.Owner

scoreboard players set $cu_trident ca.loyalty 0
execute store result score $cu_trident ca.loyalty run data get storage cartographer_custom_enchantments:custom_trident item.tag.CustomEnchantments[{id:"loyalty"}].lvl

function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/get_enchants

scoreboard players operation $damage_custom ca.ench_var = @s ca.attr_ranged

#Find Collapse
execute if score $cu_trident ca.collapse matches 1.. on vehicle positioned ^ ^ ^-0.5 run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/collapse/start

execute unless score $cu_trident ca.loyalty matches 1.. on vehicle positioned ^ ^ ^0.5 summon trident run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/landed_data
execute if score $cu_trident ca.loyalty matches 1.. unless score $cu_trident ca.ricochet matches 1.. run particle minecraft:poof ~ ~ ~ 0 0 0 0.05 2 normal
execute if score $cu_trident ca.loyalty matches 1.. unless score $cu_trident ca.ricochet matches 1.. run playsound minecraft:item.trident.hit player @a ~ ~ ~ 0.7 1

execute if score $cu_trident ca.loyalty matches 1.. if score $cu_trident ca.ricochet matches 1.. on vehicle positioned ^ ^ ^0.5 summon trident run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/landed_data


execute on vehicle run kill @s
kill @s