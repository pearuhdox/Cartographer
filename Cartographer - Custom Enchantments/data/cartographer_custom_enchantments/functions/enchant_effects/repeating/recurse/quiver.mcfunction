data modify storage cartographer_custom_enchantments:repeating Arrow set from storage cartographer_custom_enchantments:repeating ArrowList[0]
execute store result score $arrow_ct ca.ench_var run data get storage cartographer_custom_enchantments:repeating Arrow.Count
data remove storage cartographer_custom_enchantments:repeating ArrowList[0]

execute if score $arrow_ct ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/repeating/recurse/quiver_rec

execute unless score $arrow_ct ca.ench_var matches 1.. if score $ammo_ct ca.ench_var <= @s ca.ammo if data storage cartographer_custom_enchantments:repeating ArrowList[0] run function cartographer_custom_enchantments:enchant_effects/repeating/recurse/quiver
