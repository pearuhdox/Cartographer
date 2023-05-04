function #minecraft:cartographer/events/enchantments/melee/evocation

scoreboard players operation $evocation ca.evocation = @s ca.evocation

execute if score @s ca.atk_time matches 0 if score @s ca.evocation matches 1.. run function cartographer_custom_enchantments:enchant_effects/evocation/branch/attack