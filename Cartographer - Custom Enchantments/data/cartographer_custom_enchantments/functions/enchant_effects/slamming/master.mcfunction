function #minecraft:cartographer/events/enchantments/melee/slamming


#execute unless score @s ca.slamming_charges matches 1.. if predicate bb:cant_crit unless score @s ca.sprint matches 1.. run function cartographer_custom_enchantments:enchant_effects/slamming/schedule_start

execute if score @s ca.slamming_charges matches 1.. unless predicate bb:cant_crit unless score @s ca.sprint matches 1.. run function cartographer_custom_enchantments:enchant_effects/slamming/proc

scoreboard players set $use_charge_ench ca.ench_var 1