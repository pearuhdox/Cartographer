data modify storage cartographer_custom_statuses:apply_effects data set value {}
data modify storage cartographer_custom_statuses:apply_effects data.Effects set from entity @s SelectedItem.tag.ApplyEffects

scoreboard players set $do_apply_effects ca.status_var 1