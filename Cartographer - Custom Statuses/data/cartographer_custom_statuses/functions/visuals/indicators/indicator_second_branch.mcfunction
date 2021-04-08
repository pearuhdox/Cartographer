execute if entity @s[tag=!vuln_handled,nbt={ActiveEffects:[{Id:31b}]}] run function cartographer_custom_statuses:visuals/indicators/vulnerable

execute if score @s effect_shocked matches 1.. if entity @s[tag=!shock_handled] unless entity @s[nbt={ActiveEffects:[{Id:31b}]}] run function cartographer_custom_statuses:visuals/indicators/shocked

execute if score @s effect_bleed matches 1.. if entity @s[tag=!bleed_handled] unless score @s effect_shocked matches 1.. unless entity @s[nbt={ActiveEffects:[{Id:31b}]}] run function cartographer_custom_statuses:visuals/indicators/bleed

execute as @s positioned ~ ~0.25 ~ run function cartographer_custom_statuses:visuals/indicators/indicator_third_branch