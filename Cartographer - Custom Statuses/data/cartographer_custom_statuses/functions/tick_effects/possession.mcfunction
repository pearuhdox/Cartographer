execute if score @s ca.possess_time matches 61.. run scoreboard players remove @s ca.eft_possess 1

#execute if score @s ca.eft_possess matches 1 run summon arrow ~ ~2.3 ~ {Tags:["enrager"],Motion:[0.0,-1.0,0.0],damage:0,life:1200}
#execute if score @s ca.eft_possess matches 1 as @e[type=arrow,tag=enrager,limit=1,sort=nearest] run data modify entity @s Owner set from entity @e[limit=1,type=#bb:hostile,sort=nearest,distance=1..10] UUID

execute if score @s ca.eft_possess matches 1.. anchored eyes positioned ^ ^ ^ run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0.1 1 normal