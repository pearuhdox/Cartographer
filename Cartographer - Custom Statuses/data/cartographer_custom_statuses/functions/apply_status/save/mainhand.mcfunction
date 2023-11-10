data modify storage cartographer_custom_statuses:apply_status data set value {}
data modify storage cartographer_custom_statuses:apply_status data.effects set from entity @s SelectedItem.tag.apply_status

execute unless data storage cartographer_custom_statuses:apply_status data.effects[{id:"stunned"}].chance run data modify storage cartographer_custom_statuses:apply_status data.effects[{id:"stunned"}].chance set value 100


scoreboard players set $do_apply_status ca.status_var 1

#Finally, convert over entropy
scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy