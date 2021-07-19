#calculating reduction
scoreboard players operation ca.red= cdl.Damage_Queue = @s cdl.Damage_Queue
scoreboard players operation ca.res= cdl.Damage_Queue = @s ca.res.amp
scoreboard players add ca.res= cdl.Damage_Queue 1
scoreboard players operation ca.res= cdl.Damage_Queue *= $20 ca.CONSTANT
scoreboard players operation ca.red= cdl.Damage_Queue *= ca.res= cdl.Damage_Queue
scoreboard players operation ca.red= cdl.Damage_Queue /= $100 ca.CONSTANT

scoreboard players operation @s cdl.Damage_Queue -= ca.red= cdl.Damage_Queue
execute if score @s cdl.Damage_Queue matches ..-1 run scoreboard players set @s cdl.Damage_Queue 0

#say applying resistance