function cartographer_custom_durability:durability/compare

execute if score $custom_enchants ca.installed matches 1.. run tag @s add ca.ench_do_not_check

tag @s add ca.run_dur_fixer