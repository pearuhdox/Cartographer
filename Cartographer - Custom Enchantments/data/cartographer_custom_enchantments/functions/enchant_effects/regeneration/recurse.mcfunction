scoreboard players operation @s ca.heal_bank_hp += $hp ca.enchant_var

scoreboard players remove $regen_count ca.enchant_var 1

execute if score $regen_count ca.enchant_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/regeneration/recurse