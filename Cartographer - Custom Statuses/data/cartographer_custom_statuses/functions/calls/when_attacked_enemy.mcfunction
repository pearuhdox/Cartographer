#currently nothing here, but might be needed in the future
execute unless score $was_projectile ca.status_var matches 1.. if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute unless score $was_projectile ca.status_var matches 1.. if score $do_status_inflict ca.status_var matches 1.. at @s run function cartographer_custom_statuses:status_inflict/apply/set_statuses
execute unless score $was_projectile ca.status_var matches 1.. if score $do_status_inflict ca.status_var matches 1.. as @a[tag=ca.inflict_cause] at @s run function cartographer_custom_statuses:player/custom_inflict/entropy

execute if score $was_projectile ca.status_var matches 1.. at @s run function cartographer_custom_statuses:player/custom_inflict/find_projectile
