execute store result score $fire_mod ca.ench_var run data get entity @s Fire
scoreboard players operation $fire_mod ca.ench_var %= $20 ca.CONSTANT

execute if score @s ca.curse_jinxing matches 1.. unless score $fire_mod ca.ench_var matches 19 if predicate cartographer_custom_enchantments:is_poisoned run function cartographer_custom_enchantments:enchant_effects/curse_environment/jinxing
execute if score @s ca.curse_jinxing matches 1.. unless score $fire_mod ca.ench_var matches 19 if predicate cartographer_custom_enchantments:is_withered run function cartographer_custom_enchantments:enchant_effects/curse_environment/jinxing

execute if score @s ca.curse_flammability matches 1.. if score $fire_mod ca.ench_var matches 19 run function cartographer_custom_enchantments:enchant_effects/curse_environment/flammability
execute if score @s ca.curse_flammability matches 1.. unless score $fire_mod ca.ench_var matches 19 if block ~ ~-0.2 ~ magma_block run function cartographer_custom_enchantments:enchant_effects/curse_environment/flammability