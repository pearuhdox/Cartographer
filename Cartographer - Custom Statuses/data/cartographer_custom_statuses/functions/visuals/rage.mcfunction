scoreboard players remove @s effect_rage 1

execute if score @s effect_rage matches 1 run summon arrow ~ ~2.3 ~ {Tags:["enrager"],Motion:[0.0,-1.0,0.0],damage:0,life:1200}
execute as @s run execute as @e[type=arrow,tag=enrager] run data modify entity @s Owner set from entity @e[limit=1,type=#cartographer_core:hostile,sort=nearest,distance=1..10] UUID

execute if score @s effect_rage matches 1.. run particle minecraft:angry_villager ~ ~2.25 ~ 0.2 0.2 0.2 0 1 force