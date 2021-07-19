execute if score @s ca.effect_bleed matches 1.. if entity @s[tag=!bleed_handled] run function cartographer_custom_statuses:tick_effects/indicators/bleed

tag @s remove bleed_handled
tag @s remove shock_handled
tag @s remove vuln_handled

#execute as @s positioned ~ ~0.25 ~ run function cartographer_custom_statuses:tick_effects/indicators/indicator_fifth_branch