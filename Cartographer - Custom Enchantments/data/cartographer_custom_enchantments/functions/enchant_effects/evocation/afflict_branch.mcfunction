execute if data storage cartographer_custom_statuses:apply_effects data.effects[0] at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if data storage cartographer_custom_statuses:apply_status data.effects[0] at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses

function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master

damage @s 0.01 cartographer_custom_enchantments:enchant_damage_bypass by @p

tag @s add ca.evocation_fang_hit