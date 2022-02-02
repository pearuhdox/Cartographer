tag @s remove slot_changed
execute unless entity @s[tag=ca.ench_do_not_check] run tag @s add ca.queue_ench_check

#Revoke Advancement
advancement revoke @s only cartographer_custom_enchantments:inventory_changed