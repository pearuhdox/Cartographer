execute if entity @s[type=#cartographer_custom_statuses:bow_allowed_projectile,tag=!ca.ranged_damage_trident_replace] run function cartographer_custom_statuses:player/custom_inflict/projectile_data

execute if entity @s[type=trident] run function cartographer_custom_statuses:player/custom_inflict/get_trident_data

execute if entity @s[type=snowball,tag=ca.ranged_damage_trident_replace] on passengers run function cartographer_custom_statuses:player/custom_inflict/get_trident_data

execute on origin run tag @s add ca.inflict_cause