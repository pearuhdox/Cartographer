data modify entity @s data.apply_effects set from storage cartographer_custom_statuses:apply_effects data.effects
data modify entity @s data.apply_status set from storage cartographer_custom_statuses:apply_status data.effects

tag @s add ca.tracker_setup
execute on vehicle run tag @s add ca.has_tracker
