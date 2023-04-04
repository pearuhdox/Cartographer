tag @s add ca.trap_disguise

data modify entity @s block_state.Name set value "minecraft:air"



data merge entity @s {interpolation_start:0,transformation:[1.010f, 0.000f, 0.000f,-0.505f,0.000f, 1.010f, 0.000f,-0.005f,0.000f, 0.000f, 1.010f,-0.505f,0.000f, 0.000f, 0.000f,1.000f]}

summon minecraft:interaction ~ ~ ~ {Tags:["ca.trap_counter","ca.prep_disguise"],width:1.01,height:1.00}
ride @e[type=interaction,limit=1,sort=nearest,distance=..1] mount @s