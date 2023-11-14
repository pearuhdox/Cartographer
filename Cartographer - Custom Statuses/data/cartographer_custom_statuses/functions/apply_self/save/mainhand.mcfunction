data modify storage cartographer_custom_statuses:apply_self data set value {}
data modify storage cartographer_custom_statuses:apply_self data.effects set from entity @s SelectedItem.tag.apply_self

scoreboard players set $do_apply_self ca.status_var 1