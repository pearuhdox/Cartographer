execute if data entity @s Inventory[{Slot:-106b}].id run scoreboard players set $flag_give ca.loyalty 1
execute unless data entity @s Inventory[{Slot:-106b}].id run function cartographer_custom_enchantments:enchant_effects/loyalty/package/offhand
