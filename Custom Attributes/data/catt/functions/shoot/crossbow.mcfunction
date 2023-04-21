scoreboard players operation $damage catt.var = @s catt.stat.range

scoreboard players set $draw_time catt.var 100

execute as @e[type=arrow,sort=nearest,limit=3,distance=..5] at @s run function catt:shoot/modify/arrow_no_crit