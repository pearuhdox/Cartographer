scoreboard objectives add suso.rng dummy
scoreboard players set #rng.mult suso.rng 1103515245

summon area_effect_cloud 0 0 0 {Tags:["suso.rng"]}
execute as @e[type=area_effect_cloud,tag=suso.rng,x=0,y=0,z=0,dx=0,dy=0,dz=0] run function suso.rng:seed_pt2

scoreboard players operation $rng suso.rng = #rng suso.rng