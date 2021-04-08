execute if entity @s[tag=i.restore_inventory] run function cartographer_custom_enchantments:enchant_effects/infinity/restore

execute if score @s helper_pearl matches 1.. run function cartographer_custom_enchantments:enchant_effects/infinity/check_edgecases
execute if score @s helper_splashpot matches 1.. run function cartographer_custom_enchantments:enchant_effects/infinity/check_edgecases
execute if score @s helper_lingerpot matches 1.. run function cartographer_custom_enchantments:enchant_effects/infinity/check_edgecases

function cartographer_custom_enchantments:enchant_effects/infinity/save
function cartographer_custom_enchantments:enchant_effects/infinity/reset_scores

#say infinity testing