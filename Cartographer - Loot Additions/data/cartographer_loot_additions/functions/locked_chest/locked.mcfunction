summon minecraft:text_display ~ ~ ~ {Tags:["ca.locked_chest_piece","ca.locked_prompt"],text:"{\"text\":\"Chest is locked!\",\"color\":\"yellow\"}",background: 0,billboard:"vertical",interpolation_duration:0,start_interpolation:0,transformation:[0.700f, 0.000f, 0.000f,0.000f,0.000f, 0.700f, 0.000f,1.000f,0.000f, 0.000f, 0.700f,0.000f,0.000f, 0.000f, 0.000f,1.000f],brightness:{sky:8,block:8}}

ride @e[tag=ca.locked_prompt,sort=nearest,limit=1,distance=..2] mount @s

scoreboard players set @s ca.locked_stage 4

playsound minecraft:block.chain.break player @a[distance=..16] ~ ~ ~ 2 0.5
playsound minecraft:block.chest.locked player @a[distance=..16] ~ ~ ~ 1 1
