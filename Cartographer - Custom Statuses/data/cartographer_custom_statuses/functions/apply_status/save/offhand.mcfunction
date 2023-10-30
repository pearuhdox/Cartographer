data modify storage cartographer_custom_statuses:apply_status data set value {}
data modify storage cartographer_custom_statuses:apply_status data.effects set from entity @s Inventory[{Slot:-106b}].tag.apply_status

scoreboard players set $do_apply_status ca.status_var 1

#Finally, convert over entropy
scoreboard players operation $entropy ca.player_entropy = @s ca.player_entropy