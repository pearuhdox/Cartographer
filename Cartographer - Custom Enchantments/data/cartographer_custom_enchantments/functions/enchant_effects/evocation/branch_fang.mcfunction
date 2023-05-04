execute store result entity @s Warmup int 1 run scoreboard players add $time ca.evocation 0

execute on passengers run data modify entity @s data.ApplyEffects set from storage cartographer_custom_statuses:apply_effects data.Effects
execute on passengers run data modify entity @s data.StatusInflict set from storage cartographer_custom_statuses:status_inflict data.Effects

scoreboard players operation @s ca.frostbite = $frostbite ca.evocation
scoreboard players operation @s ca.fire_aspect = $fire_aspect ca.evocation
scoreboard players operation @s ca.knockback = $knockback ca.evocation
