tag @s add ca.trap_ambush
tag @s add ca.trap_spawn_type

scoreboard players operation @s ca.wave_count = $count ca.wave_count

data modify entity @s block_state.Name set value "minecraft:green_stained_glass"

summon minecraft:interaction ~ ~ ~ {Tags:["ca.trap_counter"],width:1.01,height:1.00}

ride @e[type=interaction,limit=1,sort=nearest,distance=..1] mount @s