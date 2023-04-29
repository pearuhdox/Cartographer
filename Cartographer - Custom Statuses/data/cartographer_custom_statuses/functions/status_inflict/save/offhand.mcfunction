data modify storage cartographer_custom_statuses:status_inflict data set value {}
data modify storage cartographer_custom_statuses:status_inflict data.Effects set from entity @s Inventory[{Slot:-106b}].tag.StatusInflict

scoreboard players set $do_status_inflict ca.status_var 1