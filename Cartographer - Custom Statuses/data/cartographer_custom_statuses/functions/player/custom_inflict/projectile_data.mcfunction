execute on passengers run data modify storage cartographer_custom_statuses:apply_effects data.effects set from entity @s data.apply_effects
execute on passengers run data modify storage cartographer_custom_statuses:apply_status data.effects set from entity @s data.apply_status

execute if data entity @s item.tag.custom_statuses run function cartographer_custom_statuses:player/custom_inflict/custom_arrow_data