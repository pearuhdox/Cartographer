#calculating reduction
scoreboard players operation red= damage_queue = damage= damage_queue
scoreboard players operation res= damage_queue = @s ca.res.amp
scoreboard players add res= damage_queue 1
scoreboard players operation res= damage_queue *= $20 ca.CONSTANT
scoreboard players operation red= damage_queue *= res= damage_queue
scoreboard players operation red= damage_queue /= $100 ca.CONSTANT

#Round up if we block 0.5 to 1 damage (to 1)
execute if score red= damage_queue matches 51..99 run scoreboard players set red= damage_queue 100
scoreboard players operation red= damage_queue /= $100 ca.CONSTANT

scoreboard players operation damage= damage_queue -= red= damage_queue
execute if score damage= damage_queue matches ..-1 run scoreboard players set damage= damage_queue 0