summon item ~ ~0.25 ~ {NoGravity:1b,Glowing:1b,Age:-32768,Health:1000,PickupDelay:2,Tags:["ca.drop_convert_bundle","new"],Item:{id:"minecraft:bundle",Count:1b}}

data modify storage cartographer_charon:ret_bundle bundle set value {}
data modify storage cartographer_charon:ret_bundle bundle set from entity @s item.tag.DeathBundle

execute as @e[type=item,sort=nearest,limit=1,tag=ca.drop_convert_bundle,tag=new,distance=..2] at @s run function cartographer_charon:death_drop/ground_drop_branch

function cartographer_charon:death_drop/destroy