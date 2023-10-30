execute store result entity @s Warmup int 1 run scoreboard players add $time ca.evocation 0

execute on passengers run data modify entity @s data.apply_effects set from storage cartographer_custom_statuses:apply_effects data.effects
execute on passengers run data modify entity @s data.apply_status set from storage cartographer_custom_statuses:apply_status data.effects

scoreboard players operation @s ca.frostbite = $frostbite ca.evocation
scoreboard players operation @s ca.fire_aspect = $fire_aspect ca.evocation
scoreboard players operation @s ca.knockback = $knockback ca.evocation
