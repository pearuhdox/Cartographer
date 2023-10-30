data modify storage cartographer_custom_statuses:apply_effects data.temp set from entity @s Inventory[{Slot:102b}].tag.apply_effects

execute store result score $size ca.status_var run data get storage cartographer_custom_statuses:apply_effects data.temp

execute if score $size ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:apply_effects data.effects append from storage cartographer_custom_statuses:apply_effects data.temp[0]
execute if score $size ca.status_var matches 2.. run data modify storage cartographer_custom_statuses:apply_effects data.effects append from storage cartographer_custom_statuses:apply_effects data.temp[1]
execute if score $size ca.status_var matches 3.. run data modify storage cartographer_custom_statuses:apply_effects data.effects append from storage cartographer_custom_statuses:apply_effects data.temp[2]
execute if score $size ca.status_var matches 4.. run data modify storage cartographer_custom_statuses:apply_effects data.effects append from storage cartographer_custom_statuses:apply_effects data.temp[3]
execute if score $size ca.status_var matches 5.. run data modify storage cartographer_custom_statuses:apply_effects data.effects append from storage cartographer_custom_statuses:apply_effects data.temp[4]
execute if score $size ca.status_var matches 6.. run data modify storage cartographer_custom_statuses:apply_effects data.effects append from storage cartographer_custom_statuses:apply_effects data.temp[5]
execute if score $size ca.status_var matches 7.. run data modify storage cartographer_custom_statuses:apply_effects data.effects append from storage cartographer_custom_statuses:apply_effects data.temp[6]
execute if score $size ca.status_var matches 8.. run data modify storage cartographer_custom_statuses:apply_effects data.effects append from storage cartographer_custom_statuses:apply_effects data.temp[7]

scoreboard players set $do_apply_effects ca.status_var 1