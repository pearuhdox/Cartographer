tag @s add ca.is_budding_pedestal

tag @s remove no_tick

setblock ~ ~-0.5 ~ barrier replace

summon minecraft:block_display ~ ~ ~ {Tags:["ca.budding_pedestal_piece","ca.budding_bottom"],block_state:{Name:"minecraft:medium_amethyst_bud"},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.000f, 0.000f,-1.000f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:10,block:10},Passengers:[{id:"minecraft:block_display",Tags:["ca.budding_pedestal_piece"],block_state:{Name:"minecraft:large_amethyst_bud"},interpolation_duration:0,start_interpolation:0,transformation:[-1.000f, -0.000f, 0.000f,0.500f,0.000f, -1.000f, 0.000f,0.000f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:10,block:10},Passengers:[{id:"minecraft:block_display",Tags:["ca.budding_pedestal_piece"],block_state:{Name:"minecraft:purple_carpet"},interpolation_duration:0,start_interpolation:0,transformation:[1.000f, 0.000f, 0.000f,-0.500f,0.000f, 1.300f, 0.000f,-0.080f,0.000f, 0.000f, 1.000f,-0.500f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:10,block:10},Passengers:[{id:"minecraft:block_display",Tags:["ca.budding_pedestal_piece"],block_state:{Name:"minecraft:budding_amethyst"},interpolation_duration:0,start_interpolation:0,transformation:[0.700f, 0.000f, 0.000f,-0.350f,0.000f, 0.100f, 0.000f,-0.080f,0.000f, 0.000f, 0.700f,-0.350f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:10,block:10}}]}]}]}

playsound minecraft:block.amethyst_cluster.break block @a ~ ~ ~ 1 1
particle minecraft:block minecraft:amethyst_cluster ~ ~0.3 ~ 0.15 0.15 0.15 1 20 normal

ride @e[type=block_display,tag=ca.budding_bottom,sort=nearest,limit=1,distance=..2] mount @s