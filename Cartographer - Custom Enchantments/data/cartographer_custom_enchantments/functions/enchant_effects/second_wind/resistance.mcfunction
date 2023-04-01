#calculating reduction
scoreboard players operation ca.red= ca.damage_queue = @s ca.damage_queue
scoreboard players operation ca.res= ca.damage_queue = @s ca.res.amp
scoreboard players add ca.res= ca.damage_queue 1
scoreboard players operation ca.res= ca.damage_queue *= $20 ca.CONSTANT
scoreboard players operation ca.red= ca.damage_queue *= ca.res= ca.damage_queue
scoreboard players operation ca.red= ca.damage_queue /= $100 ca.CONSTANT

scoreboard players operation @s ca.damage_queue -= ca.red= ca.damage_queue
execute if score @s ca.damage_queue matches ..-1 run scoreboard players set @s ca.damage_queue 0

#say applying resistance