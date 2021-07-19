execute if entity @s[tag=i.restore_inventory] run function cartographer_custom_enchantments:enchant_effects/infinity/restore

execute if score @s ca.use_pearl matches 1.. run function cartographer_custom_enchantments:enchant_effects/infinity/check_edgecases
execute if score @s ca.use_splashpot matches 1.. run function cartographer_custom_enchantments:enchant_effects/infinity/check_edgecases
execute if score @s ca.use_lingerpot matches 1.. run function cartographer_custom_enchantments:enchant_effects/infinity/check_edgecases

function cartographer_custom_enchantments:enchant_effects/infinity/reset_scores