#Run Auto Charge
execute if score @s ca.auto_charge matches 1.. run function cartographer_custom_enchantments:enchant_effects/auto_charge/count_check

#Effects that can be affected by Curse of Fizzling, do this check here
execute unless score @s ca.curse_fizzling_main matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_break_spawner_branch

execute if score @s ca.curse_fizzling_main matches 1.. run function cartographer_custom_enchantments:enchant_effects/curse_fizzling/mainhand
execute if score @s ca.curse_fizzling_main matches 1.. if score $success ca.rand_var matches 1.. run function cartographer_custom_enchantments:enchant_calls/when_break_spawner_branch
