execute unless score $was_no_impact ca.status_var matches 1.. unless score $was_projectile ca.status_var matches 1.. if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute unless score $was_no_impact ca.status_var matches 1.. unless score $was_projectile ca.status_var matches 1.. if score $do_apply_status ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses

execute unless score $was_no_impact ca.status_var matches 1.. if score $was_projectile ca.status_var matches 1.. at @s run function cartographer_custom_statuses:player/custom_inflict/find_projectile

execute if score $do_linger ca.status_var matches 1.. on attacker run scoreboard players set @s ca.linger_cdl 300
