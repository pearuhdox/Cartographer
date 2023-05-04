data modify entity @s data.ApplyEffects set from storage cartographer_custom_statuses:apply_effects data.Effects
data modify entity @s data.StatusInflict set from storage cartographer_custom_statuses:status_inflict data.Effects

tag @s add ca.tracker_setup
execute on vehicle run tag @s add ca.has_tracker
