tag @s add ca.trap_control
tag @s add ca.trap_potentials
tag @s add ca.trap_spawn_type

scoreboard players operation @s ca.wave_count = $count ca.wave_count
scoreboard players add @s ca.wave_count 1

data modify entity @s transformation set value [0.4861f,0.0000f,-0.4861f,0.0000f,-0.0000f,0.6875f,0.0000f,0.14125f,0.4861f,0.0000f,0.4861f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f]
data modify entity @s block_state.Name set value "minecraft:cyan_stained_glass"

execute as @e[type=block_display,limit=5,sort=nearest,distance=..5,tag=ca.trap_spawner_side] at @s run ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=ca.trap_spawner,tag=ca.trap_control]
