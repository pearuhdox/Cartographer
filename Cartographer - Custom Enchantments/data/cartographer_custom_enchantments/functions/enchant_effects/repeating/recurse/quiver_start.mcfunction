scoreboard players add $ammo_ct ca.ench_var 1
data modify storage cartographer_custom_enchantments:repeating Quiver append from storage cartographer_custom_enchantments:repeating Item.tag.ChargedProjectiles[0]


function cartographer_custom_enchantments:enchant_effects/repeating/recurse/quiver