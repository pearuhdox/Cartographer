data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_effects data.effects set from entity @s SelectedItem.tag.apply_effects

scoreboard players set $do_apply_effects ca.status_var 1

scoreboard players set $do_linger ca.status_var 0
execute if entity @s[tag=ca.override_linger] unless score @s ca.linger_cdl matches 1.. run scoreboard players set $do_linger ca.status_var 1