#Effects that can be affected by Curse of misfortune, do this check here
execute unless score @s ca.curse_misfortune_total matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_attacked_player_branch

execute if score @s ca.curse_misfortune_total matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_misfortune/other
execute if score @s ca.curse_misfortune_total matches 1.. if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_attacked_player_branch
