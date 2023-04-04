tag @s add ca.trap_control
tag @s add ca.trap_spawn_type

scoreboard players operation @s ca.wave_count = $count ca.wave_count

data modify entity @s block_state.Name set value "minecraft:cyan_stained_glass"

summon minecraft:interaction ~ ~ ~ {Tags:["ca.trap_counter"],width:1.01,height:1.00}

ride @e[type=interaction,limit=1,sort=nearest,distance=..1] mount @s

summon minecraft:block_display ~ ~ ~ {Tags:["ca.trap_spawner_side","no_tick"],block_state:{Name:"minecraft:cyan_stained_glass"},interpolation_duration:0,start_interpolation:0,transformation:[0.424f, -0.424f, 0.000f,0.000f,0.424f, 0.424f, 0.000f,0.075f,0.000f, 0.000f, 0.050f,0.440f,0.000f, 0.000f, 0.000f,1.000f]}

summon minecraft:block_display ~ ~ ~ {Tags:["ca.trap_spawner_side","no_tick"],block_state:{Name:"minecraft:cyan_stained_glass"},interpolation_duration:0,start_interpolation:0,transformation:[0.424f, -0.424f, 0.000f,0.000f,0.424f, 0.424f, 0.000f,0.075f,0.000f, 0.000f, 0.050f,-0.490f,0.000f, 0.000f, 0.000f,1.000f]}

summon minecraft:block_display ~ ~ ~ {Tags:["ca.trap_spawner_side","no_tick"],block_state:{Name:"minecraft:cyan_stained_glass"},interpolation_duration:0,start_interpolation:0,transformation:[0.050f, 0.000f, 0.000f,0.440f,0.000f, 0.424f, -0.424f,0.500f,0.000f, 0.424f, 0.424f,-0.440f,0.000f, 0.000f, 0.000f,1.000f]}

summon minecraft:block_display ~ ~ ~ {Tags:["ca.trap_spawner_side","no_tick"],block_state:{Name:"minecraft:cyan_stained_glass"},interpolation_duration:0,start_interpolation:0,transformation:[0.050f, 0.000f, 0.000f,-0.490f,0.000f, 0.424f, -0.424f,0.500f,0.000f, 0.424f, 0.424f,-0.440f,0.000f, 0.000f, 0.000f,1.000f]}

summon minecraft:block_display ~ ~ ~ {Tags:["ca.trap_spawner_side","no_tick"],block_state:{Name:"minecraft:cyan_stained_glass"},interpolation_duration:0,start_interpolation:0,transformation:[0.495f, 0.000f, 0.495f,-0.500f,0.000f, 0.050f, 0.000f,0.945f,-0.495f, 0.000f, 0.495f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}

execute as @e[type=block_display,limit=5,sort=nearest,distance=..1,tag=ca.trap_spawner_side] at @s run ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=ca.trap_spawner,tag=ca.trap_control]
