tag @s add ca.trap_ambush
tag @s add ca.trap_spawn_type

scoreboard players operation @s ca.wave_count = $count ca.wave_count

data modify entity @s block_state.Name set value "minecraft:green_stained_glass"