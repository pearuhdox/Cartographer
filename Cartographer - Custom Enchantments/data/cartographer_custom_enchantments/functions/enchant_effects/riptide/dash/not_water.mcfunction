scoreboard players operation $strength delta.api.launch *= $over ca.riptide
scoreboard players operation $strength delta.api.launch /= $100 ca.CONSTANT

scoreboard players operation $strength delta.api.launch /= $2 ca.CONSTANT

scoreboard players set @s ca.riptide_count_time 60

scoreboard players operation @s ca.riptide_count_time += $duration ca.riptide

scoreboard players add @s ca.riptide_count 1

#scoreboard players set $water_check ca.riptide 1
