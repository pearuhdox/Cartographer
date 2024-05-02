tag @s add co_rotation_lock

tp @s ~ ~ ~ facing entity @e[tag=ca.vol_center,sort=nearest,limit=1,distance=..5.5] feet

scoreboard players set @s co_send 4
scoreboard players set @s co_y 3

function motion:motion/push