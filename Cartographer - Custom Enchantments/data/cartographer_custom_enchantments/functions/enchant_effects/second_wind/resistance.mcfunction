#calculating reduction
scoreboard players operation ca.red= cdl.damage_queue = @s cdl.damage_queue
scoreboard players operation ca.res= cdl.damage_queue = @s ca.res.amp
scoreboard players add ca.res= cdl.damage_queue 1
scoreboard players operation ca.res= cdl.damage_queue *= $20 ca.CONSTANT
scoreboard players operation ca.red= cdl.damage_queue *= ca.res= cdl.damage_queue
scoreboard players operation ca.red= cdl.damage_queue /= $100 ca.CONSTANT

scoreboard players operation @s cdl.damage_queue -= ca.red= cdl.damage_queue
execute if score @s cdl.damage_queue matches ..-1 run scoreboard players set @s cdl.damage_queue 0

#say applying resistance