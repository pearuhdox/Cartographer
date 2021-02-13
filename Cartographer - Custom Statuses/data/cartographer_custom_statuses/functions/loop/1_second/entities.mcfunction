tag @s remove shocked_tick

execute if score @s[nbt={HurtTime:0s}] effect_bleed matches 1.. run execute unless score @s effect_shocked matches 1.. run function cartographer_custom_statuses:effects/bleeding

execute if score @s[nbt={HurtTime:0s}] effect_shocked matches 1.. run function cartographer_custom_statuses:effects/shocked

execute if score @s effect_cloaked matches 1.. run function cartographer_custom_statuses:effects/cloaked