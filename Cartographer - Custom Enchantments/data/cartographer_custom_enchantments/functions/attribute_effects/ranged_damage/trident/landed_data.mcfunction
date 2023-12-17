tag @s add ca.ranged_damage_trident_dropped

data modify entity @s DealtDamage set value 1b

data modify entity @s pickup set value 1b

data modify entity @s item set from storage cartographer_custom_enchantments:custom_trident item

data modify entity @s Owner set from storage cartographer_custom_enchantments:custom_trident owner

playsound minecraft:item.trident.hit player @a

function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/set_enchants

execute if score $cu_trident ca.ricochet matches 1.. run tag @s add is_ricocheting

scoreboard players operation @s ca.attr_ranged = $damage_custom ca.ench_var

scoreboard players set @s ca.collapse 0

execute unless score @s ca.ricochet matches 1.. run data modify entity @s Motion set value [0.0d,-0.1d,0.0d]
execute if score @s ca.ricochet matches 1.. run data modify entity @s Motion set value [0.0d,0.1d,0.0d]


scoreboard players set @s ca.lifetime 1

tag @s add custom_trident