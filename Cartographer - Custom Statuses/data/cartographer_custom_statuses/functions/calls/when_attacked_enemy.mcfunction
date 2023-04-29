#currently nothing here, but might be needed in the future
execute if score $was_projectile ca.status_var matches 1.. at @s run function cartographer_custom_statuses:effects/player/custom_inflict/find_projectile

execute if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if score $do_status_inflict ca.status_var matches 1.. at @s run function cartographer_custom_statuses:status_inflict/apply/set_statuses
