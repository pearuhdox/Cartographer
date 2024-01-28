#Reset block fall damage tag
scoreboard players set $block ca.fall_damage 0

#Effects that can be affected by Curse of misfortune, do this check here
execute unless score @s ca.curse_misfortune_total matches 1.. run function cartographer_custom_enchantments:enchant_calls/player_fell_branch

execute if score @s ca.curse_misfortune_total matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_misfortune/other
execute if score @s ca.curse_misfortune_total matches 1.. if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_calls/player_fell_branch


#Do fall damage calc
execute if score $do_fall_damage ca.gamerule matches 1.. unless score $block ca.fall_damage matches 1.. run function cartographer_custom_enchantments:helper/fall_damage/calc
