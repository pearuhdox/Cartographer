data modify entity @s effects set from storage cartographer_custom_statuses:apply_effects data.effects

ride @s dismount

execute if score $do_linger ca.status_var matches 1.. run function cartographer_custom_statuses:apply_effects/apply/create_lingering