scoreboard players set $break_spawner ca.var 0
scoreboard players set $do_eruption ca.var 0
scoreboard players set $do_sapper ca.var 0

execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_core:event_handler/block_destroyed/custom_enchantments
execute if score $loot_additions ca.installed matches 1.. run function cartographer_core:event_handler/block_destroyed/loot_additions
execute if score $mimics ca.installed matches 1.. run function cartographer_core:event_handler/block_destroyed/mimics