scoreboard players operation $damage catt.var = @s catt.stat.range

scoreboard players operation $draw_time catt.var = @s ca.draw_bow_time
scoreboard players operation $draw_time catt.var *= $4 catt.var
scoreboard players add $draw_time catt.var 25
execute if score $draw_time catt.var matches 101.. run scoreboard players set $draw_time catt.var 100

execute as @e[type=arrow,sort=nearest,limit=1,distance=..5] at @s run function catt:shoot/modify/arrow_no_crit