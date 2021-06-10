execute if score @s effect_stunned matches 1.. run function cartographer_custom_statuses:visuals/indicators/stunned

execute if entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s effect_stunned matches 1.. run function cartographer_custom_statuses:visuals/indicators/vulnerable
execute if entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s effect_stunned matches 1.. run tag @s add vuln_handled

execute if score @s effect_shocked matches 1.. unless entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s effect_stunned matches 1.. run function cartographer_custom_statuses:visuals/indicators/shocked
execute if score @s effect_shocked matches 1.. unless entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s effect_stunned matches 1.. run tag @s add shock_handled

execute if score @s effect_bleed matches 1.. unless score @s effect_shocked matches 1.. unless entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s effect_stunned matches 1.. run function cartographer_custom_statuses:visuals/indicators/bleed
execute if score @s effect_bleed matches 1.. unless score @s effect_shocked matches 1.. unless entity @s[predicate=cartographer_custom_statuses:is_exposed] unless score @s effect_stunned matches 1.. run tag @s add bleed_handled

execute as @s positioned ~ ~0.25 ~ run function cartographer_custom_statuses:visuals/indicators/indicator_second_branch