data modify entity @s ignited set value 1b

scoreboard players set @s co_y 3
scoreboard players set @s co_send 5

tp @s ~ ~ ~ facing entity @e[type=#bb:hostile,distance=0.75..16,sort=nearest,limit=1] feet

execute at @s run function motion:motion/push