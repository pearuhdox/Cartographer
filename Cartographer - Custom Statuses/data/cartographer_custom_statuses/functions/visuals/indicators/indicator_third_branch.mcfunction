execute if score @s effect_shocked matches 1.. if entity @s[tag=!shock_handled] run function cartographer_custom_statuses:visuals/indicators/shocked

execute if score @s effect_bleed matches 1.. unless score @s effect_shocked matches 1.. if entity @s[tag=!bleed_handled] run function cartographer_custom_statuses:visuals/indicators/bleed

execute as @s positioned ~ ~0.25 ~ run function cartographer_custom_statuses:visuals/indicators/indicator_fourth_branch