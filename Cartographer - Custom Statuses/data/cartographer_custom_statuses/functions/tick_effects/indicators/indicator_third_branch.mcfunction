execute if score @s ca.effect_shock matches 1.. if entity @s[tag=!shock_handled] run function cartographer_custom_statuses:tick_effects/indicators/shocked

execute if score @s ca.effect_bleed matches 1.. unless score @s ca.effect_shock matches 1.. if entity @s[tag=!bleed_handled] run function cartographer_custom_statuses:tick_effects/indicators/bleed

execute as @s positioned ~ ~0.25 ~ run function cartographer_custom_statuses:tick_effects/indicators/indicator_fourth_branch