scoreboard players remove @s ca.riptide_count_time 1

execute if score @s ca.riptide_count_time matches 0 run scoreboard players remove @s ca.riptide_count 1

execute if score @s ca.riptide_count_time matches 0 if score @s ca.riptide_count matches 1.. run scoreboard players set @s ca.riptide_count_time 60