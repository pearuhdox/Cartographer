#NYI

#execute at @s run summon snowball ~ ~3 ~ {Tags:["cart_credit_grant"],Owner:[I;0,0,0,0],Motion:[0.0,-10.0,0.0],Item:{id:"minecraft:polished_blackstone_pressure_plate",Count:1b}}

#execute at @s run execute positioned ~ ~3 ~ run data modify entity @e[type=snowball,tag=cart_credit_grant,limit=1,sort=nearest,distance=..2] Owner set from entity @e[type=zombie,distance=1..,limit=1] UUID