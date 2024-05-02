function #minecraft:cartographer/events/enchantments/melee/evocation

scoreboard players operation $evocation ca.evocation = @s ca.evocation


#execute if score @s ca.evocation matches 1.. unless score @s ca.evocation_charges matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation/branch/fail
execute if score @s ca.evocation matches 1.. if score @s ca.evocation_charges matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation/branch/attack

scoreboard players set $use_charge_ench ca.ench_var 1