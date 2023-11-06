function #minecraft:cartographer/events/enchantments/melee/sweeping


execute unless score @s ca.sweeping_charges matches 1.. if predicate bb:cant_crit unless score @s ca.sprint matches 1.. run function cartographer_custom_enchantments:enchant_effects/sweeping/schedule_start

execute if score @s ca.sweeping_charges matches 1.. if predicate bb:cant_crit unless score @s ca.sprint matches 1.. run function cartographer_custom_enchantments:enchant_effects/sweeping/proc

scoreboard players set $use_charge_ench ca.ench_var 1