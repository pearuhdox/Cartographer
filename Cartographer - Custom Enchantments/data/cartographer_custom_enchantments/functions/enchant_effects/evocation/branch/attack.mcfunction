#attacks
execute if score @s ca.sprint matches 0.. if score @s ca.sneak matches 0 unless predicate bb:cant_crit  run function cartographer_custom_enchantments:enchant_effects/evocation/cage
execute if score @s ca.sprint matches 1.. if score @s ca.sneak matches 0 if predicate bb:cant_crit run function cartographer_custom_enchantments:enchant_effects/evocation/spear
execute if score @s ca.sneak matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation/wave

#burn baby burn
execute unless predicate bb:cant_crit run function cartographer_custom_enchantments:enchant_effects/evocation/branch/can_crit
execute if score @s ca.sprint matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation/branch/sprint
execute if score @s ca.sneak matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation/branch/sneak